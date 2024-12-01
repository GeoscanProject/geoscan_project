<?php
require_once '../config.php';
require_once '../action-ids.php'; 

// Get the raw POST data
$data = json_decode(file_get_contents("php://input"), true);

// Validate data
if (isset($data['student_id'], $data['time_in'], $data['time_out'], $data['request_id'])) {
    $studentId = $data['student_id'];
    $timeIn = $data['time_in'];
    $timeOut = $data['time_out'];
    $requestId = $data['request_id']; // Request ID to update the status

    // Convert time_in and time_out to date format (assuming you only care about the date part)
    $dateIn = (new DateTime($timeIn))->format('Y-m-d');
    $dateOut = (new DateTime($timeOut))->format('Y-m-d');

    // Begin transaction to ensure atomicity
    try {
        // Start the transaction
        $pdo->beginTransaction();

        // Check if a time_in or time_out already exists for the student on the same date
        $stmt = $pdo->prepare("SELECT COUNT(*) FROM tbl_timelogs WHERE student_id = ? AND DATE(timestamp) = ?");
        $stmt->execute([$studentId, $dateIn]);
        $timeInExists = $stmt->fetchColumn() > 0;

        $stmt = $pdo->prepare("SELECT COUNT(*) FROM tbl_timelogs WHERE student_id = ? AND DATE(timestamp) = ?");
        $stmt->execute([$studentId, $dateOut]);
        $timeOutExists = $stmt->fetchColumn() > 0;

        // If time_in or time_out already exists, prevent insertion
        if ($timeInExists || $timeOutExists) {
            // Rollback the transaction
            $pdo->rollBack();

            // Return error message
            echo json_encode(['success' => false, 'message' => 'Cannot enter time logs for this date. Logs already exist.']);
            return; // Exit the script
        }

        // Insert time_in entry
        $stmt = $pdo->prepare("INSERT INTO tbl_timelogs (student_id, type, timestamp) VALUES (?, 'time_in', ?)");
        $stmt->execute([$studentId, $timeIn]);

        // Insert time_out entry
        $stmt = $pdo->prepare("INSERT INTO tbl_timelogs (student_id, type, timestamp) VALUES (?, 'time_out', ?)");
        $stmt->execute([$studentId, $timeOut]);

        // Update the request status from Pending to Approved using both request_id and student_id
        $updateStmt = $pdo->prepare("UPDATE tbl_request SET status = 'Approved' WHERE id = ? AND student_id = ?");
        $updateStmt->execute([$requestId, $studentId]);

        // Commit the transaction
        $pdo->commit();

        // Return success response
        echo json_encode(['success' => true]);
    } catch (PDOException $e) {
        // Rollback the transaction if an error occurs
        $pdo->rollBack();

        // Return error response
        echo json_encode(['success' => false, 'message' => $e->getMessage()]);
    }
} else {
    // Missing data
    echo json_encode(['success' => false, 'message' => 'Missing data']);
}
?>
