<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	
	<title>Login</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<meta charset="ISO-8859-1">
	<style><%@include file="/WEB-INF/css/login.css"%></style>

		<style>	
			.login-container {
			
              
              font-size: 25px;
				padding: 20px;
			}
		</style>
	
	</head>
	
	<body>
	
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand">Art Gallery Shop Online</a>
				</div>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
				</ul>
			</div>
		</nav>

		<div class="login-container"  >
		
			<form action="login" method="post">

				<div class="error">${errorMessage}</div>
				<div class="message">${message}</div>
				<br>
				
				<table style="width:30%;">
					<tr>
						<td><input type="text" name="username" placeholder="username" required/></td>
					</tr>
					<tr>
						<td><input type="password" name="password" placeholder="password" required/></td>
					</tr>
					<tr>
						<td><input type="submit" value="LOGIN"/></td>
					</tr>
					<tr>
						<td><p>Don't have an account? </p><a href="register">Register here</a></td>
					</tr>
				</table>
			</form>

		</div>

	</body>
</html>