<?php

// Include database connection
require_once '../config.php';

// Process form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // Retrieve form data
    $reason = $_POST['reason'];
    $dates = $_POST['dates'];
    $records = $dates;
    $student_id = $_POST['student_id']; 
    $status = 'Pending'; // Define status as a variable

    // Check if reason is empty
    if (empty(trim($reason))) {
        $msg = 'Please enter a Reason.';
        echo json_encode(['msg' => $msg]);
        exit();
    }

    // Handle file uploads (multiple files)
    $uploadDirectory = '../../uploads/adjustments/'; // Specify the directory to save files
    $filePaths = []; // Array to store file paths

    // Check if files were uploaded
    if (isset($_FILES['files']) && !empty($_FILES['files']['name'][0])) {
        $files = $_FILES['files'];

        foreach ($files['name'] as $key => $filename) {
            $tmp_name = $files['tmp_name'][$key];
            $filePath = $uploadDirectory . basename($filename);

            // Move uploaded files to the desired directory
            if (move_uploaded_file($tmp_name, $filePath)) {
                $filePaths[] = $filePath; // Store the file path in the array
            }
        }
    }

    // Prepare and execute the SQL statement
    $filesString = implode(",", $filePaths); // Create the file paths string first
    $sql = 'INSERT INTO tbl_request (student_id, records, status, reason, files) VALUES (:student_id, :records, :status, :reason, :files)';
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':student_id', $student_id, PDO::PARAM_STR); // Bind student ID
    $stmt->bindParam(':records', $records, PDO::PARAM_STR); // Bind dates (records)
    $stmt->bindParam(':status', $status, PDO::PARAM_STR); // Bind status (as a variable)
    $stmt->bindParam(':reason', $reason, PDO::PARAM_STR); // Bind reason
    $stmt->bindParam(':files', $filesString, PDO::PARAM_STR); // Bind file paths as a comma-separated string

    if ($stmt->execute()) {
        // Return success message
        $success = 'Adjustments successfully sent.';
        echo json_encode(['success' => $success]);
        exit();
    } else {
        // Return error message if something goes wrong
        $msg = 'Oops! Something went wrong. Please try again later.';
        echo json_encode(['msg' => $msg]);
        exit();
    }
}
