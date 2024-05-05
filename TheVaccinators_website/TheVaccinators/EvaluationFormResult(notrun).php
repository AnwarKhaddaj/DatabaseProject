<!DOCTYPE html>
<html>
<title>Evaluation Form Result</title>
<body>
    <center>
        <?php
  
        $conn = mysqli_connect("localhost", "root", "Pass1234", "Vaccinationcenter");
          
        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. " 
                . mysqli_connect_error());
        }
             
        // Taking all values from the form data(input)
       
         $ID =  $_REQUEST['ID'];
         $Rating =  $_REQUEST['Rating'];
         $Symptoms =  $_REQUEST['Symptoms'];
         $Reason_of_vaccination =  $_REQUEST['Reason_of_vaccination'];
        
        
         $sql ="INSERT INTO Evaluation_form VALUES ('$ID','$Symptoms','$Reason_of_vaccination','$Rating');";

        mysqli_multi_query($conn,$sql);

            echo "<h3>You have successfully filled the evaluation form. Thank you for your feedback!" ;    
          
        // Close connection
        mysqli_close($conn);
        ?>
    </center>
</body>
</html>