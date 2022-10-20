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
<%@ page session="true" %>
<!DOCTYPE html>
<html>
	<head>

		<meta charset="ISO-8859-1">
		<title>Product</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

		<style>	
			.product-container {
                padding: 50px 200px;
            }
            .box-input {
            	width: 100%;
            }
            
            input[type=submit] {
            	background-color: grey;
				border: none;
				color: white;
				padding: 16px 32px;
				text-decoration: none;
				margin: 4px 2px;
				cursor: pointer;
            }
            .hov {
            	
            }
            .hov:hover {
            	
            }
            
            /* button to go back to last page */
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
			
			.add-cart {
                color: white;
            }
            .add-cart:hover {
                background: black;
                color: white;
            }
            table, th, td {
  border: 1px solid white;
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

		<div class="product-container" style="text-align: left">

			<form action="cart" method="post">
				<table style="width:1000px">
					<tr>
						<th></th>
						<th>Product</th>
						<th style="width:70%">Description</th>
						<th style="width:10%">Category</th>
						<th style="align:center">Price</th>
						<th></th>
					</tr>
					<tr>
					 <td></td>
						  <td>${product.product_name}</td>
						<td>${product.description}</td>
						<td>${product.category}</td>
						<td>${product.price}</td>
						<%
				UtilCls util = new UtilCls();
				List<Product> prodList =  util.retProducts();
		
				int no = Integer.parseInt(request.getParameter("pid"));
				no = no-1;
				%>
					<img width="1000" height="1000" src="data:image/jpeg;base64,<%= prodList.get(no).getPicture() %>" />
				</td>
				</tr></tr>
				</table>
						<td>
							<input type="hidden" name="uid" value="<c:out value="${sessionScope.currentUser.uid}"/>" />
							<input type="hidden" name="pid" value="${product.pid}"/>
							<button type="submit" class="btn add-cart">Add to Cart</button>
						</td>
						<a href="cart?uid=<c:out value="${sessionScope.currentUser.uid}"/>">
				<button class="btn info">
					Back
				</button>
			</a>
					
				
			</form>
			
			

		</div>

	</body>

</html>