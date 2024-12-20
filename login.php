<?php
require 'config.php';
// Redirect to login if student_id session is not active
if (isset($_SESSION['student_id'])) {
    header('Location: intern/');
    exit;
} else if (isset($_SESSION['admin_id'])) {
    header('Location: admin/');
    exit;
} else if (isset($_SESSION['username'])) {
    header('Location: coordinator/');
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include 'includes/top_include.php'; ?>
    <link rel="stylesheet" href="assets/css/styles.css">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/css/boxicons.min.css"
        integrity="sha512-pVCM5+SN2+qwj36KonHToF2p1oIvoU3bsqxphdOIWMYmgr4ZqD3t5DjKvvetKhXGc/ZG5REYTT6ltKfExEei/Q=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</head>

<style>
    body {
        background-color: #f6f9ff;
    }
</style>

<body>
    <!-- Intern Login -->
    <div id="internLoginCard" class="col-lg-3 card-container">
        <div class="card">
            <div class="card-body">
                <div class="login-container-header">
                    <img src="assets/img/pnc-logo.png" alt="University of Cabuyao Logo">
                </div><br>
                <div class="card-title">
                    <h5>Login as Intern</h5>
                </div>
                <!-- Vertical Form -->
                <form id="loginForm_Intern" class="row g-3">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Student Id</label>
                        <input type="text" class="form-control" id="student_id" name="student_id">
                    </div>
                    <div class="col-12">
                        <label for="pin" class="form-label">Pin</label>
                        <div class="position-relative">
                            <input type="password" class="form-control" id="pin" name="pin" oninput="checkPinInput()">
                            <button type="button"
                                class="btn btn-light position-absolute top-50 end-0 translate-middle-y me-2"
                                id="togglePinButton" style="display: none;" onclick="togglePinVisibility()">
                                <i class="bx bx-show" id="togglePinIcon"></i>
                            </button>
                        </div>
                    </div>

                    <br><br>
                    <div class="d-grid gap-2 mt-3">
                        <button class="btn-main" style="border-radius: 5px;" type="submit">Login</button>
                    </div>
                    <div class="text-center">
                        <a class="backbtn" href="forgot_password.php">Forgot Password?</a>
                    </div>
                </form>
                <center>
                    <div id="message" class="message"></div>
                </center>
                <div class="text-center">
                    <button type="button" class="btn btn-light rounded-pill"><a class="backbtn"
                            href="./">Back</a></button>
                </div>
            </div>
        </div>

        <!-- Toggle to show Officer login -->
        <button class="toggle-button" onclick="toggleLoginForms()">
            <i class='bx bxs-chevrons-right'></i>
        </button>

        <div id="preloader">
            <div class="loader"></div>
        </div>
    </div>

    <!-- Officer Login -->
    <div id="officerLoginCard" class="col-lg-3 card-container">
        <div class="card">
            <div class="card-body">
                <div class="login-container-header">
                    <img src="assets/img/pnc-logo.png" alt="University of Cabuyao Logo">
                </div><br>
                <div class="card-title">
                    <h5>Login as Admin | Coordinator</h5>
                </div>
                <!-- Vertical Form -->
                <form id="loginForm_officer" class="row g-3">
                    <div class="col-12">
                        <label for="inputNanme4" class="form-label">Username</label>
                        <input type="text" class="form-control" id="username" name="username">
                    </div>
                    <div class="col-12">
                        <label for="inputEmail4" class="form-label">Password</label>
                        <div class="position-relative">
                            <input type="password" class="form-control" id="password" name="password"
                                oninput="checkPasswordInput('password')">
                            <button type="button"
                                class="btn btn-light position-absolute top-50 end-0 translate-middle-y me-2"
                                id="togglePasswordButton" style="display: none;"
                                onclick="togglePasswordVisibility('password')">
                                <i class="bx bx-show" id="togglePasswordIcon"></i>
                            </button>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="roleSelect" class="form-label">Select Role</label>
                        <select class="form-control" id="role" name="role">
                            <option value="admin">Admin</option>
                            <option value="coordinator">Coordinator</option>
                        </select>
                    </div><br><br>
                    <div class="d-grid gap-2 mt-3">
                        <button class="btn-main" style="border-radius: 5px;" type="submit"> Login</button>
                    </div>
                    <div class="text-center">
                        <a class="backbtn" href="" data-bs-toggle="modal" data-bs-target="#verticalycentered">Forgot
                            Password?</a>
                    </div>

                </form>

                <center>
                    <div id="officer_message" class="officer_message"></div>
                </center>
                <div class="text-center">
                    <button type="button" class="btn btn-light rounded-pill"><a class="backbtn"
                            href="./">Back</a></button>
                </div>
            </div>
        </div>

        <div class="modal fade" id="verticalycentered" tabindex="-1">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Forgot Password?</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Select Role:
                        <div class="text-center">
                            <a class="backbtn" href="forgot_password_coor.php">Coordinator</a>
                        </div>
                        <br>
                        <div class="text-center">
                            <a class="backbtn" href="admin_forgot_password.php">Admin</a>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="text-center">
                            <button type="button" class="btn btn-light rounded-pill"><a class="backbtn"
                                    href="login.php">Back</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Toggle to show Intern login -->
        <button class="toggle-button" onclick="toggleLoginForms()">
            <i class='bx bxs-chevrons-left'></i>
        </button>
    </div>

    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/js/main.js"></script>

    <script>
        // Toggle function to switch between Intern and Officer login
        function toggleLoginForms() {
            const internLogin = document.getElementById('internLoginCard');
            const officerLogin = document.getElementById('officerLoginCard');

            if (internLogin.style.display === 'none') {
                internLogin.style.display = 'block';
                officerLogin.style.display = 'none';
            } else {
                internLogin.style.display = 'none';
                officerLogin.style.display = 'block';
            }
        }

        // Intern login form submission
        document.getElementById('loginForm_Intern').addEventListener('submit', async (event) => {
            event.preventDefault();
            const messageDiv = document.getElementById('message');
            messageDiv.textContent = '';

            const student_id = document.getElementById('student_id').value;
            const pin = document.getElementById('pin').value;

            try {
                const response = await fetch('login_process.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ student_id, pin })
                });

                const result = await response.json();
                if (result.success) {
                    window.location.href = 'intern/';
                } else {
                    messageDiv.textContent = result.message;
                }
            } catch (error) {
                console.error('Error:', error);
                messageDiv.textContent = 'Login failed. Please try again.';
            }
        });

        // Admin/Coordinator login form submission
        document.getElementById('loginForm_officer').addEventListener('submit', async (event) => {
            event.preventDefault();
            const messageDiv = document.getElementById('officer_message');
            messageDiv.textContent = '';

            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const role = document.getElementById('role').value;

            let url = '';
            if (role === 'admin') {
                url = 'login_process_admin.php';
            } else if (role === 'coordinator') {
                url = 'login_process_coordinator.php';
            }

            try {
                const response = await fetch(url, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ username, password })
                });

                const result = await response.json();
                if (result.success) {
                    if (role === 'admin') {
                        window.location.href = 'admin/';
                    } else if (role === 'coordinator') {
                        window.location.href = 'coordinator/';
                    }
                } else {
                    messageDiv.textContent = result.message;
                }
            } catch (error) {
                console.error('Error:', error);
                messageDiv.textContent = 'Login failed. Please try again.';
            }
        });

        function togglePasswordVisibility(inputId) {
            const passwordInput = document.getElementById(inputId);
            const toggleIcon = document.getElementById('togglePasswordIcon');

            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                toggleIcon.classList.replace('bx-show', 'bx-hide');
            } else {
                passwordInput.type = 'password';
                toggleIcon.classList.replace('bx-hide', 'bx-show');
            }
        }

        function checkPasswordInput(inputId) {
            const passwordInput = document.getElementById(inputId);
            const toggleButton = document.getElementById('togglePasswordButton');

            if (passwordInput.value.length > 0) {
                toggleButton.style.display = 'block'; // Show the button
            } else {
                toggleButton.style.display = 'none'; // Hide the button
            }
        }

        function togglePinVisibility() {
            const pinInput = document.getElementById('pin');
            const toggleIcon = document.getElementById('togglePinIcon');

            if (pinInput.type === 'password') {
                pinInput.type = 'text';
                toggleIcon.classList.replace('bx-show', 'bx-hide');
            } else {
                pinInput.type = 'password';
                toggleIcon.classList.replace('bx-hide', 'bx-show');
            }
        }

        function checkPinInput() {
            const pinInput = document.getElementById('pin');
            const toggleButton = document.getElementById('togglePinButton');

            if (pinInput.value.length > 0) {
                toggleButton.style.display = 'block'; // Show the button
            } else {
                toggleButton.style.display = 'none'; // Hide the button
            }
        }


    </script>


</body>

</html>