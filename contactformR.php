<?php

include 'header.php';
require 'PHPMailer-master/PHPMailerAutoload.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $fullname = $_POST['fullname'];
    $number = $_POST['number'];
    $email = $_POST['email'];
    $comment = $_POST['comment'];

   
    $mail = new PHPMailer;
    $mail->isSMTP();
    $mail->SMTPSecure = 'ssl';
    $mail->SMTPAuth = true;
    $mail->SMTPDebug = 4; 
    $mail->Host = 'smtp.gmail.com';
    $mail->Port = 465;
    $mail->Username = 'testxampp1@gmail.com'; 
    $mail->Password = 'tpoxhugeizzlwukl'; 
    $mail->setFrom('testxampp1@gmail.com'); 
    $mail->addAddress('testxampp1@gmail.com'); 
    $mail->Subject = 'Website Contact Form';
    $mail->Body = "Name: " . $fullname . "\n"
        . "Number: " . $number . "\n"
        . "Email: " . $email . "\n"
        . "Questions or Comments: " . $comment;

   
    if (!$mail->send()) {
        echo "ERROR: " . $mail->ErrorInfo;
    } else {
        echo "Email sent. Thank you for your submission";
    }
}
include 'footer.php';
?>
