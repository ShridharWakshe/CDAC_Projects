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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
		
			<table BORDER="1" id="products">
				<TR>
					<TH>Product Id</TH>
					<TH>Product Name</TH>
					<TH>Description</TH>
					<TH>Price</TH>
					<TH>Picture</TH>
					<TH>Edit</TH>
				</TR>
				
			
				<%
				UtilCls util = new UtilCls();
				List<Product> prodList =  util.retProducts();
				
				for (int i=0;i<prodList.size();i++) {
					out.println(" <tr>   <td>"+prodList.get(i).getPid()+"</td><td>"+prodList.get(i).getProduct_name()+"</td><td>"+prodList.get(i).getDescription()+"<td>"+prodList.get(i).getPrice()+"</td><td>");
					
				%>
				<img width="200" height="200" src="data:image/jpeg;base64,<%= prodList.get(i).getPicture() %>" />
				</td>
				<%
				// out.println("<td><button type='submit' name="+prodList.get(i).getPid()+" value="+prodList.get(i).getPid()+">Delete</td>");
				out.println("<td><button type='submit' name="+prodList.get(i).getPid()+" value="+prodList.get(i).getPid()+">Edit</button></td>");
				%>
				</tr>
				
				<%} %>
			</table>

			</form>
</body>
</html>