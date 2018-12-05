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

<style>
table {  
    color: #333;
    font-family: Helvetica, Arial, sans-serif;
    width: 640px; 
    border-collapse: 
    collapse; border-spacing: 0; 
    align: centre;
}

td, th {  
    border: 1px solid transparent; /* No more visible border */
    height: 30px; 
    transition: all 0.3s;  /* Simple transition for hover effect */
}

th {  
    background: #DFDFDF;  /* Darken header a bit */
    font-weight: bold;
}

td {  
    background: #FAFAFA;
    text-align: center;
}

/* Cells in even rows (2,4,6...) are one color */        
tr:nth-child(even) td { background: #F1F1F1; }   

/* Cells in odd rows (1,3,5...) are another (excludes header cells)  */        
tr:nth-child(odd) td { background: #FEFEFE; }  

tr td:hover { background: #666; color: #FFF; }  

#edit{

font-size: 10px;
  font-weight: 200;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  
}
/* Hover cell effect! */
</style>

	<table>
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
				<div id="edit">
				
				<td><a href="EditServlet?id=${u.getId()}">Edit</a></td>
				</div>
				
				<div class="delete">
				<td><a href="DeleteServlet?id=${u.getId()}">Delete</a></td>
				</div>
				
			</tr>
		</c:forEach>
</body>
</html>