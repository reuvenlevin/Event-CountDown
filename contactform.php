<?php
include 'header.php';
?>

<h1>Contact Us</h1>
<form method="post" action="contactformR.php">
  
  <label for="fullname">Name:</label>
  <input type="text" name="fullname" id="fullname" required><br>

  <label for="number">Number:</label>
  <input type="tel" name="number" id="number" required><br>

  <label for="email">Email:</label>
  <input type="email" name="email" id="email" required><br>

  <label for="comment">Questions or Comments:</label>
  <textarea name="comment" id="comment" required></textarea><br>

  <input type="submit" value="Submit">
</form>

<?php
include 'footer.php';
?>
