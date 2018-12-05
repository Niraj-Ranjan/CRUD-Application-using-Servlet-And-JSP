<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<style>
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}

fieldset, img {border:0}

ol, ul, li {list-style:none}

:focus {outline:none}

body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
  
}

p {
  font-size: 12px;
  width: 150px;
  display: inline-block;
  margin-left: 18px;
}
h1 {
  font-size: 32px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  margin-bottom: 10px;
}

html{
  background-color: #ffffff;
}

.testbox {
  margin: 20px auto;
  width: 343px; 
  height: 464px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #ebebeb; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 1px #cbc9c9;
 
}

input[type=radio] {
  visibility: hidden;
}

form{
  margin: 0 30px;
   padding-left: 40px;
}

label.radio:before {
  background: #3a57af;
  content:'';
  position: absolute;
  top:2px;
  left: 0;
  width: 20px;
  height: 20px;
  border-radius: 100%;
}
input[type=radio]:checked + label:after {
	opacity: 1;
}

hr{
  color: #a9a9a9;
  opacity: 0.3;
}

input[type=text],input[type=password]{
  width: 200px; 
  height: 39px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: -5px;
  margin-top: 13px; 
  padding-left: 10px;
}

input[type=password]{
  margin-bottom: 25px;
}


#button {
  font-size: 24px;
  font-weight: 800;
  color: white;
  padding: 6px 25px 0px 25px;

  float: left;
  text-decoration: none;
  width: 50px; height: 27px; 
  border-radius: 5px; 
  background-color: #3a57af; 
  box-shadow: 0 3px rgba(58,87,175,.75);
  transition: all 0.1s linear 0s; 
margin: 0 auto; width: 180px;

 
}
.link {
font-size: 20px;
  font-weight: 200;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  
  
}


input[type=submit],button{
  font-size: 14px;
  font-weight: 800;
  color: white;
  padding: 6px 25px 0px 25px;

  float: left;
  text-decoration: none;
  width: 60px;  
  border-radius: 5px; 
  background-color: #3a57af; 
  box-shadow: 0 3px rgba(58,87,175,.75);
  transition: all 0.1s linear 0s; 
margin: 0 auto; width: 180px;
}

</style>

<div class="testbox">
<h1> CRUD Application  </h1>
<hr>
<h1> Login  </h1>
<hr>

<form action="LoginServlet" method="POST">
		<input type="text" name="uname"  /> 
		<input type="password" name="upass"  /> 
		<br>
		<br>
		<input type="submit" value="login"/>

		
		
	</form>
<br>
<div class= "link">
<br>
<a href="RegisterServlet">Do not have an acccount ? </a>
</div>
 
</div>
</body>
</html>