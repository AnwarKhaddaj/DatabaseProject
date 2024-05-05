<!DOCTYPE html>
<html>
<head>
	<title>Evaluation Form</title>
</head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<form class="w3-container w3-card-4" action="EvaluationFormResult(notrun).php" method="post">
  <h2 class="w3-text-blue">Evaluation Form</h2>
  <p>      
  <label class="w3-text-blue"><b>ID*</b></label>
  <input class="w3-input w3-border" name="ID" type="text">
  </p>
  <p>      
  <label class="w3-text-blue"><b>Rating*</b></label>
   
  <p>
  <input class="w3-radio" type="radio" name="Rating" value="1">
  <label>1</label></p>
  <p>
  <input class="w3-radio" type="radio" name="Rating" value="2">
  <label>2</label></p>
  <input class="w3-radio" type="radio" name="Rating" value="3">
  <label>3</label></p>
  <input class="w3-radio" type="radio" name="Rating" value="4">
  <label>4</label></p>
  <input class="w3-radio" type="radio" name="Rating" value="5">
  <label>5</label></p>
</p>

  <p>     
   <p>      
  <label class="w3-text-blue"><b>Symptoms*</b></label>
  <input class="w3-input w3-border" name="Symptoms" type="text"></p> 
  <label class="w3-text-blue"><b>Reason of vaccination*</b></label>
  <input class="w3-input w3-border" name="Reason_of_vaccination" type="text"></p>
 
 

  <button class="w3-btn w3-blue">Submit</button>
</form>

</body>
</html>

