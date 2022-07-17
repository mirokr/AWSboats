<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
<%@page isELIgnored="false" %>

<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Update Boat</title>
 <!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet" />

</head>
<body>
<div class= "container">
<div class="container-fluid">
<div class="row justify-content-center no-gutters">
<div class="col-lg-7"> 
<div class="card">
<div class="card-body1">
<div class="row">
<h5 class="mb-4">
<form action="updateB" method="post">

<pre>
Id: <input type="text" name="id" value="${boat.id}" readonly/>
Boat Type: 
			Sport           <input class="btn" type="radio" name="bType" value="1.0f" ${boat.bType=='1.0f'?'checked':''}/>
			Yacht           <input class="btn" type="radio" name="bType" value="2.0f" ${boat.bType=='2.0f'?'checked':''}/>
			Trawler         <input class="btn" type="radio" name="bType" value="3.0f" ${boat.bType=='3.0f'?'checked':''}/>
			Cabin Boat      <input class="btn" type="radio" name="bType" value="4.0f" ${boat.bType=='4.0f'?'checked':''}/>
			Flybridge       <input class="btn" type="radio" name="bType" value="5.0f" ${boat.bType=='5.0f'?'checked':''}/>
			Fishing         <input class="btn" type="radio" name="bType" value="6.0f" ${boat.bType=='6.0f'?'checked':''}/>
			Other           <input class="btn" type="radio" name="bType" value="0.0f" ${boat.bType=='0.0f'?'checked':''}/>
Year Built: 
			2021            <input class="btn" type="radio" name="yearBuilt" value="2021.0f" ${boat.yearBuilt=='2021.0f'?'checked':''}/>
			2020 to 2015    <input class="btn" type="radio" name="yearBuilt" value="2017.5f" ${boat.yearBuilt=='2017.5f'?'checked':''}/>
			2015 to 2010    <input class="btn" type="radio" name="yearBuilt" value="2012.5f" ${boat.yearBuilt=='2012.5f'?'checked':''}/>
			2010 to 2005    <input class="btn" type="radio" name="yearBuilt" value="2007.5f" ${boat.yearBuilt=='2007.5f'?'checked':''}/>
			Older then 2005 <input class="btn" type="radio" name="yearBuilt" value="2000.0f" ${boat.yearBuilt=='2000.0f'?'checked':''}/>
Boat Length: 
			1m to 4m       	<input class="btn" type="radio" name="length" value="2.5f"  ${boat.length=='2.5f'?'checked':''}/>
			4m to 8m        <input class="btn" type="radio" name="length" value="6.0f"  ${boat.length=='6.0f'?'checked':''}/>
			8m to 12m       <input class="btn" type="radio" name="length" value="10.0f" ${boat.length=='10.0f'?'checked':''}/>
			12m to 16m      <input class="btn" type="radio" name="length" value="14.0f" ${boat.length=='14.0f'?'checked':''}/>
			16m to 20m      <input class="btn" type="radio" name="length" value="18.0f" ${boat.length=='18.0f'?'checked':''}/>
			20m to 30m      <input class="btn" type="radio" name="length" value="25.0f" ${boat.length=='25.0f'?'checked':''}/>
			30m to 40m      <input class="btn" type="radio" name="length" value="35.0f" ${boat.length=='35.0f'?'checked':''}/>
			longer then 40m <input class="btn" type="radio" name="length" value="50.0f" ${boat.length=='50.0f'?'checked':''}/>
Boat Width: 
			1m to 2m        <input class="btn" type="radio" name="width" value="1.5f"  ${boat.width=='1.5f'?'checked':''}/>
			2m to 4m        <input class="btn" type="radio" name="width" value="3.0f"  ${boat.width=='3.0f'?'checked':''}/>
			4m to 8m        <input class="btn" type="radio" name="width" value="6.0f"  ${boat.width=='6.0f'?'checked':''}/>
			8m to 12m       <input class="btn" type="radio" name="width" value="10.0f" ${boat.width=='10.0f'?'checked':''}/>
			12m to 16m      <input class="btn" type="radio" name="width" value="14.0f" ${boat.width=='14.0f'?'checked':''}/>
			18m to 20m      <input class="btn" type="radio" name="width" value="19.0f" ${boat.width=='19.0f'?'checked':''}/>
			wider then 20m  <input class="btn" type="radio" name="width" value="20.0f" ${boat.width=='20.0f'?'checked':''}/>
Fuel Type: 
			No fuel         <input class="btn" type="radio" name="fType" value="0.0f" ${boat.fType=='0.0f'?'checked':''}/>
			Gas             <input class="btn" type="radio" name="fType" value="1.0f" ${boat.fType=='1.0f'?'checked':''}/>
			Diesel          <input class="btn" type="radio" name="fType" value="4.0f" ${boat.fType=='4.0f'?'checked':''}/>
			Unleaded        <input class="btn" type="radio" name="fType" value="3.0f" ${boat.fType=='3.0f'?'checked':''}/>
			Hybrid          <input class="btn" type="radio" name="fType" value="2.0f" ${boat.fType=='2.0f'?'checked':''}/>
			Electric        <input class="btn" type="radio" name="fType" value="5.0f" ${boat.fType=='5.0f'?'checked':''}/>
				
                            <input class="btn btn-secondary" type="submit" value="Save"/>	
							
<!-- Predicted Price: <input type="radio" name=""/> -->
</pre>
</form>
</h5>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<a class="btn btn-primary" href="mailto:mkrpeta@gmail.com">Contact</a>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  			

</body>
</html>