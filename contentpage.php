<?php
session_start();


if (!isset($_SESSION['LoggedIn']) || $_SESSION['LoggedIn'] !== true) {
    header('Location: loginpage.php');
    exit;
}


if (isset($_GET['logout']) && $_GET['logout'] === 'true') {
    
    session_unset();
    session_destroy();

    
    header('Location: loginpage.php');
    exit;
}
?>


   
<?php include 'header.php'; ?>
    <h1>Content Page</h1>
    <?php
    echo 'Hello ' . $_SESSION['Username'] . '!<br><br>';

include "inc_db.php";
    ?>

<h2>What would you like to learn?</h2>
<form action="formresponse.php" method="post">

<form method="POST" action="your_action_page.php">
    <input type="hidden" name="username" value="<?php echo $_SESSION['Username']; ?>" />
    
    Masechta: 
    <select name="masechta_id">
    <?php
        $sql = "SELECT * FROM Masechta";
        $result = $conn->query($sql);
        while ($row = $result->fetch_assoc()) {
            echo "<option value='".$row['Masechta_ID']."'>".$row['Masechta_Name']."</option>";
        }
        
    ?>
    </select>

    <h4>Start Date</h4>
    <input type="date" name="startdate" />

    <h4>Finish Date</h4>
    <input type="date" name="finishdate" />

    Reminders:
    <select name="remindertype">
    <?php
        $sql = "SELECT * FROM ReminderTypes";
        $result = $conn->query($sql);
        while ($row = $result->fetch_assoc()) {
            echo "<option value='".$row['rtypeid']."'>".$row['rtypename']."</option>";
        }
    ?>
    </select>

    <input type="submit" value="Submit Data" />
</form>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $d = $_POST['startdate'];
    $f = $_POST['finishdate'];
    $s = "INSERT INTO userlearning (username, masechta_id, startdate, finishdate, remindertype) VALUES ('".$_POST['username']."', ".$_POST['masechta_id'].", '".$d."', '".$f."', ".$_POST['remindertype'].")";
    echo $s;
    $result = $conn->query($s);
}
?>

<?php include "formresponse.php";
?>

    <a href="contentpage.php?logout=true">Logout</a>
    <?php include 'footer.php'; ?>

