<?php
include "nav.php";
include "functions/fetch-forgot-timeout.php";
$currentDate = date('Y-m-d');
?>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link href="../assets/css/table.css" rel="stylesheet">
<!-- ======= Sidebar ======= -->

<aside id="sidebar" class="sidebar">

  <ul class="sidebar-nav" id="sidebar-nav">

    <li class="nav-item">
      <a class="nav-link " href="index.php">
        <i class="bi bi-grid"></i>
        <span>Dashboard</span>
      </a>
    </li><!-- End Profile Page Nav -->

    <li class="nav-heading">Configuration</li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="add_intern.php">
        <i class="bi bi-person-plus-fill"></i>
        <span>Add Intern</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="generate_report.php">
        <i class="ri-folder-download-line"></i>
        <span>Generate Intern Report</span>
      </a>
    </li>

    <li class="nav-heading">Pages</li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="intern.php">
        <i class="bi bi-people-fill"></i>
        <span>List of Intern</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="requirement_checklist.php">
        <i class="bi bi-file-earmark-check-fill"></i>
        <span>Requirements Checklist</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="interns_attendance.php">
        <i class="bx bxs-user-detail"></i>
        <span>Interns Attendance</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="interns_progress_report.php">
        <i class="ri-line-chart-fill"></i>
        <span>Progress Report</span>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link collapsed" href="intern_adjustments.php">
        <i class='bx bxs-cog'></i>
        <span>Intern Adjustments</span>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link collapsed" href="action_logs.php">
        <i class='bx bx-history'></i>
        <span>Audit Trail</span>
      </a>
    </li>

  </ul>

</aside><!-- End Sidebar-->

