
<%@page import="java.io.Writer"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
		<title></title>
	</head>
	<body>
		<%
			String organisation = request.getParameter("organisation");
			String empName = request.getParameter("empName");
			String bankName = request.getParameter("bankName");
			String accNumber = request.getParameter("accNumber");
			String ifscCode = request.getParameter("ifscCode");
			String amount = request.getParameter("amount");
			String status = "";
			String insertQuery = "";
			
			Connection conn = null;
			java.sql.PreparedStatement pst = null;
			
			try{

				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				conn = java.sql.DriverManager.getConnection("jdbc:sqlserver://52.187.26.246:1433;databaseName=ibps02no;user=sa;password=system123#");

				}catch(Exception ex){
				ex.printStackTrace();}
			
			Statement st = conn.createStatement();
			insertQuery = "Insert into Transactions values('"+organisation+"','"+empName+"','"+bankName+"','"+accNumber+"','"+ifscCode+"','"+amount+"')";
			boolean queryStatus = st.execute(insertQuery);
			
			if(queryStatus){
				status = "Record could not be added";
			}
			else
				status= "Record added succesfully";	
		%>
		<%= status %>
	</body>
</html>