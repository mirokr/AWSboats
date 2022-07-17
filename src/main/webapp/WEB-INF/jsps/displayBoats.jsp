<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="j"%>
<%@page isELIgnored="false" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Saved Predictions</title>
 <!-- Bootstrap CSS -->
 
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->

<link href="css/bootstrap.css" rel="stylesheet" />

</head>

<body>

<div class="container">   
<header class="heading1Fun">
<h1 class="mb-4">Saved Boat Price Predictions</h1>
</header>
<div class="row">
<h2  class="mb-4"><a class="btn btn-primary" href="showCreate">Add Boat Price Prediction</a></h2>
</div>
<div class="card">
<div class="card-body">
<div class="row">

<table>
<h5  class="mb-4">
<tr>

<th>Id</th> 
<th>Boat Type</th>
<th>Year Built</th>
<th>Length</th>
<th>Width</th>
<th>Fuel</th>
<th>Price Prediction</th>

</tr>

<j:forEach items="${boatList}" var="boats">

<tr>

<td>${boats.get(0)}</td>
<td>${boats.get(1)}</td>
<td>${boats.get(2)}</td>
<td>${boats.get(3)}</td>
<td>${boats.get(4)}</td>
<td>${boats.get(5)}</td>
<td>${boats.get(6)}</td>
<td><a class="btn" href="deleteBoat?id=${boats.get(0)}">Delete</a></td>

<td><a class="btn" href="showUpdate?id=${boats.get(0)}">Edit</a></td>


</tr>

</j:forEach>
</h5>
</table>

</div>
</div>
</div>
</div>

 
            <a class="btn btn-primary" href="mailto:mkrpeta@gmail.com">Contact</a>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>