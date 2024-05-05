<!DOCTYPE html>
<html>
<title>Update Patients' Results</title>
<body>
    <center>
        <?php
  
        $conn = mysqli_connect("localhost", "root", "Pass1234", "Vaccinationcenter");
          
        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. " 
                . mysqli_connect_error());
        }
             
        // Taking ID value from the form data(input)
       
         $ID =  $_REQUEST['ID'];
         $Dose1_taken=$_REQUEST['Dose1_taken'];
         $Dose2_taken=$_REQUEST['Dose2_taken'];

         echo "<h3> " ;  
         echo "Updated successfully.";
        
         $sql ="UPDATE Vaccine_operation
          set Dose1_taken=$Dose1_taken
           where ID= $ID;
           UPDATE Vaccine_operation
          set Dose2_taken=$Dose2_taken
           where ID= $ID;";
          
        mysqli_multi_query($conn,$sql);  
            
        // Close connection
        mysqli_close($conn);
        ?>
    </center>
</body>
</html>