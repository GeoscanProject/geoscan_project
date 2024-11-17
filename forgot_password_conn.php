<?php
include 'config.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

$msg = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['email'])) {
    $email = $_POST['email'];

    // Check if email exists
    $stmt = $pdo->prepare('SELECT * FROM tbl_users WHERE email = :email');
    $stmt->execute(['email' => $email]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        // Generate a unique token
        $token = bin2hex(random_bytes(32));

        // Set token expiry time (e.g., 1 hour)
        $expiry = date('Y-m-d H:i:s', strtotime('+1 hour'));

        // Update the reset token and expiry in the database
        $stmt = $pdo->prepare('UPDATE tbl_users SET reset_token = :token, token_expiry = :expiry WHERE email = :email');
        $stmt->execute([
            'token' => $token,
            'expiry' => $expiry,
            'email' => $email
        ]);

        // Send the reset email using PHPMailer
        $mail = new PHPMailer(true);

        try {
            //Server settings
            $mail->isSMTP();
            $mail->Host       = 'smtp.gmail.com'; 
            $mail->SMTPAuth   = true;
            $mail->Username   = 'imspnc69@gmail.com'; // Your SMTP username
            $mail->Password   = 'bvonusejeomwigja'; // Your SMTP password
            $mail->SMTPSecure = 'ssl';
            $mail->Port       = 465;

            //Recipients
            $mail->setFrom($email, 'IMS');
            $mail->addAddress($email);

            // Content
            $reset_link = "https://ims-pnc.site/reset_password.php?token=" . $token;
            $mail->isHTML(true);
            $mail->Subject = 'Password Reset Request';
            $mail->Body    = "Good day Coordinator!, <br><br>We've received a request to reset your PIN. If this was you, please confirm and continue by clicking the link below: <br>
             <a href='$reset_link'>$reset_link</a> <br><br>
             If you didn't make this request, you can ignore this message.";
            $mail->AltBody = "Copy and paste the following link into your browser to reset your password: $reset_link";

            $mail->send();
            
            if ($mail->send()) {
                $msg = "Password reset link has been sent to your email.";
            } else {
                $msg = "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
        } catch (Exception $e) {
            $msg = "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    } else {
        $msg = "No account found with that email address.";
    }

    header("Location: forgot_password.php?msg=" . urlencode($msg));
    exit;
}
?>
