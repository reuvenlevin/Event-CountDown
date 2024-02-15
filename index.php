


<?php include 'header.php'; ?>

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




<title>Index.php</title>


<h1>DAF YOMI PLANNER</h1>
<form action="responsepage.php" method="post">
  

  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required><br>

  <label for="password">Password:</label>
  <input type="password" id="password" name="password" required><br>



  <input type="submit" value="Submit">
</form>

<?php include 'footer.php'; ?>

