<!DOCTYPE html>
<html>
<title>Vaccine Registration Result</title>
<body>
    <center>
        <?php
  
        // servername => localhost
        // username => root
        // password => empty
        // database name => staff
        $conn = mysqli_connect("localhost", "root", "Pass1234", "Vaccinationcenter");
          
        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. " 
                . mysqli_connect_error());
        }
             
        // Taking all values from the form data(input)
       
         $Street =  $_REQUEST['Street'];
   		 $Area =  $_REQUEST['Area'];
         $District =  $_REQUEST['District'];
             
        // Taking all values from the form data(input)
         
         $ID =  $_REQUEST['ID'];
         $Gender =  $_REQUEST['Gender'];
         $Date_of_birth =  $_REQUEST['Date_of_birth'];
         $First_name =  $_REQUEST['First_name'];
         $Middle_name =  $_REQUEST['Middle_name'];
         $Last_name =  $_REQUEST['Last_name'];

         $Person_Phone_number =  $_REQUEST['Person_Phone_number'];

         $Person_Phone_number2 =  $_REQUEST['Person_Phone_number2'];

         $Vaccine_preference =  $_REQUEST['Vaccine_preference'];
         $Allergies =  $_REQUEST['Allergies'];
         $Covid_positive =  $_REQUEST['Covid_positive'];
         $Health_condition =  $_REQUEST['Health_condition'];

         $Emergency_First_name =  $_REQUEST['Emergency_First_name'];
         $Emergency_Middle_name =  $_REQUEST['Emergency_Middle_name'];
         $Emergency_Last_name =  $_REQUEST['Emergency_Last_name'];
         $Emergency_Phone_number =$_REQUEST['Emergency_Phone_number'];
         $Relationship =  $_REQUEST['Relationship'];

         $Emergency_First_name2 =  $_REQUEST['Emergency_First_name2'];
         $Emergency_Middle_name2 =  $_REQUEST['Emergency_Middle_name2'];
         $Emergency_Last_name2 =  $_REQUEST['Emergency_Last_name2'];
         $Emergency_Phone_number2 =  $_REQUEST['Emergency_Phone_number2'];
         $Relationship2 =  $_REQUEST['Relationship2'];
         
     $sql1 ="INSERT INTO Street_Address VALUES ('$Street','$Area','$District');INSERT INTO Person VALUES ('$ID','$Gender','$Date_of_birth','$First_name','$Middle_name','$Last_name','$Street');INSERT INTO Person_Phone_number VALUES ('$ID','$Person_Phone_number');INSERT INTO Person_Phone_number VALUES ('$ID','$Person_Phone_number2');INSERT INTO Patient  VALUES ('$ID','$Vaccine_preference','$Allergies','$Covid_positive','$Health_condition',null);INSERT INTO Emergency_contact_name VALUES ('$Emergency_Phone_number','$Emergency_First_name','$Emergency_Middle_name','$Emergency_Last_name');INSERT INTO Emergency_contact VALUES ('$ID','$Emergency_Phone_number','$Relationship');INSERT INTO Emergency_contact_name VALUES ('$Emergency_Phone_number2','$Emergency_First_name2','$Emergency_Middle_name2','$Emergency_Last_name2');INSERT INTO Emergency_contact VALUES ('$ID','$Emergency_Phone_number2','$Relationship2');";

        mysqli_multi_query($conn,$sql1);

            echo "<h3>You have successfully registered. Thank you!" 
                . " You are one step away from getting vaccinated." 
                . " Kindly find the evaluation form on this site after you take the vaccine. </h3>"; 
       
          mysqli_close($conn);
        ?>
    </center>
</body>
</html>