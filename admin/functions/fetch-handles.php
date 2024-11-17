<?php
// Include the database connection file
require_once '../config.php';


// Check if the admin_id is set in the session and co_id exists in the GET parameters
if (isset($_SESSION['admin_id']) && isset($_GET['co_id'])) {
    $coordinator_id = $_GET['co_id'];

    // Prepare the SQL statement
    $sql = 'SELECT A.*, C.program_name FROM tbl_users AS A 
            LEFT JOIN tbl_coordinators AS B ON A.coordinator_id = B.coordinator_id
            LEFT JOIN tbl_programs AS C ON A.program_id = C.program_id
            WHERE A.coordinator_id = :coordinator_id';

    try {
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':coordinator_id', $coordinator_id, PDO::PARAM_STR);
        $stmt->execute();
        // Fetch all rows
        $interns = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        // Handle database errors
        echo "Error: " . $e->getMessage();
    }
} else {
    echo "Required parameters are missing.";
}
?>