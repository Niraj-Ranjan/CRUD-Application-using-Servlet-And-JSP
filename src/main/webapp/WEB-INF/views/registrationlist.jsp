<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Registration List</title>
</head>
<body>

	<%@page import="com.niraj.model.user"%>
	<%@page import="com.niraj.dao.UserDao"%>
	<%@page import="java.util.*"%>
	<%@page import="java.lang.*"%>
	
	<%
	UserDao d = new UserDao();
	List<user> list=d.getAllist();
	request.setAttribute("list",list);
	%>


	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>USERNAME</th>
			<th>PASSWORD</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>

		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getFname()}</td>
				<td>${u.getUname()}</td>
				<td>${u.getPassword()}</td>
				<td><a href="EditServlet?id=${u.getId()}">Edit</a></td>
				<td><a href="DeleteServlet?id=${u.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
</body>
</html>