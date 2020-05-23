<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>success</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
<div id="navbar">
	<a href="index.jsp"><img  class="navbar-brand" src="image/logo.jpg"/></a>
		<ul>
			<li><a href="index.jsp">Home</a></li>
		</ul>
	</div>
<%
String me = session.getAttribute("agent").toString(); 
%>
<h1>
Welcome!<br/>
You have registered successfully.<br/>
Please remember your user ID is<b><%=me %> </b> for login.
</h1>
</body>
</html>