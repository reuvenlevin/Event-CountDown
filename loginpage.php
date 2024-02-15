<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="responsiveslides.min.js"></script>
<script>
  $(function() {
    $(".rslides").responsiveSlides();
  });
</script>
<style>
  ul.rslides {
    width: 300px !important;
    height: 225px !important;
    margin: 0 auto;
}
  </style>
<ul class="rslides">
  <li><img src="gemora1.png" alt=""></li>
  <li><img src="gemora2.png" alt=""></li>
  <li><img src="gemora3.png" alt=""></li>
</ul>



<?php
session_start();





// Check if the user is already logged in
if (isset($_SESSION['LoggedIn']) && $_SESSION['LoggedIn'] === true) {
    header('Location: contentpage.php');
    exit;
}


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
    $servername = "localhost:3306";
    $username = "root";
    $password = "";
    $dbname = "sql_store";


    $conn = mysqli_connect($servername,$username,$password,$dbname);

    if(!$conn){
        die("Connection failed: " . mysqli_connect_error());
    }
    $inputUsername = $_POST['username'];
    $inputPassword = $_POST['password'];
   
    $sql = "SELECT * FROM users WHERE username = '$inputUsername' AND password = '$inputPassword'";

    $result = mysqli_query($conn, $sql);

   
        if ( mysqli_num_rows($result) === 1){
            $row=$result->fetch_assoc();
            $_SESSION['LoggedIn'] = true;
            //$_SESSION['userid'] = $row['userid'];
            $_SESSION['Username'] = $inputUsername;
            setcookie('Username', $inputUsername, time() + (86400 * 30), '/');
        
            header('Location: responsepage.php');
            exit;
        }
        else {
        
            $_SESSION['LoggedIn'] = false;
        }
        mysqli_close($conn);
    

    }

    
?>

<?php include 'header.php'; ?>


    <title>Login</title>

    <h1>Login</h1>
    <form method="POST" action="loginpage.php">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br><br>
        <a href="http://localhost:8003/signup">Sign Up</a>
        <input type="submit" value="Login">
    </form>


<?php include 'footer.php'; ?>