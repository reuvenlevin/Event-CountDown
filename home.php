<?php
include "inc_db.php";
include "header.php";

echo "<div style='text-align:center;'>";
if($_SESSION['Username']<>""){


$query = "SELECT Masechta.Masechta_name, Masechta.Masechta_amount, userlearning.finishdate, userlearning.startdate
FROM Masechta
JOIN userlearning  ON Masechta.masechta_id = userlearning.masechta_id
where username ='".$_SESSION['Username']."'";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $masechtaName = $row['Masechta_name'];
        $masechtaAmount = $row['Masechta_amount'];
        $finishDate = strtotime($row['finishdate']);
        $startDate = strtotime($row['startdate']);
        
        $dateDifference = $finishDate - time(); 
        $daysDifference = ceil($dateDifference / (60 * 60 * 24)); 
        
        $calculation = round($masechtaAmount / ($dateDifference / (60 * 60 * 24)), 1);
        
        echo "Masechta: $masechtaName<br>";
        echo "Days Remaining: $daysDifference days<br>";
        echo "Today's Daf Amount: $calculation<br><br>";
    }
} else {
    echo "No information found. <a href='contentpage.php'>Click here</a> to plan out the dafim.";
}

$result->close();
$conn->close();

}
else
{
    echo "Please login.<a href='loginpage.php'>Login</a>";
}
echo "</div>";
include "footer.php";
?>
