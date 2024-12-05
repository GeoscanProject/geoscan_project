<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include 'includes/top_include.php' ?>


    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/index.css" rel="stylesheet">


    <section id="register" class="services">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <div class="d-flex align-items-center">
                    <img src="assets/img/pnc-logo.png" alt="Logo" style="height: 45px;">
                    <div class="ims"><a href="index.php" class="ims">&nbsp;Internship Management System</a></div>
                </div>
                <a href="login.php">
                    <button class="btn-main">Login</button>
                </a>
            </div>
            <br><br><br><br>
            <header class="section-header">
                <h2>Time Record
                </h2>

                <p>Time in/out using:</p>
            </header>

            <div class="row gy-4">
                <div class="col-lg-6 col-md-6">
                    <div class="service-box green">
                        <i class="ri-fingerprint-line icon"></i>
                        <h3>Fingerprint</h3>
                        <p>The Fingerprint option allows you to time in by simply pressing a fingerprint scanner. It
                            automatically fetches your location and the current time.</p>
                        <a href="time_scan.php" class="read-more"><span>Time Now</span> <i
                                class="bi bi-arrow-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                    <div class="service-box orange">
                        <i class="ri-lock-password-fill icon"></i>
                        <h3>4 Pin</h3>
                        <p>The 4 Pin option requires additional supporting evidence. You need to provide a picture and a
                            4-digit pin for time in.</p>
                        <a href="time_record.php" class="read-more"><span>Time Now</span> <i
                                class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Modal -->
    <div class="modal fade" id="InfoModal" tabindex="-1" role="dialog" aria-labelledby="InfoModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="InfoModalLabel" style="color:#198754; font-weight: bold;">
                        Information for Accurate Time Logs
                    </h5>
                    <i class="fa-solid fa-xmark" style="font-size: 20px; cursor: pointer;" data-bs-dismiss="modal"
                        aria-label="Close"></i>
                </div>
                <div class="modal-body">
                    <h6 style="font-weight: bold;">Configuration for more GPS Accuracy:</h6>
                    <p><strong>1. Use High-Accuracy GPS Mode (Mobile Settings)</strong></p>
                    <p>
                        <strong>On Android:</strong><br>
                        Go to <em>Settings > Location > Mode</em> or <em>Location Accuracy</em>. Select <strong>High
                            accuracy</strong>.
                        This mode uses GPS, Wi-Fi, Bluetooth, and mobile networks to determine your location.
                    </p>
                    <p>
                        <strong>On iOS:</strong><br>
                        Go to <em>Settings > Privacy > Location Services</em>. Ensure that Location Services is enabled
                        and set apps that require high accuracy (e.g., Maps or tracking apps) to <em>While Using the
                            App</em>.
                    </p>
                    <p>
                        This method allows the device to combine multiple sources of data, improving location precision.
                    </p>
                    <p><strong>2. Enable Wi-Fi and Bluetooth</strong></p>
                    <p>
                        Even when not connected to a Wi-Fi network, enabling Wi-Fi and Bluetooth on the device can
                        assist in
                        determining location more accurately. This is particularly useful in urban environments where
                        GPS signals
                        may be weak or obstructed.
                    </p>
                    <ul>
                        <li>Wi-Fi can help triangulate your position by detecting nearby networks.</li>
                        <li>Bluetooth beacons can also provide location data for fine-tuning your position.</li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Back</button>
                </div>
            </div>
        </div>
    </div>
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- Vendor JS Files -->
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Show the modal automatically when the page loads
            var infoModal = new bootstrap.Modal(document.getElementById('InfoModal'));
            infoModal.show();
        });
    </script>
    </body>

</html>