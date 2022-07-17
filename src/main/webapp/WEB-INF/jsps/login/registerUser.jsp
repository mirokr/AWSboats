<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
</head>
<body>
    <div class="view">
        <div class="pages">
<form action="registerUser" method="post">
<h2>User Registration:</h2>
<table>
<tr>
<td><label>First Name:</label></td>
<td><input type="text" 	   name="firstName"/></td>
</tr>
<tr>
<td><label>Last Name:</label></td>
<td><input type="text"     name="lastName"/></td>
</tr>
<tr>
<td><label>Email:</label></td>
<td><input type="text" 	   name="email"/></td>
</tr>
<tr>
<td><label>Password:</label></td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td><label>Confirm Password:</label></td>
<td><input type="password" name="confirmPassword"/></td>
</tr>

</table>

<input type="submit" value="Register"/>
${msg}
</form>

       </div>
    </div>

</body>
</html>