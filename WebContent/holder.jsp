<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>holder home</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<div id="navbar">
	<a href="index.jsp"><img  class="navbar-brand" src="image/logo.jpg"/></a>
		<ul>
           <li><a href="holderView.jsp" >view holder detail</a></li>
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