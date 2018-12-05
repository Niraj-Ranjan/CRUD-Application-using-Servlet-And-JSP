<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>

<form action="/RegisterServlet" method="POST">

		Full Name : <input type="text" name="fname"  />
		User Name : <input type="text" name="uname"  />
		Password : <input type="password" name="pass"  /> 
		<input type="submit" value="Register"/>
	</form>
</body>
</html>