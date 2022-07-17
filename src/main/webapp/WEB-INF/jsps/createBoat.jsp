<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Create Boat</title>
 <!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet" />
 <!--<link href="css/styleDisplay.css" rel="stylesheet" />-->

</head>
<body>

<header >
<div class= "container">
  <div class="mx-auto text-center"> 
  <h1 class="mb-4">${msg}</h1>
  </div>
</header>
<div class="container col-12"> 
<div class="container-fluid">
<div class="row justify-content-center no-gutters">
<div class="col-lg-7">  
<div class="card">
<div class="card-body1">
<div class="row">
<h5 class="mb-4">
<form action="saveBoat" method="post">
<pre>



  Boat Type:
			Sport           	<input class="btn" type="radio" name="bType" value="1.0f"/>
			Yacht           	<input class="btn" type="radio" name="bType" value="2.0f"/>
			Trawler        		<input class="btn" type="radio" name="bType" value="3.0f"/>
			Cabin Boat     		<input class="btn" type="radio" name="bType" value="4.0f"/>
			Flybridge      		<input class="btn" type="radio" name="bType" value="5.0f"/>
			Fishing	       		<input class="btn" type="radio" name="bType" value="6.0f"/>
			Other          		<input class="btn" type="radio" name="bType" value="0.0f"/>

  Year Built:
			2021        		<input class="btn" type="radio" name="yearBuilt" value="2021.0"/>
			2020 to 2015 		<input class="btn" type="radio" name="yearBuilt" value="2017.5f"/>
			2015 to 2010 		<input class="btn" type="radio" name="yearBuilt" value="2012.5f"/>
			2010 to 2005 		<input class="btn" type="radio" name="yearBuilt" value="2007.5f"/>
			Older then 2005 	<input class="btn" type="radio" name="yearBuilt" value="2000.0f"/>

  Boat Length:
			1m to 4m       		<input class="btn" type="radio" name="length" value="2.5f"/>
			4m to 8m       		<input class="btn" type="radio" name="length" value="6.0f"/>
			8m to 12m      		<input class="btn" type="radio" name="length" value="10.0f"/>
			12m to 16m     		<input class="btn" type="radio" name="length" value="14.0f"/>
			16m to 20m     		<input class="btn" type="radio" name="length" value="18.0f"/>
			20m to 30m     		<input class="btn" type="radio" name="length" value="25.0f"/>
			30m to 40m     		<input class="btn" type="radio" name="length" value="35.0f"/>
			longer then 40m	 	<input class="btn" type="radio" name="length" value="50.0f"/>


  Boat Width:
			1m to 2m      		<input class="btn" type="radio" name="width" value="1.5f"/>
			2m to 4m      		<input class="btn" type="radio" name="width" value="3.0f"/>
			4m to 8m      		<input class="btn" type="radio" name="width" value="6.0f"/>
			8m to 12m     		<input class="btn" type="radio" name="width" value="10.0f"/>
			12m to 16m    		<input class="btn" type="radio" name="width" value="14.0f"/>
			18m to 20m    		<input class="btn" type="radio" name="width" value="19.0f"/>
			wider then 20m 		<input class="btn" type="radio" name="width" value="20.0f"/>

  Fuel Type: 
			No fuel        		<input class="btn" type="radio" name="fType" value="0.0f"/>
			Gas                	<input class="btn" type="radio" name="fType" value="1.0f"/>
			Diesel          	<input class="btn" type="radio" name="fType" value="4.0f"/>
			Unleaded      		<input class="btn" type="radio" name="fType" value="3.0f"/>
			Hybrid          	<input class="btn" type="radio" name="fType" value="2.0f"/>
			Electric       		<input class="btn" type="radio" name="fType" value="5.0f"/>

		
                                <input class="btn btn-secondary" type="submit" value="Save"/>				
<!-- Predicted Price: <input type="radio" name=""/> -->

</pre>	
</form>
</h5>
</div>	
</div>			
</div>				
</div>	

		
<div class="col-lg-5 mx-auto" > 				
<h3 class="mb-4"><a class="btn btn-secondary" href="displayBoats">View All</a>	</h3>
<div class="card">
<p>
<h4>Model creation</h4><h5 class="mb-4">
Previously unused dataset from Kaggle was used.
Dataset was prepared using Python with help of Jupyter notebooks and Google Colab. By using m2cgen Python library, most suitable Linear Regression model was  converted into Java code.
Details of dataset preparation and model training can be found  here:<br>
<a class="btn"  href="https://raw.githubusercontent.com/mirokr/boats/main/boat_dataset_UTF8.csv" role="button" target="_blank">Raw Data</a>
<a class="btn"  href="https://github.com/mirokr/boats/blob/main/1_NCI_Project_raw_boats.ipynb/" role="button" target="_blank">Data Preparation</a>
<a class="btn" href="https://github.com/mirokr/boats/blob/main/2_NCI_final_train_test.ipynb/" role="button" target="_blank">Train Model</a>
<a class="btn" href="https://github.com/mirokr/boats/blob/main/3_NCI_Project_Auto_Sklearn.ipynb/" role="button" target="_blank">Experimentation</a>
</h5>
<h4>Spring Boot</h4><h5 class="mb-4"><br>
Code for main app and web service can be found here<br>******.
</h5>
<h4>Deployment</h4><h5 class="mb-4">
Project is deployed directly on AWS (free) instance and it is using AWS MySQL RDB.
</h5> 
</p>
</div>
</div>
</div>	
</div>	
</div>
<a class="btn btn-primary" href="mailto:mkrpeta@gmail.com">Contact</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>		

</body>
</html>