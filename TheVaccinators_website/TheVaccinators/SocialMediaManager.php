<!DOCTYPE html>
<html>
<head>

  <title> Social Media Manager </title>

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
 
  <a href="http://localhost/TheVaccinators/ForEmployees.php"> Employees info</a>
  
  <!-- Right-aligned links -->
  <div class="topnav-right">
    <a href="http://localhost//TheVaccinators/SalaryCalculator.php">Salary Calculator</a>
    
  </div>
  
</div>

<div style="padding-left:16px">

  </div>

<h1 style="font-family:courier;"letter-spacing><center>Welcome Margo Anis Khoury</center></h1> 


<p style="font-family:courier;"letter-spacing><center> <b>Social Media Specialists info</center></b></p>
</body>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style></head>
<body>

<?php
  $conn=mysqli_connect("localhost","MargoAnisKhoury","Margo5896","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

  
$sql = "SELECT * FROM socialmediaemployees";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Name</th><th>Gender</th><th>Date of birth</th><th>Street</th><th>Department Name</th><th>Social media application</th><th>Salary per hour</th><th>Number of hours</th></tr>";
    // output data of each row
     while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["ID"]. "</td><td>" . $row["First_name"]. " " . $row["Middle_name"]." ".$row["Last_name"]."</td><td>" .$row["Gender"]."</td><td>"
        .$row["Date_of_birth"]."</td><td>"
         .$row["Street"]."</td><td>"
        .$row["Dept_name"]."</td><td>"
        .$row["Social_media_application"]."</td><td>"
        .$row["Salary_per_hour"]."</td><td>"
        .$row["number_of_hours"]."</td><tr>" 
        
        ;
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();

?>

</body>
</html>
