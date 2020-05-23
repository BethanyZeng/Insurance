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
<title>Admin-view all agent</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<div id="navbar">
	<a href="index.jsp"><img  class="navbar-brand" src="image/logo.jpg"/></a>
		<ul>
			<li><a href="admin.jsp" class="current">Home</a></li>
			<li><a href="addAgent.jsp">add agent</a></li>
			<li><a href="deleteAgent.jsp">delete agent</a></li>
			<li><a href="modifyAgent.jsp">modify agent</a></li>
		</ul>
	</div>
	<form method="post">
		<table border="2">
			<tr>
				<td>ID</td>
				<td>NAME</td>
				<td>credit card</td>
				<td>credit card bank</td>
				<td>birthday</td>
				<td>gender</td>
				<td>occupation</td>
				<td>income</td>
				<td>address</td>
				<td>mobile phone</td>
				<td>email address</td>
				<td>amount</td>
			</tr>
			<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/insurance";
String username="root";
String password="root";

String query="select * from  agent";

 Connection conn=DBConnector.getConnection();
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
			<tr>
				<td><%=rs.getString("aid") %></td>
				<td><%=rs.getString("aname") %></td>
				<td><%=rs.getString("acard") %></td>
				<td><%=rs.getString("abank") %></td>
				<td><%=rs.getString("abirth") %></td>
				<td><%=rs.getString("asex") %></td>
				<td><%=rs.getString("aoccu") %></td>
				<td><%=rs.getString("aincome") %></td>
				<td><%=rs.getString("aadd") %></td>
				<td><%=rs.getString("amob") %></td>
				<td><%=rs.getString("aemail") %></td>
				<td><%=rs.getString("aamout") %></td>
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