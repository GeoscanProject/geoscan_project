<?php

require 'phpspreadsheet/vendor/autoload.php'; // Path to PhpSpreadsheet autoload
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Cell\DataType;

// Include your database connection
require_once '../config.php';

// Your TomTom API key
$apiKey = 'ZWUFEvqrALs4WtVDTw4yjUGGjkFPTGGE';

// Function to convert coordinates to address using TomTom API
function convertCoordinates($latitude, $longitude) {
    global $apiKey; // Use global API key
    $url = "https://api.tomtom.com/search/2/reverseGeocode/{$latitude},{$longitude}.json?key={$apiKey}";

    $response = @file_get_contents($url);
    if ($response === FALSE) {
        return "Error retrieving address";
    }
    $data = json_decode($response, true);
    return $data['addresses'][0]['address']['freeformAddress'] ?? "Address not found";
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $intern_id = $_POST['student_id'];
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];
    $intern_name = $_POST['intern_name'];
    $intern_program = $_POST['intern_program'];

    if (empty($intern_id) || empty($start_date) || empty($end_date)) {
        die('Invalid input');
    }

    try {
        $stmt = $pdo->prepare("
            SELECT type, timestamp, latitude, longitude
            FROM tbl_timelogs
            WHERE student_id = :student_id
            AND timestamp BETWEEN :start_date AND :end_date
        ");
        $stmt->bindParam(':student_id', $intern_id);
        $stmt->bindParam(':start_date', $start_date);
        $stmt->bindParam(':end_date', $end_date);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if (!$data) {
            die('No records found');
        }

        // Create Spreadsheet
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // Set Document Properties
        $spreadsheet->getProperties()
            ->setCreator("Your Name")
            ->setTitle("Intern Report")
            ->setSubject("Intern Report")
            ->setDescription("Generated intern report with details and logs.");

        // Header Section
        $sheet->setCellValue('A1', 'Intern Report')->mergeCells('A1:D1');
        $sheet->getStyle('A1')->getFont()->setBold(true)->setSize(16);
        $sheet->setCellValue('A3', 'Intern Name:')->setCellValue('B3', $intern_name);
        $sheet->setCellValue('A4', 'Program:')->setCellValue('B4', $intern_program);
        $sheet->setCellValue('A5', 'Report Period:')->setCellValue('B5', "$start_date to $end_date");

        // Table Headers
        $sheet->setCellValue('A7', 'Type')
              ->setCellValue('B7', 'Date')
              ->setCellValue('C7', 'Time')
              ->setCellValue('D7', 'Location');
        $sheet->getStyle('A7:D7')->getFont()->setBold(true);

        // Add Data
        $rowNumber = 8; // Start from row 8
        foreach ($data as $record) {
            $dateTime = new DateTime($record['timestamp']);
            $formattedDate = $dateTime->format('F j, Y');
            $formattedTime = $dateTime->format('g:iA');
            $address = convertCoordinates($record['latitude'], $record['longitude']);

            $typeLabel = $record['type'] === 'time_in' ? 'Time In' : 'Time Out';

            $sheet->setCellValue("A$rowNumber", $typeLabel);
            $sheet->setCellValue("B$rowNumber", $formattedDate);
            $sheet->setCellValue("C$rowNumber", $formattedTime);
            $sheet->setCellValue("D$rowNumber", $address);
            $rowNumber++;
        }

        // Set Column Widths
        foreach (range('A', 'D') as $col) {
            $sheet->getColumnDimension($col)->setAutoSize(true);
        }

        // Set Borders for Table
        $tableRange = "A7:D" . ($rowNumber - 1);
        $sheet->getStyle($tableRange)->getBorders()->getAllBorders()
              ->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);

        // Generate File
        $writer = new Xlsx($spreadsheet);
        $fileName = "Intern_Report_{$intern_name}.xlsx";

        // Send Download Headers
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header("Content-Disposition: attachment; filename=\"$fileName\"");
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
        exit;

    } catch (Exception $e) {
        error_log("Error: " . $e->getMessage());
        die('Error generating Excel report.');
    }
}
?>
