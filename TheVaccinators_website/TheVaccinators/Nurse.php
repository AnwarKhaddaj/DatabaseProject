
<!DOCTYPE html>
<html>
<head>

  <title> Nurses </title>

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


<h1 style="font-family:courier;"letter-spacing><center>Nurses Section</center></h1> 



<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<form class="w3-container w3-card-4" action="Nurseupdateinfo.php" method="post">
  <h2 class="w3-text-red">Update Patient's vaccination info</h2>
  <p>      
  <label class="w3-text-red"><b>ID*</b></label>
  <input class="w3-input w3-border" name="ID" type="text">
  </p>
  
  <p>      
  <label class="w3-text-red"><b>Brand used*</b></label>
   
  <p>
  <input class="w3-radio" type="radio" name="Brand" value="Pfizer-BioNTech">
  <label>Pfizer-BioNTech</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Brand" value="Moderna">
  <label>Moderna</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Brand" value="Astrazeneca-Oxford">
  <label>Astrazeneca-Oxford</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Brand" value="Russian Gamaleya Sputnik 5">
  <label>Russian Gamaleya Sputnik 5</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Brand" value="Johnson & Johnson Janssen">
  <label>Johnson & Johnson Janssen</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Brand" value="Sinopharm Chinese">
  <label>Sinopharm Chinese</label></p>

</p>

<p>      
  <label class="w3-text-red"><b>Date 1(YYYY-MM-DD HH:MM:SS)*</b></label>
  <input class="w3-input w3-border" name="Date1" type="text">
  </p>

  <p>      
  <label class="w3-text-red"><b>Date 2(YYYY-MM-DD HH:MM:SS)*</b></label>
  <input class="w3-input w3-border" name="Date2" type="text">
  </p>

  <button class="w3-btn w3-red">Submit</button>
</form>

</body>



<p style="font-family:courier;"letter-spacing><center> <b>Patients info </center></b></p>
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
  $conn=mysqli_connect("localhost","Nurse","Nurse1234","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }
  
$sql = "SELECT * FROM Patientsinfo";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Name</th><th>Gender</th><th>Date of birth</th><th>Covid positive</th><th>Health condition</th><th>Allergies</th><th>Vaccine preference</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["ID"]. "</td><td>" . $row["First_name"]. " " . $row["Middle_name"]." ".$row["Last_name"]."</td><td>" .$row["Gender"]."</td><td>"
        .$row["Date_of_birth"]."</td><td>"
        .$row["Covid_positive"]."</td><td>"
        .$row["Health_condition"]."</td><td>"
        .$row["Allergies"]."</td><td>" 
        . $row["Vaccine_preference"].  "</td></tr>" 
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
