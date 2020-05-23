<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin add policy</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
<script>
    function check(){
    	var pname=document.policyForm.pname.value;
    	var pweek=document.policyForm.pweek.value;
    	var pmonth=document.policyForm.pmonth.value;
    	var pqua=document.policyForm.pqua.value;
    	var phalf=document.policyForm.phalf.value;
    	var pyear=document.policyForm.pyear.value;
    	
         if(pname==0){
            alert('Please Enter policy name');
            document.policyForm.pname.focus();
            return false;       
        } 
         if(pweek==0){
             alert('Please Enter weekly interest');
             document.policyForm.pweek.focus();
             return false;       
         }
         if(pmonth==0){
             alert('Please Enter monthly interest');
             document.policyForm.pmonth.focus();
             return false;       
         }
         if(pqua==0){
             alert('Please Enter quarter interest');
             document.policyForm.pqua.focus();
             return false;       
         }
         if(phalf==0){
             alert('Please Enter half interest');
             document.policyForm.phalf.focus();
             return false;       
         }
         if(pyear==0){
             alert('Please Enter yearly interest');
             document.policyForm.pyear.focus();
             return false;       
         }
    }
    
</script>
</head>
<body>
<form id="loginForm" action="adminAddPolicyBack.jsp" name="policyForm" onsubmit="return check()">

		<div class="pname">
			<input type="text" placeholder="Policy Name" name="pname" />
		</div>
		<div class="pweek">
			<input type="text" placeholder="weekly interest" name="pweek" />
		</div>
		<div class="pmonth">
			<input type="text" placeholder="monthly interest" name="pmonth" />
		</div>
		<div class="pqua">
			<input type="date" placeholder="quarter interest" name="pqua" />
		</div>
		
		<div class="phalf">
			<input type="text" placeholder="half interest" name="phalf" />
		</div>
		<div class="pyear">
			<input type="text" placeholder="year interest" name="pyear" />
		</div>
		
		<div>
		<input type="submit" value="add"/>
		</div>

	</form>
</body>
</html>