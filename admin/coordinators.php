<?php
require '../config.php';
require 'functions/session.php';
include_once 'functions/fetch-coordinators.php';
include 'includes/top_include.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="assets/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Toastify -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastify-js/1.5.0/toastify.js"
        integrity="sha512-0M1OKuNQKhBhA/vqxH7OaS1LZlDwSrSbL3QzcmrlNbkWV0U4ewn8SWfVuRS5nLGV9IXsuNnkdqzyXOYXc0Eo9w=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastify-js/1.5.0/toastify.css"
        integrity="sha512-1xBbDQd2ydreJtocowqI+QS+xYVYdv96rB4xu/Peb5uD3SEtCJkGjnMCV3m8oH7XW35KsjqcTR6AytS5H8h8NA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastify-js/1.5.0/toastify.min.css"
        integrity="sha512-RJJdSTKOf+e0vTbZvyS5JTWtIBNC44IDUbkH8IF3MkJUP+YfLcK3K2nlxLS8V98m407CUgBdQrbcyRihb9e5gQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastify-js/1.5.0/toastify.min.js"
        integrity="sha512-DxteqSgafF6N5gacKCDX24qeqrYjuzdxQ5pNdmDLd1eJ6gibN7tlo7UD2+9qv1+8+Tu/uiYMdCuvHXlwTwZ+Ew=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://www.dukelearntoprogram.com/course1/common/js/image/SimpleImage.js"></script>

</head>

