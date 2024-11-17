<?php

require '../coordinator/phpspreadsheet/vendor/autoload.php'; // Path to PhpSpreadsheet autoload

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Cell\DataType;

require_once '../config.php'; // Include your database connection

// Your TomTom API key
$apiKey = 'ZWUFEvqrALs4WtVDTw4yjUGGjkFPTGGE';

// Function to convert coordinates to address using TomTom API
function convertCoordinates($latitude, $longitude) {
    global $apiKey; // Use global API key

    // URL for TomTom Reverse Geocoding API
    $url = "https://api.tomtom.com/search/2/reverseGeocode/{$latitude},{$longitude}.json?key={$apiKey}";

    // Make the HTTP request
    $response = @file_get_contents($url);

    // Check if the response is valid
    if ($response === FALSE) {
        return "Error retrieving address";
    }

    // Decode the JSON response
    $data = json_decode($response, true);

    // Check if we have results
    if (isset($data['addresses'][0]['address']['freeformAddress'])) {
        return $data['addresses'][0]['address']['freeformAddress'];
    } else {
        return "Address not found";
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get the form input
    $intern_id = $_POST['student_id'];
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];
    $intern_name = $_POST['intern_name'];
    $intern_program = $_POST['intern_program'];

    // Ensure inputs are not empty
    if (empty($intern_id) || empty($start_date) || empty($end_date)) {
        die('Invalid input');
    }

    // Fetch data from the database
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
            die('No data found for the given criteria.');
        }

        // Create a new Spreadsheet object
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Intern Time Logs');

        // Set Document Properties
        $spreadsheet->getProperties()
            ->setCreator("Your Name")
            ->setTitle("Intern Time Logs Report")
            ->setSubject("Intern Report")
            ->setDescription("Generated intern time logs report with details and logs.");

        // Header Section
        $sheet->setCellValue('A1', 'Intern Time Logs Report')->mergeCells('A1:D1');
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

        // Populate the spreadsheet with data
        $row = 8; // Start from row 8
        foreach ($data as $record) {
            // Format timestamp
            $dateTime = new DateTime($record['timestamp']);
            $formattedDate = $dateTime->format('F j, Y');
            $formattedTime = $dateTime->format('g:iA');
            $typeLabel = $record['type'] === 'time_in' ? 'Time In' : 'Time Out';

            $address = convertCoordinates($record['latitude'], $record['longitude']);
            
            // Add data to the cells
            $sheet->setCellValueExplicit('A' . $row, $typeLabel, DataType::TYPE_STRING);
            $sheet->setCellValue('B' . $row, $formattedDate);
            $sheet->setCellValue('C' . $row, $formattedTime);
            $sheet->setCellValueExplicit('D' . $row, $address, DataType::TYPE_STRING);
            
            $row++;
        }

        // Set Column Widths
        foreach (range('A', 'D') as $col) {
            $sheet->getColumnDimension($col)->setAutoSize(true);
        }

        // Set Borders for Table
        $tableRange = "A7:D" . ($row - 1);
        $sheet->getStyle($tableRange)->getBorders()->getAllBorders()
              ->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);

        // Generate File
        $writer = new Xlsx($spreadsheet);
        $filename = 'Intern_Time_Logs_Report_' . date('YmdHis') . '.xlsx';

        // Send the file to the browser
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        // Write the file to the output
        $writer->save('php://output');
        exit();
    } catch (Exception $e) {
        // Handle exceptions
        error_log('Error generating the Excel file: ' . $e->getMessage());
        die('Error generating the Excel file.');
    }
} else {
    die('Invalid request method.');
}
?>
