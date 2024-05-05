<!DOCTYPE html>
<html>
<head>
	<title>Vaccine Registration</title>
</head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<form class="w3-container w3-card-4" action="vaccineregisterinput(notrun).php" method="post">
  <h2 class="w3-text-blue">Vaccine Registration Form</h2>
  <p>      
  <label class="w3-text-blue"><b>ID</b></label>
  <input class="w3-input w3-border" name="ID" type="text">
  </p>
  <p>      
  <label class="w3-text-blue"><b>Gender</b></label>
  <!-- <input class="w3-input w3-border" name="Gender" type="text"></p> -->
   
  <p>
  <input class="w3-radio" type="radio" name="Gender" value="Male">
  <label>Male</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Gender" value="Female">
  <label>Female</label></p>
</p>

  <p>      
  <label class="w3-text-blue"><b>Date of birth(YYYY-MM-DD)</b></label>
  <input class="w3-input w3-border" name="Date_of_birth" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>First name</b></label>
  <input class="w3-input w3-border" name="First_name" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Middle Name</b></label>
  <input class="w3-input w3-border" name="Middle_name" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Last Name</b></label>
  <input class="w3-input w3-border" name="Last_name" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Street</b></label>
  <input class="w3-input w3-border" name="Street" type="text"></p>
    <p>      
  <label class="w3-text-blue"><b>Area</b></label>
  <input class="w3-input w3-border" name="Area" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>District</b></label>
  <input class="w3-input w3-border" name="District" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Phone number</b></label>
  <input class="w3-input w3-border" name="Person_Phone_number" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Home Phone number (insert 0 if not available)</b></label>
  <input class="w3-input w3-border" name="Person_Phone_number2" type="text"></p>

  <p>      
  <label class="w3-text-blue"><b>Vaccine Preference</b></label>
   
  <p>
  <input class="w3-radio" type="radio" name="Vaccine_preference" value="Pfizer-BioNTech">
  <label>Pfizer-BioNTech</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Vaccine_preference" value="Moderna">
  <label>Moderna</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Vaccine_preference" value="Astrazeneca-Oxford">
  <label>Astrazeneca-Oxford</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Vaccine_preference" value="Russian Gamaleya Sputnik 5">
  <label>Russian Gamaleya Sputnik 5</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Vaccine_preference" value="Johnson & Johnson Janssen">
  <label>Johnson & Johnson Janssen</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Vaccine_preference" value="Sinopharm Chinese">
  <label>Sinopharm Chinese</label></p>

</p>

 <p>      
  <label class="w3-text-blue"><b>Allergies</b></label>
  <input class="w3-input w3-border" name="Allergies" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Covid positive</b></label>
  <p>
  <input class="w3-radio" type="radio" name="Covid_positive" value="1" >
  <label>True</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Covid_positive" value="0">
  <label>False</label></p>
</p>

  <p>      
  <label class="w3-text-blue"><b>Health condition</b></label>
  <input class="w3-input w3-border" name="Health_condition" type="text"><br></br></p>
  <p class="w3-text-blue"><b>Emergency contact information: </b><br></br> 
  <p>    
  <label class="w3-text-blue"><b>First Name</b></label>
  <input class="w3-input w3-border" name="Emergency_First_name" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Middle Name</b></label>
  <input class="w3-input w3-border" name="Emergency_Middle_name" type="text"></p>
 <p>      
  <label class="w3-text-blue"><b>Last Name</b></label>
  <input class="w3-input w3-border" name="Emergency_Last_name" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Phone Number</b></label>
  <input class="w3-input w3-border" name="Emergency_Phone_number" type="int"></p>
 <p>      
  <label class="w3-text-blue"><b>Relationship</b></label>
  <input class="w3-input w3-border" name="Relationship" type="text"><br></br></p>
</p>

  <p class="w3-text-blue"><b>Emergency contact 2 information (optional): </b><br></br>
  <p>      
  <label class="w3-text-blue"><b>First Name</b></label>
  <input class="w3-input w3-border" name="Emergency_First_name2" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Middle Name</b></label>
  <input class="w3-input w3-border" name="Emergency_Middle_name2" type="text"></p>
 <p>      
  <label class="w3-text-blue"><b>Last Name</b></label>
  <input class="w3-input w3-border" name="Emergency_Last_name2" type="text"></p>
  <p>      
  <label class="w3-text-blue"><b>Phone Number</b></label>
  <input class="w3-input w3-border" name="Emergency_Phone_number2" type="text"></p>
 <p>      
  <label class="w3-text-blue"><b>Relationship</b></label>
  <input class="w3-input w3-border" name="Relationship2" type="text"><br></br></p>
</p>

  <button class="w3-btn w3-blue">Register</button>
</form>

</body>
</html>