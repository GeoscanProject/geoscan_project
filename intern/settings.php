<?php
include "nav.php";
include_once 'functions/fetch-records.php';

$student_id = $_SESSION['student_id'];

// Fetch user data to check if the fingerprint is already registered
$sql = "SELECT credential_id, attestation_object, client_data_json FROM tbl_users WHERE student_id = :student_id";
$stmt = $pdo->prepare($sql);
$stmt->execute([':student_id' => $student_id]);
$user = $stmt->fetch(PDO::FETCH_ASSOC);

// Check if fingerprint data is already registered
$fingerprint_registered = $user && ($user['credential_id'] || $user['attestation_object'] || $user['client_data_json']);

// Check if there is an existing pending request
$check_request_sql = "SELECT id FROM tbl_request WHERE student_id = :student_id AND status = 'Pending'";
$request_stmt = $pdo->prepare($check_request_sql);
$request_stmt->execute([':student_id' => $student_id]);
$pending_request = $request_stmt->fetch(PDO::FETCH_ASSOC);
?>

<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link href="../assets/css/table.css" rel="stylesheet">
<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link collapsed" href="index.php">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Profile Page Nav -->

        <li class="nav-heading">Pages</li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="my_attendance.php">
                <i class="ri-fingerprint-line"></i>
                <span>My Attendance</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="requirement_checklist.php">
                <i class="bi bi-file-earmark-check-fill"></i>
                <span>Requirements Checklist</span>
            </a>
        </li><!-- End Login Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="progress_report.php">
                <i class="ri-line-chart-fill"></i>
                <span>Progress Report</span>
            </a>
        </li><!-- End Blank Page Nav -->


        <li class="nav-item">
            <a class="nav-link " href="settings.php">
                <i class='bx bxs-cog'></i>
                <span>Settings</span>
            </a>
        </li><!-- End Blank Page Nav -->

    </ul>

</aside><!-- End Sidebar-->


<main id="main" class="main">

    <div class="pagetitle">
        <h1>Settings</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item active">Settings</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->


    <?php if (!$fingerprint_registered): ?>
        <div class="col-xl-6">
            <div class="card">
                <div class="card-body fingerprint">
                    <div class="left-fingerprint">
                        <img src="assets/img/FINGERPRINT SETTINGS.png" alt="FINGERPRINT ICON">
                    </div>
                    <div class="right-fingerprint">
                        <h1>Enable Fingerprint</h1>
                        <p class="description">Secure your account with fingerprint recognition. It's fast and easy to set
                            up.</p>
                        <a href="register_scan.php" class="add-fingerprint-btn">
                            <button class="btn-main">Add Fingerprint</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    <?php else: ?>
        <div class="col-xl-12">
            <div class="card">
                <div class="card-body">
                    <p>Unable to log in or record time logs due to connectivity issues? Submit an <strong>Access Issue
                            Request</strong> to inform your coordinator about the problem, and they'll assist in resolving
                        it as soon as possible.</p>
                    <?php if (!$pending_request): ?>
                        <button class="btn-main" data-toggle='modal' data-target='#ReqModal'>Submit Adjustment Request</button>
                    <?php else: ?>
                        <p>You already have a pending request. Please wait for the resolution before submitting a new one.</p>
                    <?php endif; ?>
                </div>
            </div>
        </div>

    <?php endif; ?>


    <div class="modal fade" id="ReqModal" tabindex="-1" role="dialog" aria-labelledby="ReqModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ReqModalLabel" style="color:#198754;font-weight:bold;">Request for
                        Adjustments</h5>
                    <i class="fa-solid fa-xmark" style="font-size:20px; cursor:pointer;" data-dismiss="modal"
                        aria-label="Close"></i>
                </div>
                <div class="modal-body">
                    <div id="message"></div>
                    <h4>Request for Time Log</h4>
                    <textarea name="reason" class="form-control" id="reason" placeholder="Enter Reason"></textarea>

                    <!-- Multiple File Upload -->
                    <div class="form-group mt-3">
                        <label for="file-upload">Upload Supporting Files</label>
                        <input type="file" class="form-control" id="file-upload" name="files[]" multiple
                            accept="image/*">
                    </div>

                    <!-- Date Picker for selecting dates -->
                    <div class="form-group mt-3">
                        <label for="dates">Select Date for missed log</label>
                        <input type="date" class="form-control" id="dates" name="dates" placeholder="Select dates"
                            >
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-main" style="background-color:#DC3545;"
                        data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn-del" id="confirmAdjustment">Submit</button>
                </div>
            </div>
        </div>
    </div>


</main><!-- End #main -->
<div id="preloader">
    <div class="loader"></div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="../assets/vendor/purecounter/purecounter_vanilla.js"></script>
<script src="../assets/js/main.js"></script>
<script src="../assets/js/datatables-simple-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
    crossorigin="anonymous"></script>
<script src="functions/js/send-entry.js"></script>
<script>
  var studentId = "<?php echo $_SESSION['student_id']; ?>";
</script>

<?php include "footer.php"; ?>
