<?php
include "config.php";
include "session.php";


/* $sql="SELECT * FROM 'login'";
$result=$conn->query($sql); */
if(isset($_POST['submit'])){
if (isset($_GET['sender_id'])) {
	$receiver_id = $_GET['sender_id'];
    $usertype = $_SESSION['usertype'];
    if($usertype==1){
    $sql2="SELECT `log_id` FROM `renter` WHERE `renter_id`=$receiver_id";
    $result=$conn->query($sql2);
    $row = $result->fetch_assoc();
    $receiver = $row['log_id']; 
    }
    if($usertype==2){
        $sql22="SELECT `log_id` FROM `customer` WHERE `cus_id`=$sender_id";
        $result22=$conn->query($sql22);
        $row22 = $result22->fetch_assoc();
        $receiver = $row22['log_id']; 
        }
   


$sender= $_SESSION['log_id'];
$message=$_POST['mess'];
$insert="INSERT INTO `message`( `sender_id`, `receiver_id`, `message`) VALUES ('$sender','$receiver','$message')";
$ins=$conn->query($insert);
}
}

?>


<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>Adventure Bootstrap Template</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--

Template 2078 Adventure

http://www.tooplate.com/view/2078-adventure

-->
	<!-- Bootstrap CSS
   ================================================== -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="css/animate.min.css">

	<!-- Font Icons
   ================================================== -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/et-line-font.css">

	<!-- Nivo Lightbox CSS
   ================================================== -->
	<link rel="stylesheet" href="css/nivo-lightbox.css">
	<link rel="stylesheet" href="css/nivo_themes/default/default.css">

	<!-- Owl Carousel CSS
   ================================================== -->
   	<link rel="stylesheet" href="css/owl.theme.css">
	<link rel="stylesheet" href="css/owl.carousel.css">

	<!-- BxSlider CSS
   ================================================== -->
   	<link rel="stylesheet" href="css/bxslider.css">

   	<!-- Main CSS
   	================================================== -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Google web font
   ================================================== -->
	<link href='https://fonts.googleapis.com/css?family=Raleway:700' rel='stylesheet' type='text/css'>
	
</head>

<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">


<!-- Preloader section
================================================== -->
<section  class="preloader">

	<div class="sk-rotating-plane"></div>

</section>


<!-- Navigation section
================================================== -->



<!-- Homepage section
================================================== -->

<form action="" method="post">
            <input type="text-area" name="mess">
            <input type ="submit" name="submit" value="submit">
</form>
</body>

<!-- renter section
================================================== -->
<!-- Javascript 
================================================== -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/nivo-lightbox.min.js"></script>
<script src="js/jquery.easing-1.3.js"></script>
<script src="js/plugins.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>




















<?php
include 'session.php';

// error_reporting(E_ERROR | E_PARSE);
include("config.php");


$log_id= $_SESSION['log_id'];
$sql = "SELECT * FROM `renter` WHERE log_id='$log_id'";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
$sql1 = "SELECT * FROM `login` WHERE log_id='$log_id'";
$result1 = $conn->query($sql1);
$row1 = $result1->fetch_assoc();
$usertype=$row1['usertype'];


?>
<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<title>Adventure Bootstrap Template</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--

Template 2078 Adventure

http://www.tooplate.com/view/2078-adventure

-->
	<!-- Bootstrap CSS
   ================================================== -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="css/animate.min.css">

	<!-- Font Icons
   ================================================== -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/et-line-font.css">

	<!-- Nivo Lightbox CSS
   ================================================== -->
	<link rel="stylesheet" href="css/nivo-lightbox.css">
	<link rel="stylesheet" href="css/nivo_themes/default/default.css">

	<!-- Owl Carousel CSS
   ================================================== -->
   	<link rel="stylesheet" href="css/owl.theme.css">
	<link rel="stylesheet" href="css/owl.carousel.css">

	<!-- BxSlider CSS
   ================================================== -->
   	<link rel="stylesheet" href="css/bxslider.css">

   	<!-- Main CSS
   	================================================== -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Google web font
   ================================================== -->
	<link href='https://fonts.googleapis.com/css?family=Raleway:700' rel='stylesheet' type='text/css'>
	
