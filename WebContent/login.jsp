<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
<script>
    function check(){
    	//var type=document.loginForm.userType.value;
    	var type=0;
    	var ele=document.getElementsByName("userType");
    	for( i = 0; i < ele.length; i++) { 
            if(ele[i].checked) 
            type=ele[i].value; 
        } 
    	var name= document.loginForm.name.value;
    	var pwd= document.loginForm.pwd.value; 

        if(type==0){
            alert('Please choose your user Type');
            return false;       
        }
         if(name==0){
            alert('Please Enter username');
            document.loginForm.name.focus();
            return false;       
        } if(pwd==0){
            alert('Please Enter Password');
            document.loginForm.pwd.focus();
            return false;         
        } 
    }
    
</script>
</head>
<body class="loginBody">
	<div  class="loginBack" >
	<form id="loginForm" name="loginForm" action="loginBack.jsp" onsubmit="return check()">
		<div class="loginUserType">
			<input type="radio" name="userType" value="admin"> admin </input>
			<input type="radio" name="userType" value="agent"> agent </input>
			<input type="radio" name="userType" value="holder"> holder </input>
		</div>
		<div class="userType">
			<input type="text" placeholder="User ID" name="name"/>
		</div>
		<div class="loginPassword">
			<input type="text" placeholder="password" name="pwd"/>
		</div>
		<div>
		<input type="submit" value="Login"/>
		</div>
	</form>
	</div>

</body>
</html>