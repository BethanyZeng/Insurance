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
<title>holder view detail</title>
</head>
<body>
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
				<td>email</td>
				<td>policy</td>
				<td>premium</td>
				<td>agent id</td>
				<td>start date</td>
				<td>due date</td>
			</tr>
			<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/insurance";
String username="root";
String password="root";
String me = session.getAttribute("me").toString(); 
String query="select * from  holder where hid = '"+me+"'";
 Connection conn=DBConnector.getConnection();
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
			<tr>
				<td><%=rs.getString("hid") %></td>
				<td><%=rs.getString("hname") %></td>
				<td><%=rs.getString("hcard") %></td>
				<td><%=rs.getString("hbank") %></td>
				<td><%=rs.getString("hbirth") %></td>
				<td><%=rs.getString("hsex") %></td>
				<td><%=rs.getString("hoccu") %></td>
				<td><%=rs.getString("hincome") %></td>
				<td><%=rs.getString("hadd") %></td>
				<td><%=rs.getString("hemail") %></td>
				<td><%=rs.getString("hpolicy") %></td>
				<td><%=rs.getString("hpremium") %></td>
				<td><%=rs.getString("hagent") %></td>
				<td><%=rs.getString("hstart") %></td>
				<td><%=rs.getString("hdue") %></td>

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