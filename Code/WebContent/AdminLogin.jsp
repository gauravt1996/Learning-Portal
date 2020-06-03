<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#errorBox{
	color:#F00;
	}



</style>
<script type="text/javascript">

function validate(){
    if ((document.example2.alid.value=="")){
    	document.example2.alid.focus();
		document.getElementById("errorBox").innerHTML = "enter the login id";
		        return false
	}
    if ((document.example2.pass.value=="")){
    	document.example2.pass.focus();
		document.getElementById("errorBox").innerHTML = "enter the password";
	        return false
    }
    else
    	{
    	return true;
    	}
    	}
</script>

</head>
<body>
<form action="AdminChkLogin.jsp" name="example2" onsubmit="return validate()">
<center>
<table border="1">
<caption>Admin Login</caption>
<div id="errorBox"></div>
<tr><td>Enter Login ID </td><td><div id="email_form">
        <input type="text" name="alid" value=""  placeholder="Your Email" class="input_email">
      </div></td></tr>
<tr><td>Enter Password</td><td><div id="password_form">
        <input type="password" name="pass" value=""  placeholder="New Password" class="input_password">
      </div></td></tr>
<tr><td><input type="submit" value="Login" id="sign_user" onclick="ValidateNo();"></td><td><input type="reset"></td></tr>
</table>
</center>
</form>

</body>
</html>