
<!DOCTYPE html>
<html>
<head>

  <title> Doctors </title>

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

<h1 style="font-family:courier;"letter-spacing><center>Doctors Section</center></h1> 

<p style="font-family:courier;"letter-spacing><center> <b>Patients symptoms</center></b></p>
</body>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>

<?php
  $conn=mysqli_connect("localhost","Doctor","VaccinatingDoctors2021","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }
  
$sql = "SELECT * FROM EvaluationFormDoctors";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>Name</th><th>Vaccine Brand</th><th>Dose 1 taken</th><th>Dose 2 taken</th><th>Symptoms</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["Name"]. "</td><td>" 
        .$row["Brand"]."</td><td>"
        .$row["Dose1_taken"]."</td><td>"
        .$row["Dose2_taken"]."</td><td>"
        .$row["Symptoms"].  "</td></tr>" 
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
