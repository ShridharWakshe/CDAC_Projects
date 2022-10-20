<%@page import="com.artgallery.models.User"%>
<%@page import="java.util.List"%>
<%@page import="com.artgallery.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<%
	session.setAttribute("idToChange", null);
	UtilCls util = new UtilCls();
	%>
	<head>
	
	<meta charset="ISO-8859-1">
	<title>Customer Management</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
		<style>	
			.customer-container {
                padding: 200px;
            }

			.header-info {
				color: black;
			}
            
            .table-row {
            	background-color: grey;
            	color: white;
            	text-align: center;
            }
            
            .customer-table {
            	width: 100%;
            	text-align: center;
            }
            .height{
            padding-top : 0px;
            }
            
            th {
            	text-align: center;
            }

            /* button to add user */
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
		</style>
	
	</head>
	
	<body>
	
					<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand">Art Gallery Shop Online</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="http://localhost:8081/eCommerceProject/admin">Home</a></li>
					<li><a href="http://localhost:8081/eCommerceProject/admin/productManagement">Product Management</a></li>
					<li><a href="http://localhost:8081/eCommerceProject/admin/customerManagement">Customer Management</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8081/eCommerceProject/login"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					
				</ul>
			</div>
		</nav>
		
		<div class="customer-container height" style="text-align: left">
		
		<h1 class="header-info">Customer Management Page</h1>
		
		<br><br>
		
		<form method="post" >
		
			<table border=1 class="customer-table">
				<tr class="table-row">
					<th>Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Username</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
				<%
					List<User> userList = util.retLogins();
					for (int i=0;i<userList.size();i++) {
						out.println("<tr><td>" + userList.get(i).getName() + "</td><td>" + userList.get(i).getEmail()+ "</td><td>"+userList.get(i).getPhone()+ "</td><td>" + userList.get(i).getUsername()
								+ "</td><td><button type='submit' name="+userList.get(i).getEmail()+" value="+userList.get(i).getUid()+">Edit</button></td>"+
								"<td><button type='submit' name="+userList.get(i).getUid()+" value="+userList.get(i).getUid()+">Delete</td>"
								);
					}
				%>
				<%
				
				//checking if delete button is clicked
				for (int i=0;i<userList.size();i++) {
					 if (request.getParameter(Integer.toString(userList.get(i).getUid())) != null){
						// util.test(request.getParameter(Integer.toString(userList.get(i).getUid())));
						 util.delete(request.getParameter(Integer.toString(userList.get(i).getUid())));
						 String redirectURL ="http://localhost:8081/eCommerceProject/admin/customerManagement";
						 response.sendRedirect(redirectURL);
					 }
					 
				}
				
				//checking if edit button is clicked
				for (int i=0;i<userList.size();i++) {
					 if (request.getParameter(userList.get(i).getEmail()) != null){
						 util.test(request.getParameter(userList.get(i).getEmail()));
						 session.setAttribute("idToChange", userList.get(i).getUid());
						// session.setAttribute("updateSuccess", "null");
						 //util.delete(request.getParameter(Integer.toString(userList.get(i).getUid())));
						 String redirectURL = "http://localhost:8081/eCommerceProject/admin/updateCustomer";
						 response.sendRedirect(redirectURL);
					 }
		
				}
				
				%>
				</table>
		
			</form>
			
			<br>
		
			<a href="adminAddUser">
				<button class="btn info">
					Add User
				</button>
			</a>
		
		</div>

	</body>
</html>