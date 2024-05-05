
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
    <a href="http://localhost//TheVaccinators/Vaccinationcenteremployees.php " class="active">Home</a>
  </div>
  
  <!-- Left-aligned links (default) -->
  
  <a href="http://localhost/TheVaccinators/ForEmployees.php"> Employees info</a>
  
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
	<title>Employees</title>

<div class="bg-image"></div>

<div class="bg-text">
  
 
<p> <a href="http://localhost/TheVaccinators/Nurse.php">
<img <img style="float:left; margin-left:0px; padding-left:0px;
 border="0" alt="Nurse" src="https://previews.123rf.com/images/tharakorn/tharakorn1903/tharakorn190300015/124326735-cartoon-woman-doctor-or-nurse-in-white-uniform-holding-a-clipboard-sawadee-smiling-female-nursing-st.jpg" width="200" height="200" title="Nurse info"/>
</a>
</p>

<p> <a href="http://localhost//TheVaccinators/Doctor.php">
<img <img style="float:left; margin-left:20px; padding-left:20px;
 border="0"  border="0" alt="Doctor" src="https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg" width="220" height="200" title="Doctor info"/>
</a>
</p>

<p> <a href="http://localhost//TheVaccinators/SocialMediaSpecialist.php">
<img <img style="float:left; margin-left:20px; padding-left:20px;
 border="0"  border="0" alt="Social Media Specialist" src="https://img.favpng.com/9/6/7/social-media-management-social-media-manager-online-community-manager-png-favpng-i7CZq6Kdfgqcz9tfFAnt2BQcR.jpg" width="220" height="200" title="Social Media Specialist info"/>
</a>
</p>

<p> <a href="http://localhost//TheVaccinators/Receptionist.php">
<img <img style="float:left; margin-left:20px; padding-left:20px;
 border="0"  border="0" alt="Receptionist" src="https://img.favpng.com/10/9/10/business-office-wedding-reception-cartoon-organization-png-favpng-JXfmsCSUrtiyL3G3ybqMV27gh.jpg" width="220" height="200" title="Receptionist info"/>
</a>
</p>

<p> <a href="http://localhost//TheVaccinators/Managers.php">
<img <img style="float:left; margin-left:20px; padding-left:20px;
 border="0"  border="0" alt="Manager" src="https://i.pinimg.com/originals/87/b0/d8/87b0d8b11818e2c424b768f54cb1e308.jpg" width="220" height="200" title="Manager info"/>
</a>
</p>

</body>
</html>
