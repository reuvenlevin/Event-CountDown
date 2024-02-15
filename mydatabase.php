<?php

$servername = "localhost:3307";
$username = "root";
$password = "";
$dbname = "m358"; //"php_project_1";

$conn = mysqli_connect($servername,$username,$password,$dbname);

if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}

$sql="select * from users";
$r = $conn->query($sql);
while ($row=$r->fetch_assoc())
{
    echo $row['userlogin'];
}


echo "<select name='m'>";
$sql="select * from tractates where ttype='B'";
$r2 = $conn->query($sql);
while ($row2=$r2->fetch_assoc())
{
    echo "<option value='".$row2['tid']."'>".$row2['tname'] ." - ". $row2['tpages']."</option>";
}
echo "</select>";


//select * from users u, tractates t, userlearning ul where u.userid=ul.userid and t.tid=ul.tid and u.userid=X;
?>