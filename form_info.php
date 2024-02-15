<?php
session_start();
include "inc_db.php";


$sql = "SELECT * FROM userlearning";
$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) > 0) {
    echo "<h1>Data in userlearning Table</h1>";
    echo "<table>";
    echo "<tr><th>ID</th><th>Username</th><th>Masechta ID</th><th>Finish Date</th><th>Finish Date</th><th>RType</th></tr>";

    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['username'] . "</td>";
        echo "<td>" . $row['masechta_id'] . "</td>";
        echo "<td>" . $row['startdate'] . "</td>";
        echo "<td>" . $row['finishdate'] . "</td>";
        echo "<td>" . $row['remindertype'] . "</td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "No data found in the form_Input table.";
}


mysqli_close($conn);
?>
