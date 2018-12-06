<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<style>
body {
	font-family: 'Open Sans', sans-serif;
	font-weight: 500;
	color: #666;
}

.info p {
	text-align: center;
	color: #999;
	text-transform: none;
	font-weight: 600;
	font-size: 15px;
	margin-top: 2px
}

.info i {
	color: #55acee;
}

h1 {
	text-align: center;
	color: #666;
	text-shadow: 1px 1px 0px #FFF;
	margin: 50px 0px 0px 0px
}

h2 {
	font-size: 20px;
	font-weight: 600;
}

h3 {
	font-size: 17px;
	font-weight: 600;
}

a {
	text-decoration: inherit;
	color: inherit;
}

a:hover {
	text-decoration: inherit;
}

hr {
	position: relative;
	margin-top: 27%;
	border: 1px solid #fff;
	border-radius: 50px;
	opacity: 0.15;
}

.content {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 900px;
	
	z-index: -1;
}

.container {
	display: block;
	position: relative;
	width: 500px;
	height: 600px;
	margin: auto;
	margin-top: 50px;
	box-shadow: 1px 5px 10px 1px #333;
	overflow: hidden;
}

img.bg-img {
	display: block;
	position: absolute;
	margin: auto;
}

.menu {
	position: relative;
	padding: 15% 13% 0 13%;
}

.menu h2 {
	display: inline;
	margin: 20px;
	padding-bottom: 3px;
	border-bottom: 3px solid #1161ee;
}

a:not (.active ) {
	cursor: inherit;
}

.menu .active h2 {
	border-bottom: 0 solid #1161ee;
	color: #AEAEAE;
	transition: color 0.5s ease-in;
}

.connexion {
	position: absolute;
	padding: 15% 13%;
	width: 74%;
	left: 0px;
	transition: all 0.7s;
}

.connexion h2 {
	display: inline;
	margin: 20px;
	padding-bottom: 3px;
	border-bottom: 2px solid #1161ee;
}

.connexion h4 {
	margin-bottom: 0;
	text-align: center;
	color: #ffffff;
	opacity: 0.3;
}

.connexion h4:hover {
	opacity: 0.8;
	transition: all 0.1s ease-in;
}

label {
	display: block;
	margin-top: 10px;
	
	
		
	font-size: 15px;
	font-weight: 600;
	color: #fff;
}

input {
	display: block;
	width: 93%;
	margin: auto;
	padding: 13px;
	border: 0;

	font-family: "Roboto", sans-serif;
	
	
	
}

input p {
	color: #fff;
	opacity: 1;
}

input.submit {
	width: 100%;
	padding: 10px;
	font-size: 17px;
	font-weight: 700;
	color: #fff;
	opacity: 1;
	background-color: #1161EE;
	cursor: pointer;
}

.check label {
	float: left;
	width: 10%;
	margin-left: 5%;
}

.check h3 {
	padding: 15px;
}

.checkbox {
	display: none;
}

.checkbox:checked+svg .path-moving {
	-webkit-transition: stroke .4s, stroke-dasharray .4s, stroke-dashoffset
		.4s cubic-bezier(.3, .8, .6, 1.5);
	transition: stroke .4s, stroke-dasharray .4s, stroke-dashoffset .4s
		cubic-bezier(.3, .8, .6, 1.5);
	stroke-dasharray: 25 90;
	stroke-dashoffset: 0;
}

.path-moving, .path-back {
	fill: none;
	stroke: #1161ee;
	stroke-width: 3px;
	stroke-linecap: round;
	stroke-linejoin: round;
}

.path-moving {
	-webkit-transition: stroke .4s, stroke-dasharray .4s, stroke-dashoffset
		.4s;
	transition: stroke .4s, stroke-dasharray .4s, stroke-dashoffset .4s;
	stroke: #ffffff;
	stroke-dasharray: 110;
	stroke-dashoffset: -32;
}

.enregistrer {
	position: absolute;
	padding: 15% 13%;
	width: 74%;
	right: 0px;
	transition: all 0.7s;
}

.active-section {
	position: absolute;
	right: 500px;
}

.remove-section {
	position: absolute;
	left: 500px;
}
</style>
<body>
	<div class="content">
		<div class="container">
			<img class="bg-img"
				src="https://www.grandvincent-marion.fr/_codepen/bg.jpg" alt="">
			<div class="menu">
				<a href="#connexion" class="btn-connexion"><h2>Register</h2></a>
			</div>
			<div class="connexion">
				<div class="contact-form">
					<form action="RegisterServlet" method="POST">
						<label>FULLNAME</label> <input placeholder="" type="text"
							name="fname"> <label>USERNAME</label> <input
							placeholder="" type="text" name="uname"> <label>PASSWORD</label>
						<input placeholder="" type="text" name="pass">

						<div class="check">
							<label> </label>

						</div>

						<input class="submit" value="SIGN UP" type="submit">
					</form>
				</div>



			</div>






		</div>
	</div>

	</div>

	</div>


</body>





</body>
</html>