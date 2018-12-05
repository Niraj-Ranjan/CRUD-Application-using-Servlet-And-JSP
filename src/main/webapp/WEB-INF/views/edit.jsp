<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
	<%@page import="com.niraj.model.user"%>
	<%@page import="com.niraj.dao.UserDao"%>
	<%@page import="java.util.*"%>
	<%@page import="java.lang.*"%>
	
	
	
	<%
	//PrintWriter out = response.getWriter();
	String u =request.getParameter("id");
	int id = Integer.parseInt(u);
	
	//UserDao da = new UserDao();
	user ur = UserDao.update(id);
	
	//out.println(listu);
	%>


<form action="UpdateServlet" method="POST">
		ID : <input type="text" name="uid"  value="<%=ur.getId() %>" />
		Full Name : <input type="text" name="fname"  value="<%=ur.getFname() %>" />
		User Name : <input type="text" name="uname"  value="<%=ur.getUname() %>" />
		Password : <input type="password" name="pass"  value="<%=ur.getPassword() %>" /> 
		<input type="submit" value="Update"/>
	</form>
	
	
	
</body>
</html>