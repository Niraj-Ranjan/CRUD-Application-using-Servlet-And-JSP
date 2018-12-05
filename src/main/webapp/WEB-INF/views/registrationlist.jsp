<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Registration List</title>
<link type="text/css" rel="stylesheet" href="<c:url value="/materialize.min.css" />"  media="screen,projection"/>
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

#edit {
  width: 80px;
  padding: 10px;
  border: 5px solid gray;
  margin: 15px;
  background-color: red;
  text-decoration: none;
}

#del {
  text-decoration: none;
  width: 80px;
  padding: 10px;
  border: 5px solid gray;
  margin: 15px;
  background-color: green;
}
  
/* Hover cell effect! */
</style>
<div class = "container">

<div class="row">
    <div class="col s12 m12	">
      <div class="card-panel teal">
      <div class = "responsive-table">
	<table>
	<thead>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>USERNAME</th>
			<th>PASSWORD</th>
			<th>EDIT</th>
			<th>DELETE</th>
		</tr>
		
	</thead>
<tbody>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getFname()}</td>
				<td>${u.getUname()}</td>
				<td>${u.getPassword()}</td>
				
				<td id = "edit"><a href="EditServlet?id=${u.getId()}" style="color:white;text-decoration: none;">Edit</a></td>
							
				
				<td id = "del"><a href="DeleteServlet?id=${u.getId()}" style="color:white;text-decoration: none;">Delete</a></td>
				
				
			</tr>
		</c:forEach>
		</tbody>
		</div>
		  </div>
	  

    </div>
      </div>
	  

   	
</body>
</html>