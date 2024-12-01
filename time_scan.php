<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/scan.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <?php include 'includes/top_include.php' ?>
    <style>
        /* Optional Styling for Time In and Time Out Labels */
        .time-action {
            font-size: 1.5em;
            font-weight: bold;
        }

        .time-in {
            color: green;
        }

        .time-out {
            color: red;
        }
    </style>
</head>

<body>

    <div class="wrapper">
        <div class="container">
            <div class="header h1-header">
                <h1>Tap to Scan</h1>
            </div>

            <!-- Updated Label for Current Action -->
            <div class="select-time">
                <!-- <label for="timeAction">Current Action:</label> -->
                <span id="timeAction" class="time-action time-in">Time In</span>
            </div>

            <br><br><br>
            <div class="icon">
                <button class="button-main-scan" id="loginButton" style="border-radius:100%; height:200px; width:185px;">
                    <i class="fa-solid fa-fingerprint fa-8x" style="color:#fff;"></i>
                </button>
            </div>
            <br><br>
            <div class="buttons">
                <button id="BackButton" type="button" class="button-secondary">Back</button>
            </div>
        </div>
    </div>

    <div id="preloader">
        <div class="loader"></div>
    </div>

    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function bufferToBase64(buffer) {
            let binary = '';
            const bytes = new Uint8Array(buffer);
            for (let i = 0; i < bytes.byteLength; i++) {
                binary += String.fromCharCode(bytes[i]);
            }
            return window.btoa(binary);
        }

        document.getElementById('loginButton').addEventListener('click', async () => {
            // Show the preloader
            showPreloader();

            if (!navigator.geolocation) {
                Swal.fire({
                    title: 'Error',
                    text: 'Geolocation is not supported by your browser.',
                    icon: 'error'
                });
                hidePreloader();
                return;
            }

            const getLocation = () => {
                return new Promise((resolve, reject) => {
                    navigator.geolocation.getCurrentPosition(resolve, reject);
                });
            };

            try {
                const position = await getLocation();
                const { latitude, longitude } = position.coords;

                try {
                    const challengeResponse = await fetch('generate_challenge.php', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        }
                    });

                    const challengeData = await challengeResponse.json();
                    if (!challengeData.success) {
                        Swal.fire({
                            title: 'Error',
                            text: challengeData.message,
                            icon: 'error'
                        });
                        return;
                    }

                    const { challenge, credentials } = challengeData;
                    const allowCredentials = credentials.map(cred => ({
                        type: "public-key",
                        id: Uint8Array.from(atob(cred), c => c.charCodeAt(0))
                    }));

                    const publicKey = {
                        challenge: Uint8Array.from(atob(challenge), c => c.charCodeAt(0)),
                        allowCredentials,
                        timeout: 60000
                    };

                    const assertion = await navigator.credentials.get({ publicKey });

                    const credentialId = bufferToBase64(assertion.rawId);

                    const response = await fetch('login_fingerprint.php', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({
                            credential: {
                                id: credentialId,
                                rawId: credentialId,
                                response: {
                                    authenticatorData: bufferToBase64(assertion.response.authenticatorData),
                                    clientDataJSON: bufferToBase64(assertion.response.clientDataJSON),
                                    signature: bufferToBase64(assertion.response.signature)
                                },
                                type: assertion.type
                            },
                            longitude,
                            latitude
                        })
                    });

                    const result = await response.json();
                    if (result.success) {
                        Swal.fire({
                            title: 'Success',
                            text: result.message,
                            icon: 'success'
                        });

                        // Automatically update the displayed action
                        const timeAction = document.getElementById('timeAction');
                        const nextType = result.nextType || 'time_in'; // Fallback to 'time_in' if undefined
                        timeAction.textContent = nextType === 'time_in' ? 'Time In' : 'Time Out';

                        // Update classes for styling
                        timeAction.classList.remove('time-in', 'time-out');
                        timeAction.classList.add(nextType === 'time_in' ? 'time-in' : 'time-out');
                    } else {
                        Swal.fire({
                            title: 'Error',
                            text: result.message,
                            icon: 'error'
                        });
                    }

                } catch (error) {
                    console.error('Error:', error);
                    Swal.fire({
                        title: 'Error',
                        text: 'Scan failed. Please try again.',
                        icon: 'error'
                    });
                }
            } catch (error) {
                if (error.code === error.PERMISSION_DENIED) {
                    Swal.fire({
                        title: 'Error',
                        text: 'Please enable your GPS location and try again.',
                        icon: 'error'
                    });
                } else {
                    Swal.fire({
                        title: 'Error',
                        text: 'Unable to retrieve your location. Please ensure GPS is enabled and try again.',
                        icon: 'error'
                    });
                }
            }
            hidePreloader();
        });

        document.getElementById('BackButton').addEventListener('click', function () {
            window.location.href = './';
        });

        function showPreloader() {
            document.getElementById('preloader').style.display = 'block';
        }

        function hidePreloader() {
            document.getElementById('preloader').style.display = 'none';
        }
    </script>
</body>

</html>
