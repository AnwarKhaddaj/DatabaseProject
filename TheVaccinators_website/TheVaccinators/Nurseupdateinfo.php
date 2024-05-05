<!DOCTYPE html>
<html>
<title>Update Patients' info results</title>
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
         $Brand=$_REQUEST['Brand'];
         $Date1=$_REQUEST['Date1'];
         $Date2=$_REQUEST['Date2'];
         
         echo "<h3> " ; 
         echo "Updated successfully.";
        
         $sql ="INSERT INTO Vaccine_operation_dates VALUES('$Brand','$Date1','$Date2');INSERT INTO Vaccine_operation VALUES('$ID','6635','$Brand','$Date1','0','0');";
          
        mysqli_multi_query($conn,$sql);  

        // Close connection
        mysqli_close($conn);
        ?>
    </center>
</body>
</html>