<main id="main" class="main">

  <div class="pagetitle">
    <h1>Dashboard</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <!-- Change from 'container' to 'container-fluid' -->

  <section class="section dashboard">
    <div class="row">

      <!-- Left side columns -->
      <div class="col-lg-12">
        <div class="row">

          <!-- Sales Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card sales-card">

              <div class="card-body">
                <h5 class="card-title">Registered Interns</h5>

                <?php
                // Prepare the SQL query to count rows with the specific coordinator_id
                $stmt = $pdo->prepare("SELECT COUNT(*) FROM tbl_users WHERE coordinator_id = :coordinator_id");
                $stmt->bindParam(':coordinator_id', $_SESSION['coordinator_id'], PDO::PARAM_INT);

                // Execute the query
                $stmt->execute();

                // Fetch the count
                $count = $stmt->fetchColumn();
                ?>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-person-check"></i>
                  </div>
                  <div class="ps-3">
                    <h6><?php echo $count; ?></h6>
                    <span class="text-muted small pt-2 ps-1">
                      <a href="intern.php">
                        <i class="bi bi-arrow-right"></i> &nbsp;View All
                      </a>
                    </span>
                  </div>
                </div>
              </div>

            </div>
          </div><!-- End Sales Card -->

          <!-- Revenue Card -->
          <div class="col-xxl-4 col-md-6">
            <div class="card info-card revenue-card">

              <div class="card-body">
                <h5 class="card-title">Attendance <span>| Today</span></h5>

                <?php
                $today = date('Y-m-d');

                $stmt = $pdo->prepare("
                   SELECT student_id
                   FROM tbl_users
                   WHERE coordinator_id = :coordinator_id
               ");
                $stmt->bindParam(':coordinator_id', $_SESSION['coordinator_id'], PDO::PARAM_INT);
                $stmt->execute();

                // Fetch all student_id values
                $student_ids = $stmt->fetchAll(PDO::FETCH_COLUMN);

                if (empty($student_ids)) {
                  $count = 0; // No students, so count is zero
                } else {
                  // Step 2: Prepare a query to count unique student_id for today
                  $placeholders = implode(',', array_fill(0, count($student_ids), '?'));
                  $stmt = $pdo->prepare("
                       SELECT COUNT(DISTINCT student_id)
                       FROM tbl_timelogs
                       WHERE student_id IN ($placeholders) AND DATE(timestamp) = ?
                   ");
                  $params = array_merge($student_ids, [$today]);
                  $stmt->execute($params);

                  // Fetch the count
                  $count = $stmt->fetchColumn();
                }
                ?>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-clock-history"></i>
                  </div>
                  <div class="ps-3">
                    <h6><?php echo $count; ?></h6>
                    <span class="text-muted small pt-2 ps-1">
                      <a href="attendance_today.php">
                        <i class="bi bi-arrow-right"></i> &nbsp;View All
                      </a>
                    </span>
                  </div>
                </div>
              </div>

            </div>
          </div><!-- End Revenue Card -->

          <!-- Customers Card -->
          <div class="col-xxl-4 col-xl-12">

            <div class="card info-card customers-card">

              <div class="card-body">
                <h5 class="card-title">Requirements to Review</h5>

                <?php
                // Fetch student IDs for the given coordinator_id
                $stmt = $pdo->prepare("
          SELECT student_id 
          FROM tbl_users 
          WHERE coordinator_id = :coordinator_id
      ");
                $stmt->execute(['coordinator_id' => $_SESSION['coordinator_id']]);
                $student_ids = $stmt->fetchAll(PDO::FETCH_COLUMN);

                // Initialize the count variable
                $pendingCount = 0;

                if (!empty($student_ids)) {
                  // Create a placeholder string for the SQL query
                  $placeholders = implode(',', array_fill(0, count($student_ids), '?'));

                  // Count records in tbl_requirements with status 'pending' for the fetched student_ids
                  $countStmt = $pdo->prepare("
        SELECT COUNT(*) 
        FROM tbl_requirements 
        WHERE student_id IN ($placeholders) AND status = 'pending'
    ");
                  $countStmt->execute($student_ids);

                  // Fetch the count
                  $pendingCount = $countStmt->fetchColumn();
                }
                ?>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-clipboard-check"></i>
                  </div>
                  <div class="ps-3">
                    <h6><?php echo htmlspecialchars($pendingCount); ?></h6>
                    <span class="text-muted small pt-2 ps-1">
                      <a href="requirements_to_review.php">
                        <i class="bi bi-arrow-right"></i> &nbsp;View All
                      </a>
                    </span>
                  </div>
                </div>

              </div>
            </div>

          </div>


          <div class="col-sm-12 col-xl-8">
            <div class="card">

              <div class="card-body">
                <h5 class="card-title">Reports <span>/Todays</span></h5>

                <?php
                $today = date('Y-m-d');

                $sql = "
                      SELECT u.student_id, u.firstname, u.lastname, 
                            MAX(CASE WHEN t.type = 'time_in' THEN t.timestamp ELSE NULL END) AS time_in,
                            MAX(CASE WHEN t.type = 'time_out' THEN t.timestamp ELSE NULL END) AS time_out
                      FROM tbl_users u
                      LEFT JOIN tbl_timelogs t ON u.student_id = t.student_id 
                      WHERE u.coordinator_id = :coordinator_id
                      AND DATE(t.timestamp) = :today
                      GROUP BY u.student_id, u.firstname, u.lastname
                  ";

                $stmt = $pdo->prepare($sql);
                $stmt->bindParam(':coordinator_id', $_SESSION['coordinator_id'], PDO::PARAM_INT);
                $stmt->bindParam(':today', $today);
                $stmt->execute();

                $records = $stmt->fetchAll(PDO::FETCH_ASSOC);
                ?>

                <table id="datatablesSimple" class="table">
                  <thead>
                    <tr>
                      <th>Student ID</th>
                      <th>Student Name</th>
                      <th>Time In</th>
                      <th>Time Out</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($records as $record): ?>
                      <tr>
                        <td><?php echo htmlspecialchars($record['student_id']); ?></td>
                        <td><?php echo htmlspecialchars($record['firstname'] . ' ' . $record['lastname']); ?></td>
                        <td><?php echo $record['time_in'] ? date('H:i:s', strtotime($record['time_in'])) : '-'; ?></td>
                        <td><?php echo $record['time_out'] ? date('H:i:s', strtotime($record['time_out'])) : '-'; ?></td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>


              </div>

            </div>
          </div>


          <div class="col-lg-4">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Interns <span>with No Time-Out Entries</span></h5>
                <?php
                if ($missingTimeOuts) {
                  $interns = [];

                  // Aggregate missing dates by intern
                  foreach ($missingTimeOuts as $entry) {
                    $key = $entry['firstname'] . ' ' . $entry['lastname'];
                    if (!isset($interns[$key])) {
                      $interns[$key] = [
                        'dates' => [],
                        'status' => $entry['status']
                      ];
                    }
                    $interns[$key]['dates'][] = $entry['missing_date'];
                  }

                  // Get today's date
                  $today = date('Y-m-d');

                  // Display today's missing time-out message
                  if (in_array($today, array_merge(...array_column($interns, 'dates')))) {
                    echo "
                    <div class='reminder-alert'>
                    </div>";
                  }

                  // Display past missed time-outs
                  echo "
                <div class='out-container'>
                    <div class='reminder-alert'>
                        <p>Some of your interns have not logged their time out on the following dates:</p>
                        <ul>";

                  foreach ($interns as $intern => $details) {
                    $dates = implode(', ', $details['dates']);

                    // Status badge logic
                    if ($details['status'] == 'Approved') {
                      $statusBadge = "<span class='badge badge-warning' style='color:black;background-color:orange;'>Under Review</span>";
                    } elseif ($details['status'] == 'Pending') {
                      $statusBadge = "<span class='badge badge-warning' style='color:black;background-color:orange;'>Pending</span>";
                    } elseif ($details['status'] == 'Rejected') {
                      $statusBadge = "<span class='badge badge-warning' style='color:white;background-color:red;'>Rejected</span>";
                    } else {
                      $statusBadge = ''; // For any other status, no badge will be displayed
                    }

                    // Output each intern's details
                    echo "<li><strong>{$intern}:</strong> {$dates} {$statusBadge}</li>";
                  }


                  echo "</ul>
                    </div>
                </div>";
                } else {
                  echo "<p>All time out records are up to date.</p>";
                }
                ?>
              </div>
            </div>
          </div>

          <div class="col-xxl-4 col-md-6">
            <div class="card info-card new-registrations-card">
              <div class="card-body">
                <h5 class="card-title">Requesting for Missed Log</h5>
                <?php
                // Prepare the SQL query with a parameter for the coordinator_id
                $query = "SELECT A.*, B.coordinator_id 
                FROM tbl_request AS A 
                LEFT JOIN tbl_users AS B ON A.student_id = B.student_id
                WHERE A.status = 'Pending' AND B.coordinator_id = :coordinator_id";

                // Prepare the statement
                $stmt = $pdo->prepare($query);

                // Bind the parameter
                $stmt->bindValue(':coordinator_id', $_SESSION['coordinator_id'], PDO::PARAM_INT);

                // Execute the query
                $stmt->execute();

                // Fetch all results
                $requests = $stmt->fetchAll();

                // Check if there are any rows returned
                if ($requests):
                  ?>
                  <ul>
                    <?php foreach ($requests as $request): ?>
                      <li>
                        <strong>Student ID:</strong> <?= htmlspecialchars($request['student_id']); ?><br>
                        <strong>Reason:</strong> <?= htmlspecialchars($request['reason']); ?><br>
                        <strong>Files:</strong>
                        <a href="#" class="view-file"
                          data-file='<?php echo htmlspecialchars(json_encode(explode(',', $request['files']))); ?>'>View
                          Files</a><br>

                        <strong>Status:</strong>
                        <span class='badge badge-warning' style='color:black;background-color:orange;'>
                          <?= htmlspecialchars($request['status']); ?></span><br>
                        <strong>Date for adjustment:</strong> <?= htmlspecialchars($request['records']); ?><br><br>

                        <!-- Approve Button -->
                        <button class="btn btn-success approve-btn"
                          data-request-id="<?= htmlspecialchars($request['id']); ?>"
                          data-student-id="<?= htmlspecialchars($request['student_id']); ?>">
                          Approve
                        </button>

                      </li>
                    <?php endforeach; ?>
                  </ul>
                <?php else: ?>
                  <p>No requests found.</p>
                <?php endif; ?>
              </div>
            </div>
          </div>

          <!-- Modal for Approving Requests and Inputting Time -->
          <div class="modal fade" id="approveModal" tabindex="-1" aria-labelledby="approveModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="approveModalLabel">Approve Request</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <!-- Date Time Picker for Time In and Time Out -->
                  <div class="mb-3">
                    <label for="time_in" class="form-label">Time In</label>
                    <input type="datetime-local" class="form-control" id="time_in">
                  </div>
                  <div class="mb-3">
                    <label for="time_out" class="form-label">Time Out</label>
                    <input type="datetime-local" class="form-control" id="time_out">
                  </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary" id="submitApproval">Approve</button>
                </div>
              </div>
            </div>
          </div>
          <div class="modal fade" id="fileModal" tabindex="-1" aria-labelledby="fileModalLabel" aria-hidden="true">
            <div class="modal-dialog"> <!-- Use the 'modal-sm' class for smaller modal -->
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="fileModalLabel">View File</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex justify-content-center align-items-center" style="min-height: 200px;">
                  <!-- This will hold the file content, centered -->
                  <img id="fileViewer" class="img-fluid" alt="File Content"> <!-- Use img tag instead of iframe -->
                </div>
                <div class="modal-footer">
                  <!-- Next and Previous Buttons -->
                  <button type="button" id="prevFileBtn" class="btn btn-secondary">Previous</button>
                  <button type="button" id="nextFileBtn" class="btn btn-primary">Next</button>
                </div>
              </div>
            </div>
          </div>





        </div>
  </section>

</main><!-- End #main -->

<script src="../assets/js/datatables-simple-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
  crossorigin="anonymous"></script>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    const fileLinks = document.querySelectorAll('.view-file');

    fileLinks.forEach(link => {
      link.addEventListener('click', function (e) {
        e.preventDefault();

        // Get the file paths from the data-file attribute
        const filePaths = JSON.parse(this.getAttribute('data-file'));

        // Get the image element (not iframe now)
        const imgViewer = document.getElementById('fileViewer');

        // Set the first image's src
        imgViewer.src = 'geoscan_project/' + filePaths[0];

        // Open the modal (Bootstrap 5)
        const fileModal = new bootstrap.Modal(document.getElementById('fileModal'));
        fileModal.show();

        // Optional: Handle file navigation within the modal (next/previous buttons)
        let currentIndex = 0;

        // Ensure the buttons exist before adding event listeners
        const nextFileBtn = document.getElementById('nextFileBtn');
        const prevFileBtn = document.getElementById('prevFileBtn');

        if (nextFileBtn && prevFileBtn) {
          nextFileBtn.addEventListener('click', function () {
            currentIndex = (currentIndex + 1) % filePaths.length; // Loop back to the first file if at the end
            imgViewer.src = 'geoscan_project/' + filePaths[currentIndex];
          });

          prevFileBtn.addEventListener('click', function () {
            currentIndex = (currentIndex - 1 + filePaths.length) % filePaths.length; // Loop to the last file if at the beginning
            imgViewer.src = 'geoscan_project/' + filePaths[currentIndex];
          });
        }
      });
    });

    // Open modal and set up approve button functionality
    document.querySelectorAll('.approve-btn').forEach(button => {
      button.addEventListener('click', function () {
        // Get the request ID and student ID from the button's data attributes
        const requestId = this.getAttribute('data-request-id');
        const studentId = this.getAttribute('data-student-id');

        // Show the modal
        const approveModal = new bootstrap.Modal(document.getElementById('approveModal'));
        approveModal.show();

        // Handle form submission (Approve button inside modal)
        document.getElementById('submitApproval').addEventListener('click', function () {
          // Get the values for time_in and time_out
          const timeIn = document.getElementById('time_in').value;
          const timeOut = document.getElementById('time_out').value;

          if (timeIn && timeOut) {
            // Make an AJAX request to insert the data into tbl_timelogs
            fetch('functions/approve-request.php', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json',
              },
              body: JSON.stringify({
                request_id: requestId,
                student_id: studentId,
                time_in: timeIn,
                time_out: timeOut,
              }),
            })
              .then(response => response.json())
              .then(data => {
                if (data.success) {
                  // Show success SweetAlert
                  Swal.fire({
                    icon: 'success',
                    title: 'Request Approved!',
                    text: 'Time logs inserted successfully.',
                    confirmButtonText: 'OK'
                  }).then((result) => {
                    if (result.isConfirmed) {
                      // Close the modal
                      approveModal.hide();

                      // Optionally, update the UI to reflect the new status
                      button.disabled = true;
                      button.textContent = 'Approved';

                      window.location.reload();
                    }
                  });
                } else {
                  // Show error SweetAlert when logs already exist
                  if (data.message.includes('Logs already exist.')) {
                    Swal.fire({
                      icon: 'error',
                      title: 'Log Conflict',
                      text: 'You cannot enter time logs for this date as logs already exist.',
                      confirmButtonText: 'OK'
                    });
                  } else {
                    // Generic error SweetAlert
                    Swal.fire({
                      icon: 'error',
                      title: 'Oops...',
                      text: 'Failed to approve the request.',
                      confirmButtonText: 'OK'
                    });
                  }
                }
              })
              .catch(error => {
                console.error('Error:', error);
                // Show error SweetAlert
                Swal.fire({
                  icon: 'error',
                  title: 'Something went wrong',
                  text: 'Please try again later.',
                  confirmButtonText: 'OK'
                });
              });
          } else {
            // Show SweetAlert for missing time_in or time_out
            Swal.fire({
              icon: 'warning',
              title: 'Incomplete data',
              text: 'Please enter both Time In and Time Out.',
              confirmButtonText: 'OK'
            });
          }
        });
      });
    });


  });
</script>



<?php include "footer.php"; ?>