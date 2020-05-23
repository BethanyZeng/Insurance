<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete holder back</title>
</head>
<body>
<%
	String hid= request.getParameter("hid");
	
	Connection con = DBConnector.getConnection();
	Statement st = con.createStatement();
	ResultSet rs = null;
	
	int i = st.executeUpdate("delete from holder where hid='"+hid+"'");
	if(i!=0){
	response.sendRedirect("adminViewHolder.jsp?que=query executed..!");
	}else{
	    response.sendRedirect("adminViewHolder.jsp?que=query not executed..!");
	}
	%>
</body>
</html>