
<!DOCTYPE html>
<html>
<head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  position: relative;
  overflow: hidden;
  background-color: red;
}

.topnav a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: white;
  color: grey;
}

.topnav a.active {
  background-color: babyblue;
  color: black;
}

.topnav-centered a {
  float: none;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.topnav-right {
  float: right;
}

/* Responsive navigation menu (for mobile devices) */ 
@media screen and (max-width: 600px) { .topnav a, .topnav-right { float: none; display: block; }
  
  .topnav-centered a {
    position: relative;
    top: 0;
    left: 0;
    transform: none;
  }
}

</style>
</head>
<body>


<!-- Top navigation -->
<div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a href="http://localhost//TheVaccinators/Vaccinationcenteremployees.php" class="active">Home</a>
  </div>
  
  <!-- Left-aligned links (default) -->
  
  <a href="http://localhost/TheVaccinators/ForEmployees.php">Employees info</a>
  
  <!-- Right-aligned links -->
  <div class="topnav-right">
    <a href="http://localhost//TheVaccinators/SalaryCalculator.php">Salary Calculator</a>
    
  </div>
  
</div>

<div style="padding-left:16px">

  </div>

</body>
</html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("https://www.cdc.gov/flu/images/prevent/elder-woman-flu-shot-600x400-1.jpg");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
</style>
</head>
<body>
	<title>Managers</title>

<div class="bg-image"></div>

<div class="bg-text">
  
 
<p> <a href="http://localhost//TheVaccinators/AdministrationManager.php">
<img <img style="float:left; margin-left:20px; padding-left:20px;
 border="0" alt="Administration Manager" src="https://www.gasrecruit.com/wp-content/uploads/2018/05/admin-manager.png" width="220" height="200" title="Administration Manager"/>
</a>
</p>

<p> <a href="http://localhost//TheVaccinators/MedicalManager.php">
<img <img style="float:left; margin-left:70px; padding-left:40px;
 border="0"  border="0" alt="Medical Manager" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeW5KQPZI1g2ZymAq2dTnvb9zOMQNOPb6N8Q&usqp=CAU" width="220" height="200" title="Medical Manager"/>
</a>
</p>

<p> <a href="http://localhost//TheVaccinators/SocialMediaManager.php">
<img <img style="float:left; margin-left:70px; padding-left:40px;
 border="0"  border="0" alt="Social Media Manager" src="https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/128796712/original/335e0c21714d82c566de1d992e1ea8bba780da27/be-your-community-and-social-media-manager.jpg" width="220" height="200" title="Social Media Manager"/>
</a>
</p>

<p> <a href="http://localhost//TheVaccinators/ITManager.php">
<img <img style="float:left; margin-left:70px; padding-left:40px;
 border="0"  border="0" alt="IT Manager" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4b7aSW9FZc57f0QyEeYBeZZYUqT0z_hQrhA&usqp=CAU" width="220" height="200" title="IT Manager"/>
</a>
</p>

</body>
</html>
