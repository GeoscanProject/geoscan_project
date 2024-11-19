<?php

require_once '../config.php';
require 'phpspreadsheet/vendor/autoload.php';

// Ensure session is started
session_start();

// Include an encryption library or function. For simplicity, using PHP's built-in functions
function encrypt($data, $key) {
    return openssl_encrypt($data, 'aes-256-cbc', $key, 0, $key);
}

// Secret key for encryption - should be securely stored and not hard-coded in a real application
$encryptionKey = 'your_secret_key_32chars_long'; // Replace with your actual secret key

// Check if import data exists in session
if (!isset($_SESSION['import_data'])) {
    echo "No data to save.";
    exit();
}

$importData = $_SESSION['import_data'];
$programId = $_POST['program_id'] ?? ''; // Use null coalescing to prevent undefined index error
$coordinatorId = $_POST['coordinator_id'] ?? '';
$status = $_POST['status'] ?? '';
$data = $importData['data'];

// Gather all student IDs from the data
$studentIds = array_column($data, 0);

// Prepare a statement to check if any student_id already exists
$placeholders = implode(',', array_fill(0, count($studentIds), '?'));
$checkStmt = $pdo->prepare("SELECT student_id FROM tbl_users WHERE student_id IN ($placeholders)");

try {
    // Debug: output the array of student IDs being checked
    echo "Checking for student IDs: " . implode(", ", $studentIds) . "<br>";

    $checkStmt->execute($studentIds);
    $existingStudentIds = $checkStmt->fetchAll(PDO::FETCH_COLUMN);

    // Debug: output the existing student IDs
    echo "Existing Student IDs in DB: " . implode(", ", $existingStudentIds) . "<br>";  // Debug output

} catch (Exception $e) {
    // Log error
    error_log('Error executing checkStmt: ' . $e->getMessage());
    echo "Error occurred while checking for existing student IDs.";
    exit();
}

if (!empty($existingStudentIds)) {
    // Duplicates found
    $duplicates = implode(',', $existingStudentIds);
    header('Location: review_import.php?status=error&duplicates=' . urlencode($duplicates));
    exit();
}

// No duplicates found, proceed with insertion
$stmt = $pdo->prepare("INSERT INTO tbl_users (student_id, firstname, lastname, email, phone, address, program_id, coordinator_id, pin, status) VALUES (:student_id, :firstname, :lastname, :email, :phone, :address, :program_id, :coordinator_id, :pin, :status)");

foreach ($data as $row) {
    // Trim student_id to remove any unwanted spaces
    $studentId = trim($row[0]);

    // Debugging print
    echo "Processing Student ID: '$studentId' <br>";

    // Check if student_id is valid
    if (empty($studentId) || !is_numeric($studentId)) {
        error_log('Invalid student_id at row: ' . print_r($row, true));  // Log invalid student_id
        echo "Error: Missing or invalid student ID.";
        continue;  // Skip this row and move to the next
    }

    // Check if student_id already exists in the database
    if (in_array($studentId, $existingStudentIds)) {
        error_log('Duplicate student_id detected: ' . $studentId);  // Log duplicate student_id
        echo "Error: Duplicate student ID detected. Skipping this entry.<br>";
        continue;  // Skip this row and move to the next
    }

    // Extract last 4 digits of the student_id for PIN
    $pin = substr($studentId, -4); // Get the last 4 digits

    // Encrypt the PIN (using password_hash for strong encryption)
    $encryptedPin = password_hash($pin, PASSWORD_DEFAULT);

    try {
        $stmt->execute([
            ':student_id' => $studentId,
            ':firstname' => $row[1],
            ':lastname' => $row[2],
            ':email' => $row[3],
            ':phone' => $row[4],
            ':address' => $row[5],
            ':program_id' => $programId,
            ':coordinator_id' => $coordinatorId,
            ':pin' => $encryptedPin,
            ':status' => $status
        ]);
    } catch (Exception $e) {
        // Log error and show message with detailed exception
        error_log('Error executing insert statement for student_id ' . $studentId . ': ' . $e->getMessage());
        echo "Error occurred while saving data for student ID $studentId. Error: " . $e->getMessage();
        continue;  // Skip this row and move to the next
    }
}

// Unset session data
unset($_SESSION['import_data']);

// Redirect with success parameter
header('Location: add_intern.php?status=success');
exit();
?>
