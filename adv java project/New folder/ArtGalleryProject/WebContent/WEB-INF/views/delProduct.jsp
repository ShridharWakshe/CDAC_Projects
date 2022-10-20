<%@page import="com.artgallery.models.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.artgallery.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<%
	UtilCls util = new UtilCls();
	%>
	<head>

		<meta charset="ISO-8859-1">
		<title>Delete Product</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<style>
		form{
		margin-left: 400px;
		}
		.a{
		margin-left: 200px;
		}
		.btn {
		background-color: grey;
                color: grey;
                margin-left: 780px;
                margin-top: 100px;
            }
            .btn {
                background: black;
                color: white;
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
					<li class="active"><a href="http://localhost:8080/ArtGalleryProject/admin">Home</a></li>
					<li><a href="http://localhost:8080/ArtGalleryProject/admin/productManagement">Product Management</a></li>
					<li><a href="http://localhost:8080/ArtGalleryProject/admin/customerManagement">Customer Management</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8081/ArtGalleryProject/login"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					
				</ul>
			</div>
		</nav>
<h1 class="a">Delete Product</h1>
	<form>
		Select the product to delete:<select name = "pname">
		
		<%
		List<Product> prodList = util.retProducts();
		for(Product p:prodList){
			out.println("<option value="+p.getPid() +">"+p.getProduct_name()+"</option>");
		}
		%>
		</select>
		<input type="submit" value="Delete">
	</form>
		<%
			if(request.getParameter("pname")!=null){
				String p = request.getParameter("pname");
				boolean status = util.delProduct(p);
				if(status){
					out.println("<label>Successfully Deleted Product</label>");
				}
				else{
					out.println("<label>Product could not be deleted as it is added to a users cart</label>");
				}
				
			}
		%>

	<br> 

	<a href="productManagement"><button class="btn info">Back</button></a>

	</body>
</html>