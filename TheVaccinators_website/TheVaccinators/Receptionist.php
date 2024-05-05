<!DOCTYPE html>
<html>
<head>

  <title> Receptionist </title>

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
    <a href=http://localhost//TheVaccinators/Vaccinationcenteremployees.php class="active">Home</a>
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

<h1 style="font-family:courier;"letter-spacing><center>Receptionists Section<br></br></center></h1> 


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<form class="w3-container w3-card-4" action="ReceptionistUpdateOutput.php" method="post">
  <h2 class="w3-text-red">Update Patient's vaccination status</h2>
  <p>      
  <label class="w3-text-red"><b>ID*</b></label>
  <input class="w3-input w3-border" name="ID" type="text">
  </p>
  <p>      
  <label class="w3-text-red"><b>Dose 1 taken*</b></label>
  <p>
  <input class="w3-radio" type="radio" name="Dose1_taken" value="1" >
  <label>True</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Dose1_taken" value="0">
  <label>False</label></p>
</p>

<p>      
  <label class="w3-text-red"><b>Dose 2 taken*</b></label>
  <p>
  <input class="w3-radio" type="radio" name="Dose2_taken" value="1" >
  <label>True</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Dose2_taken" value="0">
  <label>False</label></p>
</p>

  <button class="w3-btn w3-red">Submit</button>
</form>

</body>

<p style="font-family:courier;"letter-spacing><center> <b><br></br>Vaccination Operation Dates</center></b></p>
</body>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style></head>
<body>

<?php
  $conn=mysqli_connect("localhost","Receptionist","Receptionist2963","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

  
$sql = "SELECT * FROM Patientsinfoforreceptionist natural join Patientupdate";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Name</th><th>Phone Number</th><th>Brand</th><th>Date 1</th><th>Date 2</th><th>Dose 1 taken</th><th>Dose 2 taken</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["ID"]. "</td><td>" 
        .$row["Name"]."</td><td>"
        .$row["Phone_number"]."</td><td>"
        .$row["Brand"]."</td><td>"
        .$row["date1"]."</td><td>"
        .$row["date2"].  "</td><td>" 
        .$row["Dose1_taken"].  "</td><td>" 
        .$row["Dose2_taken"].  "</td></tr>" 
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
