<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Welcome</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.a{
	padding: 0px 500px;
}
.a1{
	padding: 50px 400px;
}

body {
	background-color: grey;
	background-image:
		url("https://images.unsplash.com/photo-1518998053901-5348d3961a04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXJ0JTIwZ2FsbGVyeXxlbnwwfHwwfHw%3D&w=1000&q=80");
}
.glitch{
  font-size:25px;

}

</style>

</head>

<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">Art Gallery Shop Online</a>
			</div>

			<ul class="nav navbar-nav">
				<li class="active"><a
					href="http://localhost:8081/ArtGalleryProject/admin">Home</a></li>
				<li><a
					href="http://localhost:8081/ArtGalleryProject/admin/productManagement">Product
						Management</a></li>
				<li><a
					href="http://localhost:8081/ArtGalleryProject/admin/customerManagement">Customer
						Management</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li><a href="http://localhost:8081/ArtGalleryProject/login"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>

			</ul>
		</div>
	</nav>

	<div class="admin-container" >

		<h1 class="a">Administrator Page</h1>

		<hr>

		<h2 class="a">${message}</h2>
<h2>
		<br> <a href="admin/products" class="a" data-glitch="Product List">Product List</a> <br> <br> 
		
			<a href="admin/customerManagement"  class="a" data-glitch="Customer Management">Customer Management</a> <br> <br> 
			
			 <a href="admin/productManagement"  class="a" data-glitch="Product Management">Product Management</a>
</h2>>
	</div>
</body>
</html>