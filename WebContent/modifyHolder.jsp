<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>modify holder</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
<script>
    function check(){
    	var hid= document.loginForm.hid.value;
    	var hname=document.loginForm.hname.value;
    	var hcard= document.loginForm.hcard.value;
    	var hbank= document.loginForm.hbank.value; 
    	var hbirth= document.loginForm.hbirth.value;
    	var hsex= document.loginForm.hsex.value;
    	var hoccu= document.loginForm.hoccu.value;
    	var hincome= document.loginForm.hincome.value;
    	var hadd= document.loginForm.hadd.value;
    	var hemail= document.loginForm.hemail.value;
    	var hpolicy= document.loginForm.hpolicy.value;
    	var hpremium= document.loginForm.hpremium.value;
    	var hagent= document.loginForm.hagent.value;
    	var hstart= document.loginForm.hstart.value;
    	var hdue= document.loginForm.hdue.value;
    	
        if(hid==0){
            alert('Please enter holder ID that going to modify');
            document.loginForm.hid.focus();
            return false;       
        }
        if(hname==0){
            alert('Please Enter username');
            document.loginForm.hname.focus();
            return false;       
        }
         if(hcard==0){
            alert('Please Enter credit card number');
            document.loginForm.hcard.focus();
            return false;       
        } if(hbank==0){
            alert('Please Enter credit card bank');
            document.loginForm.hbank.focus();
            return false;         
        } 
        var dateFilter=/^\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])$/i;
        if(dateFilter.test(hbirth)==false)
        {
        alert("Please enter your birthday YYYY-MM-DD");
        document.loginForm.hbirth.focus();
        return false;
        }
        if(hbirth==0){
            alert('Please enter your birthday');
            document.loginForm.hbirth.focus();
            return false;       
        }
        if(hsex==0){
            alert('Please choose your gender');
            document.loginForm.hsex.focus();
            return false;       
        }
        if(hoccu==0){
            alert('Please enter occupation');
            document.loginForm.hoccu.focus();
            return false;       
        }
        
        if(hincome==0){
            alert('Please enter income');
            document.loginForm.hincome.focus();
            return false;       
        }
        if(hadd==0){
            alert('Please enter address');
            document.loginForm.hadd.focus();
            return false;       
        }
        var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
        var emailTest=emailfilter.test(hemail);
        if(emailTest==false)
        {
        alert("Please enter a valid Email Id");
        document.loginForm.hemail.focus();
        return false;
        }
        if(hemail==0){
            alert('Please enter email');
            document.loginForm.hemail.focus();
            return false;       
        }
        if(hpolicy==0){
            alert('Please choose your policy');
            document.loginForm.hpolicy.focus();
            return false;       
        }
        if(hpremium==0){
            alert('Please choose your premium Type');
            document.loginForm.hpremium.focus();
            return false;       
        }
        if(hagent==0){
            alert('Please enter your agent ID');
            document.loginForm.hagent.focus();
            return false;       
        }
        if(dateFilter.test(hstart)==false)
        {
        alert("Please enter your policy start date YYYY-MM-DD");
        document.loginForm.hstart.focus();
        return false;
        }
        if(hstart==0){
            alert('Please enter your policy start date');
            document.loginForm.hstart.focus();
            return false;       
        }
        if(dateFilter.test(hdue)==false)
        {
        alert("Please enter your policy due date YYYY-MM-DD");
        document.loginForm.hdue.focus();
        return false;
        }
        if(hdue==0){
            alert('Please enter your policy due date');
            document.loginForm.hdue.focus();
            return false;       
        }

    }
    
</script>
</head>
<body>
<form id="loginForm" action="modifyHolderBack.jsp" name="loginForm" onsubmit="return check()">
		<div class="hid">
			<input type="text" placeholder="id" name="hid" />
		</div>
		<div class="hname">
			<input type="text" placeholder="Name" name="hname" />
		</div>
		<div class="hcard">
			<input type="text" placeholder="Credit Card NUmber" name="hcard" />
		</div>
		<div class="hbank">
			<input type="text" placeholder="Credit Card Bnak" name="hbank" />
		</div>
		<div class="hbirth">
			<input type="date" placeholder="birthday YYYY-MM-DD" name="hbirth" />
		</div>
		<div class="hsex">
			<select name="hsex">
				<option value="" disabled selected>Please select your gender</option>
				<option value="male">male</option>
				<option value="female">female</option>
			</select>
		</div>

		<div class="hoccu">
			<input type="text" placeholder="occupation" name="hoccu" />
		</div>
		<div class="hincome">
			<input type="text" placeholder="income" name="hincome" />
		</div>
		<div class="hadd">
			<input type="text" placeholder="address" name="hadd" />
		</div>
		<div class="hemail">
			<input type="text" placeholder="email address" name="hemail" />
		</div>
		<div class="hpolicy">
			<input type="select" placeholder="policy name" name="hpolicy" />
				</div>
		<div class="hpremium">
			<select name="hpremium">
				<option value="" disabled selected>Please select premium</option>
				<option value="weekly">weekly</option>
				<option value="monthly">monthly</option>
				<option value="quarter">quarter</option>
				<option value="half">half</option>
				<option value="year">year</option>
			</select>
		</div>
		<div class="hagent">
			<input type="text" placeholder="agent ID" name="hagent" />
		</div>
		<div class="hstart">
			<input type="date" placeholder="policy start date YYYY-MM-DD"
				name="hstart" />
		</div>
		<div class="hdue">
			<input type="date" placeholder="policy due date YYYY-MM-DD"
				name="hdue" />
		</div>
						<div class="hpwd">
			<input type="text" placeholder="password" name="hpwd" />
		</div>
				<div>
		<input type="submit" value="update"/>
		</div>

	</form>
</body>
</html>