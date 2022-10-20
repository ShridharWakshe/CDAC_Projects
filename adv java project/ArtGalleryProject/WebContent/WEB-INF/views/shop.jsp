<%@page import="com.artgallery.models.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.artgallery.utility.UtilCls"%>
<%@ page buffer="3000kb" autoFlush="false" %>

<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Shop</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

		<style>
		/*
			table {
			table-layout: fixed ;
			margin: auto;
			width: 90% ;
			}
			th {
			width: 25% ;
			text-align: center;
			}
			td {
			width: 25% ;
			text-align: center;
			}
		*/
		
		.shop-container {
			padding: 50px 200px;
		}

		.header-info {
			color: blue;
		}
		
		#shops {
			font-family: Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		
		#shops td, #shops th {
			border: 1px solid #ddd;
			padding: 8px;
		}
		
		#shops tr:nth-child(even){background-color: #f2f2f2;}
		
		#shops tr:hover {background-color: #ddd;}
		
		#shops th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: grey;
			color: white;
		}
		
		/* button to add product */
		.btn {
			border: none;
			background-color: grey;
			padding: 14px 28px;
			font-size: 16px;
			cursor: pointer;
			display: inline-block;
		}
		.info {
			color: white;
		}
		.info:hover {
			background: black;
			color: white;
		}
		.b{
		color: black;
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
					<li class="active"><a href="http://localhost:8081/ArtGalleryProject/shop">Home</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8081/ArtGalleryProject/login"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</ul>
			</div>
		</nav>

		<div class="shop-container" style="text-align: center">

			<h1 class="header-info b">${ message }</h1>
			<p>${ cartMessage }</p>

			<table id="shops" style="text-align: center">
				
				<tr class = "a">
					<th>Product</th>
					<th>Price</th>
				
					<th></th>
				</tr>
				<!--  productlist from productcontroller-->
				<c:forEach items="${productList}" var="item">
				<tr>
					<td><c:out value="${item.product_name}" /></td>
					<td><c:out value="Rs ${item.price}" /></td>
					
					<td>
				
						<form action="shop/product" method="get">
						<input type="hidden" name="pid" value="${item.pid}"/><button type="submit">View</button>
						</form>
					</td>
				</tr>
				
				</c:forEach>
			</table>
			<br>

			<a href="shop/cart?uid=<c:out value="${sessionScope.currentUser.uid}"/>">
				<button class="btn info">Cart</button>
			</a>

		</div>

	</body>
</html>