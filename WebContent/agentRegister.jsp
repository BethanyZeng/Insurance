<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />


 <script>
    function check(){
    	var aname=document.agentForm.aname.value;
    	var acard=document.agentForm.acard.value;
    	var abank=document.agentForm.abank.value;
    	var abirth=document.agentForm.abirth.value;
    	var asex=document.agentForm.asex.value;
    	var aoccu=document.agentForm.aoccu.value;
    	var aincome=document.agentForm.aincome.value;
    	var aadd=document.agentForm.aadd.value;
    	var amob=document.agentForm.amob.value;
    	var aemail=document.agentForm.aemail.value;
    	var aamout=document.agentForm.aamout.value;
    	var apwd=document.agentForm.apwd.value;
    	
         if(aname==0){
            alert('Please Enter username');
            document.agentForm.aname.focus();
            return false;       
        } 
         if(acard==0){
             alert('Please Enter credit card number');
             document.agentForm.acard.focus();
             return false;       
         } 
         if(abank==0){
             alert('Please Enter credit card bank');
             document.agentForm.abank.focus();
             return false;       
         } 
         var dateFilter=/^\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])$/i;
         if(dateFilter.test(abirth)==false)
         {
         alert("Please enter your birthday YYYY-MM-DD");
         document.agentForm.abirth.focus();
         return false;
         }
         if(abirth==0){
             alert('Please Enter birthday YYYY-MM-DD');
             document.agentForm.abirth.focus();
             return false;       
         } 
         if(asex==0){
             alert('Please Enter gender');
             document.agentForm.asex.focus();
             return false;       
         } 
         if(aoccu==0){
             alert('Please Enter occupation');
             document.agentForm.aoccu.focus();
             return false;       
         } 
         if(aincome==0){
             alert('Please Enter income');
             document.agentForm.aincome.focus();
             return false;       
         } 
         if(aadd==0){
             alert('Please Enter address');
             document.agentForm.aadd.focus();
             return false;       
         } 
         if(amob==0){
             alert('Please Enter mobile phone number');
             document.agentForm.amob.focus();
             return false;       
         } 
         var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
         var emailTest=emailfilter.test(aemail);
         if(emailTest==false)
         {
         alert("Please enter a valid Email Id");
         document.agentForm.aemail.focus();
         return false;
         }
         if(aemail==0){
             alert('Please Enter email');
             document.agentForm.aemail.focus();
             return false;       
         } 
         if(aamout==0){
             alert('Please Enter amount');
             document.agentForm.aamout.focus();
             return false;       
         } 
         if(apwd==0){
             alert('Please Enter password');
             document.agentForm.apwd.focus();
             return false;       
         } 
    }
    
</script>
</head>
<body>

	<form id="loginForm" action="agentRegisterBack.jsp" name="agentForm" onsubmit="return check()">

		<div class="aname">
			<input type="text" placeholder="Name" name="aname" />
		</div>
		<div class="acard">
			<input type="text" placeholder="Credit Card Number" name="acard" />
		</div>
		<div class="abank">
			<input type="text" placeholder="Credit Card Bank" name="abank" />
		</div>
		<div class="abirth">
			<input type="date" placeholder="birthday yyyy-mm-dd" name="abirth" />
		</div>
		<div class="asex">
			<select name="asex">
			<option value="" disabled selected>Please select your gender</option>
				<option value="male">male</option>
				<option value="female">female</option>
			</select>
		</div>
		<div class="aoccu">
			<input type="text" placeholder="occupation" name="aoccu" />
		</div>
		<div class="aincome">
			<input type="text" placeholder="income" name="aincome" />
		</div>
		<div class="aadd">
			<input type="text" placeholder="address" name="aadd" />
		</div>
		<div class="amob">
			<input type="text" placeholder="moblie phone number" name="amob" />
		</div>
		<div class="aemail">
			<input type="text" placeholder="email" name="aemail" />
		</div>
		<div class="aamout">
			<input type="text" placeholder="amount" name="aamout" />
		</div>
				<div class="apwd">
			<input type="text" placeholder="password" name="apwd" />
		</div>
				<div>
		<input type="submit" value="sign up" />
		</div>

	</form>

</body>
</html>