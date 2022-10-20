<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>

	<meta charset="ISO-8859-1">
	<title>Cart</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<style>	
		.empty-cart-container {
			padding: 50px 200px;
		}

		.header-info {
				color: blue;
		}
		.a{
		color: black;
		}
	</style>

	</head>

	<body>

		<	<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand">Art Gallery Shop Online</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="http://localhost:8081/ArtGalleryProject/shop">Home</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8081/ArtGalleryProject/login"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</ul>
			</div>
		</nav>

		<div class="empty-cart-container" style="text-align: left">

			<h1 class="header-info a">Your cart is empty!</h1>
			<p><strong>Go add a cool Painting!</strong></p>

		</div>

	</body>
</html>