</head>

<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">


<!-- Preloader section
================================================== -->
<section  class="preloader">

	<div class="sk-rotating-plane"></div>

</section>

<section id="portfolio" class="parallax-section">
	<div class="container">
		<div class="row">
			

			<!-- Section title
			================================================== -->
			<center><h1 class="heading color-black">profile</h1></center>

			<script>
                function validate()
                {
					var f=document.getElementById("fname").value;
					var l=document.getElementById("lname").value;
					var s=/^[a-zA-Z]+$/;
					if(f!="" && s.test(f)==false){
						
						document.getElementById('ms').style.display = "block";
						document.getElementById('ms').innerHTML = "Invalid Fname";
						return false;
					}
					else{
						document.getElementById('ms').style.display = "none";
					}
					if(l!="" && s.test(l)==false){
						
						document.getElementById('ms1').style.display = "block";
						document.getElementById('ms1').innerHTML = "Invalid Lname";
						return false;
					}
					else{
						document.getElementById('ms1').style.display = "none";
					}
						
					var a=document.getElementById("email").value;
					var st=/^[\w\+\'\.-]+@[\w\'\.-]+\.[a-zA-Z]{2,}$/;
					if(a!="" && st.test(a)==false){
						
						document.getElementById('message').style.display = "block";
						document.getElementById('message').innerHTML = "Invalid Email id";
						return false;
					}
					else{
						document.getElementById('message').style.display = "none";
					}

					var ph = document.getElementById("phn").value;
					var expr = /^[6-9]\d{9}$/;
					if(expr!="" && expr.test(ph)==false){
						document.getElementById('msg2').style.display = "block";
						document.getElementById('msg2').innerHTML = "Invalid Phone number";
						return false;
								}
								else{
						document.getElementById('msg2').style.display = "none";
					}
							}
                </script>
			<form action="update-conn.php" method="POST" name="cusform" class="wow fadeInUp" data-wow-delay="0.6s" onsubmit="return validate()">
				
				<div class="col-md-8 col-sm-6">
					
				

<label for 
			  <input type="text" class="form-control" placeholder="fName" name="fname"  id="fname" onblur="return validate()" onKeyUp="return validate()" required pattern="[A-Za-z_]+" value="<?php echo $row['fname']; ?>"><br>
			  <label class="message text-danger" id="ms" style="font-size: 16px"></label>
			<input type="text" class="form-control" placeholder="lName" name="lname"  id="lname" onblur="return validate()" onKeyUp="return validate()"  required pattern="[A-Za-z_]+" value="<?php echo $row['lname']; ?>"><br>
			<label class="message text-danger" id="ms1"  ></label>
			<input type="email" class="form-control" placeholder="Email" name="email" id="email" onblur="return validate()" onKeyUp="return validate()" value="<?php echo $row['email']; ?>"  disabled><br>
			<label class="message text-danger" id="message"></label>
			<input type="int" class="form-control" placeholder="Phone number" name="phone" id="phn" onblur="return validate()" onKeyUp="return validate()" required minlength="10" maxlength="10" value="<?php echo $row['phone']; ?>" required><br>
			<label class="message text-danger" id="msg2"></label>
			<input type="text area" class="form-control" placeholder="Address" name="addresss" value="<?php echo $row['addresss']; ?>" required><br> 
			<input type="text" class="form-control" placeholder="place" name="place" value="<?php echo $row['place']; ?>" required><br> 
			<input type="text" class="form-control" placeholder="User id" name="username" value="<?php echo $row1['username']; ?>" disabled><br>
			<input type="password" class="form-control" placeholder="password" name="passwd" value="<?php echo $row1['passwd']; ?>" required><br> 
			<input type="submit" class="form-control" value="change" name="submit">
				</div>
			</form>


			<!-- Work Owl Carousel section
			================================================== -->
			

			<a href="renter-home.php" >
                        <button>back</button></a>

			<br><br><br><br><br><br><br><br>

		</div>
	</div>
</section>	

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/nivo-lightbox.min.js"></script>
<script src="js/jquery.easing-1.3.js"></script>
<script src="js/plugins.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>

