<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>


<style>

* { box-sizing: border-box; margin: 0; padding:0; }
    h2 {
      text-align: center;
      font-weight: 200;
      font-size: 2em;
      margin-top: 10px;
      color: #34495e;
    }
    
    .login-wrap {
    position: relative;
    margin: 0 auto;
    background: #ecf0f1;
    width: 350px;
    border-radius: 5px;
    box-shadow: 3px 3px 10px #333;
    padding: 15px;
    }
    
       .form {
      padding-top: 20px;
      
      input[type="text"],
      input[type="password"],
      button {
        width: 80%;
        margin-left: 10%;
        margin-bottom: 25px;
        height: 40px;
        border-radius: 5px;
        outline: 0;
        -moz-outline-style: none;
      }
      
          input[type="text"],
      input[type="password"] {
        border: 1px solid #bbb;
        padding: 0 0 0 10px;
        font-size: 14px;
        &:focus {
          border: 1px solid #3498db;
        }
      }
      }	

</style>
<div class="login-wrap">
         <h1>Register</h1>
   
<div class="form">
<form action="RegisterServlet" method="POST">

		<input type="text" placeholder= "Full Name" name="fname"  />
	
	
		<input type="text" placeholder= "User Name" name="uname"  />
	
		
		<input type="password" placeholder= "Password" name="pass"  /> 
		
		
		<input type="submit" value="Register"/>
		
		
	</form>

	  </div>
</div>
</body>
</html>