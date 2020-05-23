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
<title>admin view and modify all policy detail</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<div id="navbar">
	<a href="index.jsp"><img  class="navbar-brand" src="image/logo.jpg"/></a>
		<ul>
			<li><a href="admin.jsp" class="current">Home</a></li>
		<li><a href="adminAddPolicy.jsp">add</a></li>
		<li><a href="adminDeletePolicy.jsp">delete</a></li>
		<li><a href="modifyPolicy.jsp">modify</a></li>
		</ul>
	</div>
	<form method="post">
		<table border="2">
			<tr>
				<td>policy id</td>
				<td>policy name</td>
				<td>weekly interest</td>
				<td>monthly interest</td>
				<td>quarter interest</td>
				<td>half interest</td>
				<td>year interest</td>
			</tr>
			<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/insurance";
String username="root";
String password="root";

String query="select * from  policy";
 Connection conn=DBConnector.getConnection();
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
			<tr>
				<td><%=rs.getString("pid") %></td>
				<td><%=rs.getString("pname") %></td>
				<td><%=rs.getString("pweek") %></td>
				<td><%=rs.getString("pmonth") %></td>
				<td><%=rs.getString("pqua") %></td>
				<td><%=rs.getString("phalf") %></td>
				<td><%=rs.getString("pyear") %></td>
			</tr>
			<%
}
%>
		</table>
		<%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>
	</form>
</body>
</html>