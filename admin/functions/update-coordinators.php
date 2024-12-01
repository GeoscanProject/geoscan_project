<?php
// Include database connection
require_once '../../config.php';
require_once 'action-ids.php';

// Process form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve form data
    $coordinatorId = isset($_POST['coordinator_id']) ? $_POST['coordinator_id'] : null;
    $availability = isset($_POST['availability']) ? $_POST['availability'] : null;
    $firstname = isset($_POST['firstname']) ? $_POST['firstname'] : null;
    $lastname = isset($_POST['lastname']) ? $_POST['lastname'] : null;
    $email = isset($_POST['email']) ? $_POST['email'] : null;
    $contact = isset($_POST['contact']) ? $_POST['contact'] : null;

    // Fetch name 
    $sql_fetch = "SELECT firstname, lastname FROM tbl_coordinators WHERE coordinator_id = :coordinator_id";
    $stmt_fetch = $pdo->prepare($sql_fetch);
    $stmt_fetch->bindParam(':coordinator_id', $coordinatorId, PDO::PARAM_STR);
    $stmt_fetch->execute();

    $coordinator = $stmt_fetch->fetch(PDO::FETCH_ASSOC);
    if (!$coordinator) {
        // If the coordinator doesn't exist, rollback and exit
        $pdo->rollBack();
        echo json_encode(['msg' => 'coordinator not found']);
        exit;
    }

    // Validate coordinator ID
    if (!$coordinatorId) {
        $msg = 'Coordinator ID is required.';
        echo json_encode(['msg' => $msg]);
        exit();
    }

    if (empty(trim($firstname))) {
        $msg = 'Please enter First Name.';
        // Return the error message
        echo json_encode(['msg' => $msg]);
        exit();
    }
    if (empty(trim($lastname))) {
        $msg = 'Please enter Last Name.';
        // Return the error message
        echo json_encode(['msg' => $msg]);
        exit();
    }
    if (empty(trim($contact))) {
        $msg = 'Please enter Contact Number.';
        // Return the error message
        echo json_encode(['msg' => $msg]);
        exit();
    }
    if (empty(trim($email))) {
        $msg = 'Please enter a Email.';
        // Return the error message
        echo json_encode(['msg' => $msg]);
        exit();
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $msg = 'Please enter a valid email address in the format name@example.com.';
        // Return the error message
        echo json_encode(['msg' => $msg]);
        exit();
    }
    
    // $firstname = $coordinator['firstname'];
    // $lastname = $coordinator['lastname'];

    // Prepare SQL statement to update coordinator
    $sql = 'UPDATE tbl_coordinators SET  status = :availability,  firstname = :firstname, lastname = :lastname, email = :email, contact = :contact WHERE coordinator_id = :coordinator_id';
    $stmt = $pdo->prepare($sql);

    // Bind parameters
    $stmt->bindParam(':availability', $availability, PDO::PARAM_STR);
    $stmt->bindParam(':coordinator_id', $coordinatorId, PDO::PARAM_INT);
    $stmt->bindParam(':firstname', $firstname, PDO::PARAM_STR);
    $stmt->bindParam(':lastname', $lastname, PDO::PARAM_STR);
    $stmt->bindParam(':email', $email, PDO::PARAM_STR);
    $stmt->bindParam(':contact', $contact, PDO::PARAM_STR);

    try {

        // Execute the prepared statement
        if ($stmt->execute()) {

            $sql_log = 'INSERT INTO tbl_actionlogs (user_id, action_id, action_desc) VALUES (:user_id, :action_id, :action_desc)';
            $stmt_log = $pdo->prepare($sql_log);
            $user_id = $_SESSION['admin_id'];

            $action_desc = "Information Update for coordinator " . $firstname . ' ' . $lastname;;

            $action_id = ACTION_SET_STATUS_COORDINATOR;
            $stmt_log->bindParam(':user_id', $user_id, PDO::PARAM_INT);
            $stmt_log->bindParam(':action_id', $action_id, PDO::PARAM_INT);
            $stmt_log->bindParam(':action_desc', $action_desc, PDO::PARAM_STR);
            $stmt_log->execute();

            $success = 'Coordinator successfully updated!';
            echo json_encode(['success' => $success]);
            exit();
        } else {
            $msg = 'Oops! Something went wrong. Please try again later.';
            echo json_encode(['msg' => $msg]);
            exit();
        }
    } catch (PDOException $e) {
        $msg = 'Error: ' . $e->getMessage();
        echo json_encode(['msg' => $msg]);
        exit();
    }
} else {
    $msg = 'Invalid request method.';
    echo json_encode(['msg' => $msg]);
    exit();
}
?>