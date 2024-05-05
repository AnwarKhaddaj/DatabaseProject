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
  background-color: powderblue;
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
  background-color: powderblue;
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
    <a href=http://localhost/TheVaccinators/Vaccinationcenter.php#search class="active">Home</a>
  </div>
  
  <!-- Left-aligned links (default) -->
  <a href="http://localhost//TheVaccinators/Statistics.php">Statistics</a>
  <a href="http://localhost/TheVaccinators/VaccineRegistration.php">Register</a>
  
  <!-- Right-aligned links -->
  <div class="topnav-right">
    <a href="http://localhost/TheVaccinators/EvaluationForm.php">Feedback</a>
    <a href="http://localhost//TheVaccinators/About%20the%20center.php">About</a>
  </div>
  
</div>

<div style="padding-left:16px">

  </div>

</body>


<head>
	<style>

	h1 {
  	color: black;
  	font-family: verdana;
 	font-size: 250%;
	}
	
	</style>


	<title>Statistics</title>
	<body style="background-color:white;">
	<h1 style="font-family:courier;"letter-spacing><center>Interesting Insights</center></h1>
	
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="container">
  
  <div class="w3-panel w3-yellow">
    <p>
      <?php
  $conn=mysqli_connect("localhost","SocialMediaSpecialist","SocialMediaapps22","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

echo "  Average Rating of the whole experience is: ";
$sql="Select avg(Rating) as AverageRating from EvaluationFormSocialMedia";
$result=$conn->query($sql);
while($row=$result->fetch_row()){
 echo "$row[0]";
}
echo "/5";
$conn->close();

?>
</p>
  </div>

  <div class="w3-panel w3-border">
    <p><?php
  $conn=mysqli_connect("localhost","root","Pass1234","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

echo " Ratio of people who showed up to take the first dose of the vaccine: ";
$sql="select (count(dose1_taken)/(select count(*) from Vaccine_Operation)) as ratio_of_showing_up
from Vaccine_Operation
where dose1_taken=true";
$result=$conn->query($sql);
while($row=$result->fetch_row()){
 echo "$row[0]";
}
echo "/1";

$conn->close();

?>
  
</p>
  </div>

  <div class="w3-panel w3-light-grey w3-border w3-round">
    <p>
    <?php
  $conn=mysqli_connect("localhost","root","Pass1234","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

echo " Only  ";
$sql="Select count(ID)
From Resides_In";
$result=$conn->query($sql);
while($row=$result->fetch_row()){
 echo "$row[0]";
}
echo " patients entered the emergency rooms.";

$conn->close();
?>
  
</p>
  </div>

  <div class="w3-panel w3-pale-blue w3-leftbar w3-border-blue">
    <p>
      <?php
  $conn=mysqli_connect("localhost","root","Pass1234","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

echo " Your favorite vaccine turned out to be  ";
$sql="
Select Vaccine_preference
From Patient
Group by (Vaccine_preference)
Having count(*)>= all (select count(*) from Patient Group by (Vaccine_preference))";
$result=$conn->query($sql);
while($row=$result->fetch_row()){
 echo "$row[0]";
}
$conn->close();
?>
</p>
  </div>

  <div class="w3-panel w3-pale-red w3-leftbar w3-rightbar w3-border-red">
    <p>
      <?php
  $conn=mysqli_connect("localhost","root","Pass1234","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

echo " Our doctor of the month is  ";
$sql="select concat(First_name,' ',Middle_name,' ',Last_name) as Name
from Vaccine_Operation join Person on (Doctor_ID=Person.ID)
Group by(Doctor_ID)
Having count(*)>= all (select count(*) from Vaccine_Operation Group by (Doctor_ID))";
$result=$conn->query($sql);
while($row=$result->fetch_row()){
 echo "$row[0]";
}
$conn->close();
?>
</p>
  </div>

  <div class="w3-panel w3-pale-yellow w3-topbar w3-bottombar w3-border-yellow">
    <p>
      <?php
  $conn=mysqli_connect("localhost","root","Pass1234","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

echo " Our nurse of the month is  ";
$sql="select concat(First_name,' ',Middle_name,' ',Last_name) as Name
from Employee natural join Person
where ID in (select ID from Nurse) and number_of_hours>=all(select number_of_hours from Employee where ID in(select ID from Nurse))";
$result=$conn->query($sql);
while($row=$result->fetch_row()){
 echo "$row[0]";
}
$conn->close();
?>
</p>
  </div>

  <div class="w3-panel w3-pale-green w3-bottombar w3-border-green w3-border">
    <p>
      <?php
  $conn=mysqli_connect("localhost","root","Pass1234","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

  
$sql = "Select Phase_number, count(*) as count
From Patient
Group by Phase_number";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>Phase number</th><th>Number of vaccinated people in this phase</th></tr>";
    // output data of each row
     while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["Phase_number"]. "</td><td>" 
        .$row["count"].  "</td></tr>" 
        ;
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();

?>
</p>
  </div>

  <div class="w3-panel w3-yellow w3-bottombar w3-border-amber">
    <p> 
      <?php
  $conn=mysqli_connect("localhost","root","Pass1234","Vaccinationcenter");

  if(mysqli_connect_errno())
  {
    echo "Database connection failed.";
  }

  
$sql = "Select Vaccine_Company_name,sum(Quantity) as q
From Requested_From
Group by Vaccine_Company_name
Having sum(Quantity)>=all (select sum(Quantity)
          From Requested_From
          Group by Vaccine_Company_name)";

$result = $conn->query($sql);
echo "The vaccine company with the most requested quantity of doses is";
if ($result->num_rows > 0) {
    echo "<table><tr><th></th><th></th></tr>";
    // output data of each row
     while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["Vaccine_Company_name"]. "</td><td>" 
        .$row["q"].  "</td></tr>" 
        ;
    }
    echo "</table>";
} else {
    echo "0 results";
}
$conn->close();

?>
    </p>
  </div>
</div>

</body>
</html>
