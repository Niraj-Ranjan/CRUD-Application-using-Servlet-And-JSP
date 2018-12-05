<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

 ${error}

<h> My First JSP  </h>

<form action="LoginServlet" method="POST">
		Name : <input type="text" name="uname"  /> 
		Password : <input type="password" name="upass"  /> 
		<input type="submit" value="login"/>
	</form>


<a href="RegisterServlet">Do not have an acccount </a> 
<a href="ListServlet">Do not have an acccount </a> 
</body>
</html>