<?php
// Include database connection
require_once '../../config.php';

// Process AJAX request
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve coordinator_id from POST data
    $coordinatorId = isset($_POST['coordinator_id']) ? $_POST['coordinator_id'] : null;

    if (!$coordinatorId) {
        // Return error response if coordinator_id is not provided
        echo json_encode(['error' => 'Coordinator ID is missing']);
        exit;
    }

    // Prepare SQL statement to fetch coordinator details
    $sql = "SELECT * FROM tbl_coordinators WHERE coordinator_id = :coordinator_id";
    $stmt = $pdo->prepare($sql);

    // Bind parameters
    $stmt->bindParam(':coordinator_id', $coordinatorId, PDO::PARAM_INT);

    try {
        // Execute the SQL statement
        if ($stmt->execute()) {
            // Fetch coordinator details
            $coordinator = $stmt->fetch(PDO::FETCH_ASSOC);
            
            // Return coordinator details as JSON response
            echo json_encode($coordinator);
            exit;
        } else {
            // Return error response if execution fails
            echo json_encode(['error' => 'Failed to fetch coordinator details']);
            exit;
        }
    } catch (PDOException $e) {
        // Return error response if an exception occurs
        echo json_encode(['error' => $e->getMessage()]);
        exit;
    }
} else {
    // Return error response if request method is not POST
    echo json_encode(['error' => 'Invalid request method']);
    exit;
}
?>
