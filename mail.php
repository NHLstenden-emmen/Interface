<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'config/library/phpmailer/src/Exception.php';
require 'config/library/phpmailer/src/PHPMailer.php';
require 'config/library/phpmailer/src/SMTP.php';

$email = "feikefalkena@outlook.com";

$smtpUsername = "projecten@feikefalkena.nl";
$smtpPassword = "T2q!u19h";

$emailFrom = "projecten@feikefalkena.nl";
$emailFromName = "RoboTV Moderator";

$emailTo = "test-5q5byfsd3@srv1.mail-tester.com";
$emailToName = "Feike Falkena";


$mail = new PHPMailer;
$mail->isSMTP(); 
$mail->SMTPDebug = 2;
$mail->Host = "mail.feikefalkena.nl"; 
$mail->Port = 587;
$mail->SMTPSecure = 'STARTTLS';
$mail->SMTPAuth = true;
$mail->Username = $smtpUsername;
$mail->Password = $smtpPassword;
$mail->setFrom($emailFrom, $emailFromName);
$mail->addAddress($emailTo, $emailToName);
$mail->Subject = 'PHPMailer GMail SMTP test';
$mail->msgHTML("test body");
$mail->AltBody = 'HTML messaging not supported';

if(!$mail->send()){
    echo "Mailer Error: " . $mail->ErrorInfo;
}else{
    echo "Message sent!";
}


?>