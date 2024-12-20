<?php

// Include database connection
require_once '../../config.php';
require_once 'action-ids.php';

// Process form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    // Retrieve form data
    $company_name = $_POST['company_name'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $contact_no = $_POST['contact_no'];

    // Validate company name
    if (empty(trim($company_name))) {
        $msg = 'Please enter a Company Name.';
        // Return the error message
        echo json_encode(['msg' => $msg]);
        exit();
    } else {
        // Check if company name already exists
        $sql_check_company = 'SELECT company_name FROM tbl_companies WHERE company_name = :company_name';
        $stmt_check_company = $pdo->prepare($sql_check_company);
        $stmt_check_company->bindParam(':company_name', $company_name, PDO::PARAM_STR);
        $stmt_check_company->execute();
        if ($stmt_check_company->rowCount() > 0) {
            $msg = 'Company Name is already taken.';
            // Return the error message
            echo json_encode(['msg' => $msg]);
            exit();
        }
    }

    if (empty(trim($company_name))) {
        $msg = 'Please enter a company Name.';
        echo json_encode(['msg' => $msg]);
        exit();
    }
    if (empty(trim($email))) {
        $msg = 'Please enter a Company Email.';
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
    if (empty(trim($address))) {
        $msg = 'Please enter a Company Address.';
        // Return the error message
        echo json_encode(['msg' => $msg]);
        exit();
    }
    if (empty(trim($contact_no))) {
        $msg = 'Please enter a Company Contact Number.';
        // Return the error message
        echo json_encode(['msg' => $msg]);
        exit();
    }

    // Generate a unique company ID
    $company_id = mt_rand(10000, 99999);

    // Prepare and execute the first SQL statement
    $sql = 'INSERT INTO tbl_companies (company_id, company_name, email, address, contactno) VALUES (:company_id, :company_name, :email, :address, :contactno)';
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':company_id', $company_id, PDO::PARAM_STR);
    $stmt->bindParam(':company_name', $company_name, PDO::PARAM_STR);
    $stmt->bindParam(':email', $email, PDO::PARAM_STR);
    $stmt->bindParam(':address', $address, PDO::PARAM_STR);
    $stmt->bindParam(':contactno', $contact_no, PDO::PARAM_STR);

    if ($stmt->execute()) {
        $sql_log = 'INSERT INTO tbl_actionlogs (user_id, action_id, action_desc) VALUES (:user_id, :action_id, :action_desc)';
        $stmt_log = $pdo->prepare($sql_log);
        $user_id = $_SESSION['admin_id'];
        $action_desc = 'Company ' . $company_name . ' created';
        $action_id = ACTION_CREATE_COMPANY;
        $stmt_log->bindParam(':user_id', $user_id, PDO::PARAM_INT);
        $stmt_log->bindParam(':action_id', $action_id, PDO::PARAM_INT);
        $stmt_log->bindParam(':action_desc', $action_desc, PDO::PARAM_STR);
        $stmt_log->execute();

        $success = 'Company successfully created.';
        echo json_encode(['success' => $success]);
        exit();
    } else {
        // Return error message if something goes wrong
        $msg = 'Oops! Something went wrong. Please try again later.';
        echo json_encode(['msg' => $msg]);
        exit();
    }


}
?>