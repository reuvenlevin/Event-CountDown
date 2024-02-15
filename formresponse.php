<?php
session_start();

if (!isset($_SESSION['LoggedIn']) || $_SESSION['LoggedIn'] !== true) {
    header('Location: loginpage.php');
    exit;
}

include "inc_db.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $masechta_id = $_POST['masechta_id'];
    $startdate = $_POST['startdate'];
    $finishdate = $_POST['finishdate'];
    $remindertype = $_POST['remindertype'];

    $s = "INSERT INTO userlearning (username, masechta_id, startdate, finishdate, remindertype) ".
    "VALUES ('$username', $masechta_id, '$startdate', '$finishdate', $remindertype)";
    echo $s;
    $result = $conn->query($s);

    if ($result) {
        echo "Thank you for entering the data!";
        echo "<br><br>";
        echo "Username: $username<br>";
        echo "Masechta ID: $masechta_id<br>";
        echo "Start Date: $startdate<br>";
        echo "Finish Date: $finishdate<br>";
        echo "Reminder Type: $remindertype<br>";
    } else {
        echo "An error occurred while saving the data.";
    }
    echo '<a href="form_info.php">Table info</a>';
}
?>
