<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>

	<title>Register</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<meta charset="ISO-8859-1">
	<style><%@include file="/WEB-INF/css/login.css"%></style>

		<style>	
			.register-container {
				padding-left: 40px;
			}
			.a{
			padding-left: 50px;
			}
			.ab{
			margin-left:250px;
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

		<div class="register-container" class="a">
		
			<form style=" width: 50vw; margin-left : 25vw;" action="register" method="post">
                <h2><div class="success ab">${message}</div></h2>>
				<div class="error">${errorMessage}</div>
				<br>
				<table style="text-align: center">
					<tr>
						<td><input type="text" name="name" placeholder="name" required></td>
					</tr>
					<tr>
						<td><input type="text" name="username" placeholder="username" required/></td>
					</tr>
					<tr>
						<td><input type="password" name="password" placeholder="password" required 
						pattern="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}" 
						title="Must contain at least one number, one uppercase, one lowercase letter, and at least 8 or more characters"/></td>
					</tr>
					<tr>
						<td><input type="text" name="email" placeholder="email" required 
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"/></td>
					</tr>
					<tr>
						
						<td><input type="submit" value="Register"/></td>
					</tr>
					<tr>
						
						<td><p>Already have an account?</p><a href="login">Login here</a></td>
					</tr>
				</table>

			</form>

		</div>

	</body>
	
</html>