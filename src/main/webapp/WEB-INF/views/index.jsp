<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="./base.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/index.css"></c:url>">
</head>
<body>

	<div class="fixed-header">
		<div class="container1">
			<nav></nav>
		</div>
	</div>


	<div id="container">
		<div id="upper">
			<h2 id="logHead">Login</h2>
		</div>
		<form id="medium" action="handlelogin" method="post">
			<div id="info">
				User Id:   &nbsp; &nbsp; &nbsp; 
				<label id="mandate1">*</label> 
				<input 
				    id="userInput1"
					type="text" 
					name="username"
					onkeyup="checkEmail()"
					autocomplete="off"
					minlength="5"
					maxlength="50" 
					required /> <br>
		 		<br> 
				<span style="color: red; position: relative; left: 47px;">
					<span id="erremail"></span>
				</span> 
				Password : 
				<label id="mandate2">*</label>
				<input 
				    id="userInput2"
					type="password" 
					autocomplete="off" 
					name="password"
					minlength="5" 
					maxlength="50" 
					required /> <br>
				<br> 
				<span style="color: red; position: relative; left: 47px;">
					<span id="errpassword"></span>
				</span> 
			</div>
			<div id="lower">
				<input type="submit" value="login >>" />
			</div>
		</form>
		<h3 class="text-center" style="color: red;">${wrongcredentials}</h3>
	</div>

	<div class="fixed-footer">
		<div class="container1">
			<nav></nav>
		</div>
	</div>
	<!-- <footer style = "color:#d4bdf9"></footer> -->
	
	<script type="text/javascript" src="<c:url value="/resources/js/index.js"></c:url>"></script>
</body>
</html>
