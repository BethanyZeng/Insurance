<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>agent home</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<div id="navbar">
	<a href="index.jsp"><img  class="navbar-brand" src="image/logo.jpg"/></a>
		<ul>
            <li><a href="agentViewHolder.jsp" >view holder</a></li>
            <li><a href="agentView.jsp" >view agent detail</a></li>
		</ul>
	</div>
		<% String me = session.getAttribute("me").toString(); %>
<div>
	<h1>
	Welcome <%=me %>
	</h1>
	</div>
</body>
</html>