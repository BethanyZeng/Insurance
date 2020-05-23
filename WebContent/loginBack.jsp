<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="sun.rmi.log.LogInputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.DBConnector"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login back-end database</title>
</head>
<body>
	<%
		String usr = request.getParameter("name");
		String pas = request.getParameter("pwd");
		String type = request.getParameter("userType");

		Connection con = DBConnector.getConnection();
		Statement st = con.createStatement();

		if (type.equals("admin")) {
			ResultSet rs = st.executeQuery(" select * from admin where adminid='" + usr + "'");
			if (rs.next()) {
				if (rs.getString("adminid").equals(usr) && (rs.getString("adminpwd").equals(pas))) {
					session.setAttribute("me", usr);
					response.sendRedirect("admin.jsp?msg=sucess");
				} else {
					response.sendRedirect("index.jsp?msgg=fails");
				}
			} else {
				response.sendRedirect("index.jsp?msgg=fails");
			}
		} else if (type.equals("agent")) {
			ResultSet rs = st.executeQuery(" select * from agent where aid='" + usr + "'");
			if (rs.next()) {
				if (rs.getString("aid").equals(usr) && (rs.getString("apwd").equals(pas))) {
					session.setAttribute("me", usr);
					response.sendRedirect("agent.jsp?msg=sucess");
				} else {
					response.sendRedirect("index.jsp?msgg=fails");
				}
			} else {
				response.sendRedirect("index.jsp?msgg=fails");
			}
		} else if (type.equals("holder")) {
			ResultSet rs = st.executeQuery(" select * from holder where hid='" + usr + "'");
			if (rs.next()) {
				if (rs.getString("hid").equals(usr) && (rs.getString("hpwd").equals(pas))) {
					session.setAttribute("me", usr);
					response.sendRedirect("holder.jsp?msg=sucess");
				} else {
					response.sendRedirect("index.jsp?msgg=fails");
				}
			} else {
				response.sendRedirect("index.jsp?msgg=fails");
			}
		}
	%>
</body>
</html>