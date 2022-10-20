package com.artgallery.utility;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/admin/uploadChecker")
@MultipartConfig(maxFileSize = 16177215)
public class uploadChecker extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public uploadChecker() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InputStream inputStream = null;
		 Part filePart = request.getPart("pic");
		 if (filePart != null) {
			 System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	            inputStream = filePart.getInputStream();
		 }
		 
		 Connection conn = null;
		 String message = null;  // message will be sent back to client
        
	        try {
	            // connects to the database
	            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
	            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "cdac");
	 
	            // constructs SQL statement
	            String sql = "INSERT INTO product (product_name, description,category, price, stock_amt,picture) values (?, ?, ?, ?, ?,?)";
	            PreparedStatement statement = conn.prepareStatement(sql);
	            statement.setString(1, request.getParameter("name"));
	            statement.setString(2, request.getParameter("desc"));
	            statement.setString(3, request.getParameter("category"));
	            statement.setDouble(4, Double.parseDouble(request.getParameter("price")));
	            statement.setInt(5, Integer.parseInt(request.getParameter("amt")));
	            if (inputStream != null) {
	                // fetches input stream of the upload file for the blob column
	                statement.setBlob(6, inputStream);
	            }
	 
	            // sends the statement to the database server
	            int row = statement.executeUpdate();
	            if (row > 0) {
	            	//out.println("<p style='color: green'>File uploaded and saved into database");
	                message = "Image saved into database";
	            }
	        } catch (SQLException ex) {
	            message = "ERROR: " + ex.getMessage();
	            ex.printStackTrace();
	        }
	        finally {
	        	 request.setAttribute("Message", message);
	        	 getServletContext().getRequestDispatcher("/admin/productManagement").forward(request, response);
	        }
	    }
	

	        
	

}
