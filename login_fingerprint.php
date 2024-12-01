<?php
require 'config.php';

$data = json_decode(file_get_contents('php://input'), true);
$credential = $data['credential'] ?? null;
$longitude = $data['longitude'] ?? null;
$latitude = $data['latitude'] ?? null;

if (!$credential || !$longitude || !$latitude) {
    header('Content-Type: application/json');
    echo json_encode(['success' => false, 'message' => 'Invalid input data.']);
    exit;
}

$credential_id = $credential['id'] ?? null;

if (!$credential_id) {
    header('Content-Type: application/json');
    echo json_encode(['success' => false, 'message' => 'Incomplete assertion data.']);
    exit;
}

try {
    $sql = "SELECT * FROM tbl_users WHERE credential_id = :credential_id";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([':credential_id' => $credential_id]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        $student_id = $user['student_id'];

        // Check for existing "Time In" log for today
        $check_time_in_sql = "SELECT * FROM tbl_timelogs 
                              WHERE student_id = :student_id AND DATE(timestamp) = CURDATE() AND type = 'time_in'";
        $check_time_in_stmt = $pdo->prepare($check_time_in_sql);
        $check_time_in_stmt->execute([':student_id' => $student_id]);
        $time_in_log = $check_time_in_stmt->fetch(PDO::FETCH_ASSOC);

        // Check for existing "Time Out" log for today
        $check_time_out_sql = "SELECT * FROM tbl_timelogs 
                               WHERE student_id = :student_id AND DATE(timestamp) = CURDATE() AND type = 'time_out'";
        $check_time_out_stmt = $pdo->prepare($check_time_out_sql);
        $check_time_out_stmt->execute([':student_id' => $student_id]);
        $time_out_log = $check_time_out_stmt->fetch(PDO::FETCH_ASSOC);

        if ($time_in_log && $time_out_log) {
            // Both logs exist for today
            header('Content-Type: application/json');
            echo json_encode([
                'success' => false,
                'message' => 'Both Time In and Time Out have already been recorded for today.'
            ]);
            exit;
        }

        // Determine the next action
        $nextType = $time_in_log ? 'time_out' : 'time_in';

        // Insert the log
        $log_sql = "INSERT INTO tbl_timelogs (student_id, type, timestamp, longitude, latitude) 
                    VALUES (:student_id, :type, NOW(), :longitude, :latitude)";
        $log_stmt = $pdo->prepare($log_sql);

        try {
            $log_stmt->execute([
                ':student_id' => $student_id,
                ':type' => $nextType,
                ':longitude' => $longitude,
                ':latitude' => $latitude
            ]);

            if ($log_stmt->rowCount() > 0) {
                // Format the message explicitly
                $actionMessage = ($nextType === 'time_in') ? 'Time In Recorded Successfully' : 'Time Out Recorded Successfully';
            
                header('Content-Type: application/json');
                echo json_encode([
                    'success' => true,
                    'message' => $actionMessage,
                    'nextType' => $nextType
                ]);
            } else {
                header('Content-Type: application/json');
                echo json_encode([
                    'success' => false,
                    'message' => 'Failed to record log.'
                ]);
            }
            
        } catch (Exception $e) {
            header('Content-Type: application/json');
            echo json_encode([
                'success' => false,
                'message' => 'Error inserting log: ' . $e->getMessage()
            ]);
        }
    } else {
        header('Content-Type: application/json');
        echo json_encode(['success' => false, 'message' => 'User not found.']);
    }
} catch (Exception $e) {
    header('Content-Type: application/json');
    echo json_encode([
        'success' => false,
        'message' => 'Error retrieving user: ' . $e->getMessage()
    ]);
}
?>
