<?php
include 'header.php';
session_start();


if (!isset($_SESSION['LoggedIn']) || $_SESSION['LoggedIn'] !== true) {
    header('Location: loginpage.php');
    exit;
}
?>



<body>
    <h1>Response</h1>
    <?php
    echo 'Hello ' . $_COOKIE['Username'] . '!<br><br>';
    ?>
    <a href="contentpage.php">Go to Content Page</a>
</body>

<?php include 'footer.php'; ?>
