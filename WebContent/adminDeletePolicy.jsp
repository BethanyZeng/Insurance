<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	    <%@page import="sun.rmi.log.LogInputStream"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="action.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete policy</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<form id="loginForm" action="deletePolicyBack.jsp" name="policyForm">

		<div class="pid">
			please give the policy id that going to delete:<input type="text"
				name="pid" />
		</div>
		<div>
			<input type="submit" value="delete" />
		</div>
	</form>

</body>
</html>