<body class="sb-nav-fixed">
    <?php require_once 'includes/top_nav.php'; ?>
    <div id="layoutSidenav">
        <?php require_once 'includes/left_nav.php'; ?>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <br>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.php" class="link-ref">Dashboard</a></li>
                        <li class="breadcrumb-item active">Coordinators</li>
                    </ol>

                    <div class="card mb-4">
                        <div class="card-header">
                            <div class="form-group">
                                <i class="fa-solid fa-cube"></i>&nbsp;
                                <b>List of Coordinators</b>
                                &nbsp; | &nbsp;
                                <button type="button" class="btn-get-main" data-toggle="modal"
                                    data-target="#AddNewModal">
                                    <i class="fa-solid fa-plus"></i> Add New
                                </button>

                                &nbsp; | &nbsp;
                                <button type="button" class="btn-get-main" id="exportButton">
                                    <i class="fa-solid fa-paperclip"></i> Export to Excel
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple" class="table">
                                <thead>
                                    <tr>
                                        <th>Coordinator ID</th>
                                        <th>Department</th>
                                        <th>Username</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Contact No.</th>
                                        <th>Status</th>
                                        <th>Member Since</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($coordinators as $coordinator): ?>
                                        <tr>
                                            <td>
                                                <?php echo $coordinator['coordinator_id']; ?>
                                            </td>
                                            <td>
                                                <?php echo $coordinator['department_name']; ?>
                                            </td>
                                            <td>
                                                <?php echo $coordinator['username']; ?>
                                            </td>
                                            <td>
                                                <?php echo $coordinator['firstname']; ?>
                                            </td>
                                            <td>
                                                <?php echo $coordinator['lastname']; ?>
                                            </td>
                                            <td>
                                                <?php echo $coordinator['email']; ?>
                                            </td>
                                            <td>
                                                <?php echo $coordinator['contact']; ?>
                                            </td>
                                            <td>
                                                <center>
                                                    <?php
                                                    if ($coordinator['status'] == "Inactive"): ?>
                                                        <span class="badge bg-danger">Inactive</span>
                                                    <?php else: ?>
                                                        <span class="badge bg-success">Active</span>
                                                    <?php endif; ?>
                                                </center>
                                            </td>
                                            <td>
                                                <?php echo $coordinator['createdAt']; ?>
                                            </td>
                                            <td>
                                                <a href="handles.php?co_id=<?php echo $coordinator['coordinator_id'] ?>"
                                                    class="btn-get-main" style="text-decoration:none; color:white;"><i
                                                        class="fa-solid fa-users"></i> Handles </a>
                                                <button class="btn-get-del edit-btn" data-toggle="modal"
                                                    data-target="#editAvailability"
                                                    data-coordinator-id="<?php echo $coordinator['coordinator_id'] ?>"><i
                                                        class="fa-solid fa-pen-to-square"></i>
                                                    Update Status</button>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            <?php require_once 'includes/footer.php'; ?>
        </div>
    </div>

    <!-- Add New Modal -->
    <div class="modal fade" id="AddNewModal" tabindex="-1" role="dialog" aria-labelledby="AddNewModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header d-flex justify-content-between">
                    <h5 class="modal-title" id="AddNewModalLabel">Add New Coordinator</h5>
                    <i class="fa-solid fa-xmark" style="font-size:20px; cursor:pointer;" data-dismiss="modal"
                        aria-label="Close"></i>
                </div>

                <div class="modal-body">
                    <div id="message"></div>

                    <!-- Add form -->
                    <div class="form-group">
                        <label for="department_id">Department:</label>
                        <select class="form-control" id="department_id" name="department_id">
                            <option selected disabled>Select a Department</option>
                            <?php
                            $query = "SELECT department_id, department_name FROM tbl_departments";
                            $stmt = $pdo->prepare($query);
                            $stmt->execute();
                            $departments = $stmt->fetchAll();

                            foreach ($departments as $department) {
                                echo '<option value="' . $department['department_id'] . '">' . $department['department_name'] . '</option>';
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" class="form-control" id="username" name="username">
                    </div>
                    <div class="form-group">
                        <label for="firstname">Firstname:</label>
                        <input type="text" class="form-control" id="firstname" name="firstname">
                    </div>
                    <div class="form-group">
                        <label for="lastname">Lastname:</label>
                        <input type="text" class="form-control" id="lastname" name="lastname">
                    </div>
                    <div class="form-group">
                        <label for="contact">Contact Number:</label>
                        <input type="number" class="form-control" id="contact" name="contact" required pattern="\d+" title="Only numeric values are allowed.">
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="text" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password">Temporary Password:</label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                    <br>
                    <div class="form-group">
                        <input type="submit" class="btn-get-main  py-2" value="Add" style="width:100% !important;"
                            id="AddCoordinator">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="DeleteModal" tabindex="-1" role="dialog" aria-labelledby="DeleteModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="DeleteModalLabel">Delete Confirmation</h5>
                    <i class="fa-solid fa-xmark" style="font-size:20px; cursor:pointer;" data-dismiss="modal"
                        aria-label="Close"></i>
                </div>
                <div class="modal-body">
                    <div id="message"></div>
                    Are you sure you want to delete this Coordinator?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-get-main" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn-get-del" id="confirmDeleteBtn">Delete</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Edit Modal -->
    <div class="modal fade" id="editAvailability" tabindex="-1" role="dialog"
        aria-labelledby="editAvailabilityModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editAvailabilityModalLabel">Edit Information</h5>
                    <i class="fa-solid fa-xmark" style="font-size:20px; cursor:pointer;" data-dismiss="modal"
                        aria-label="Close"></i>
                </div>
                <div class="modal-body">
                    <div id="editMessage"></div>

                    <!-- Edit form -->
                    <div id="editPackageForm">
                        <div class="form-group">
                            <label for="edit_first_name">First Name:</label>
                            <input type="text" class="form-control" id="edit_first_name" name="edit_first_name">
                        </div>
                        <div class="form-group">
                            <label for="edit_last_name">Last Name:</label>
                            <input type="text" class="form-control" id="edit_last_name" name="edit_last_name">
                        </div>
                        <div class="form-group">
                            <label for="edit_email">Email:</label>
                            <input type="email" class="form-control" id="edit_email" name="edit_email">
                        </div>
                        <div class="form-group">
                            <label for="edit_contact">Contact Number:</label>
                            <input type="number" class="form-control" id="edit_contact" name="edit_contact" required pattern="\d+" title="Only numeric values are allowed.">
                        </div>
                        <!-- Dropdown for availability -->
                        <div class="form-group">
                            <label for="edit_availability">Availability:</label>
                            <select class="form-control" id="edit_availability" name="edit_availability">

                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-get-del" data-dismiss="modal">Close</button>
                    <button type="button" class="btn-get-main" id="saveChangesBtn">Save changes</button>
                </div>
            </div>
        </div>
    </div>






    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="assets/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>

    <!-- Modal CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Include jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


    <script src="assets/js/datatables-simple-demo.js"></script>
    <script src="functions/js/add-coordinators.js"></script>
    <script src="functions/js/delete-coordinators.js"></script>
    <script src="functions/js/edit-coordinator.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.0/xlsx.full.min.js"></script>

    <script>
        document.getElementById('exportButton').addEventListener('click', function () {
            // Get table data
            var table = document.getElementById('datatablesSimple');
            var sheet = XLSX.utils.table_to_sheet(table, {
                raw: true,
                skipHidden: true
            });

            // Remove the "Action" column (which is the last column in this case)
            const range = XLSX.utils.decode_range(sheet['!ref']);

            // Iterate over each row and remove the last column
            for (let R = range.s.r; R <= range.e.r; ++R) {
                const cellAddress = XLSX.utils.encode_cell({ r: R, c: range.e.c }); // Last column
                delete sheet[cellAddress];
            }

            // Adjust the range to exclude the last column
            range.e.c--;
            sheet['!ref'] = XLSX.utils.encode_range(range);

            // Convert sheet to Excel file
            var workbook = XLSX.utils.book_new();
            XLSX.utils.book_append_sheet(workbook, sheet, 'List of Coordinators');

            // Save the Excel file
            var today = new Date().toISOString().slice(0, 10); // Get today's date
            var filename = 'coordinators_report' + today + '.xlsx';
            XLSX.writeFile(workbook, filename);
        });
    </script>
</body>

</html>