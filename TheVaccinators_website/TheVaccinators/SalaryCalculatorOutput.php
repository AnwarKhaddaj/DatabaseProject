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
             
        // Taking ID value from the form data(input)
       
         $ID =  $_REQUEST['ID'];
         $Holidays=$_REQUEST['Holidays'];
         echo "<h3>Your expected salary this month will be: " ;  
        //echo " Your Salary is:";
        
         $sql ="SELECT (Salary_per_hour * number_of_hours *(22-$Holidays))as Salary 
          FROM Employee
          where ID= $ID;";
          $result=$conn->query($sql);
      while($row=$result->fetch_row()){
            echo "$row[0]";
}
echo "$ .";
        mysqli_multi_query($conn,$sql);

            
            
        // Close connection
        mysqli_close($conn);
        ?>
    </center>
</body>
</html>