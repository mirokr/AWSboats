<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/bootstrap.css" rel="stylesheet" />


<title>User Login</title>

</head>
<body>
<div class="container">
<style>body {background:skyblue;}</style>
<header >

</header>     
<div class="container col-12"> 
<div class="container-fluid">
<div class="row justify-content-center no-gutters">
<div class="col-lg-6">   
<h2 class="mb-4">Login:</h2>
<form action="login" method="post">
<pre style={colour:black}>
<h5 class="mb-4">
My CV Email:<input type="text" name="email"/>
My CV Phone:<input type="password" name="password"/>

<input type="submit" value="Login">

${msg}
</h5>
</pre>
</form>
</div>
 <div class="col-lg-6 mx-auto"> 
 <div class="bg text-center h-100 project">
                        <div class="d-flex h-100">
                            <div class="project-text w-100 my-auto text-center">
 <p><h4>Overview</h4><h5 class="mb-4">
This is a Spring Boot application that is consuming web service. Users input is sent to web service and price prediction is returned. All predictions are saved to MySQL RDB and can be edited or deleted. Editing process also uses web service to generate new prediction.
 Web service is using Machine Learning model converted to Java code to calculate price prediction. 
</h5>

</p>
  </div>
</div>
</div>
</div>
  </div>
 </div>
</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>