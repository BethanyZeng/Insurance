<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin delete holder</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
	<form id="loginForm" action="deleteHolderBack.jsp" name="policyForm">

		<div class="hid">
			please give the holder id that going to delete:<input type="text"
				name="hid" />
		</div>
		<div>
			<input type="submit" value="delete" />
		</div>
	</form>
</body>
</html>