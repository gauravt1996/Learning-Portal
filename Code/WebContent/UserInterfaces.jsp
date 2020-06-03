<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.*" %>
    <%@ page import="gt.model.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Learning Web Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.js"></script>
<!-- Homepage Only Scripts -->
<script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
<script type="text/javascript">
$(function() {
    $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
        timeout: 5000,
        fx: 'fade',
        pager: '#fs_pagination',
        pause: 1,
        pauseOnPagerHover: 0
    });
});
</script>
<style>
#errorBox{
	color:#F00;
	}



</style>
<script type="text/javascript">

function validate(){
    if ((document.example2.ulid.value=="")){
    	document.example2.ulid.focus();
		document.getElementById("errorBox").innerHTML = "enter the login id";
		        return false
	}
    if ((document.example2.upass.value=="")){
    	document.example2.upass.focus();
		document.getElementById("errorBox").innerHTML = "enter the password";
	        return false
    }
    if ((document.example2.pwd.value=="")){
	        alert("Enter Your Password!")
	        return false
    }
    if ((document.example2.cpwd.value=="")){
		        alert("Enter Your Confirm Password!")
		        return false
    }
    if ((document.example2.mob.value=="")){
		        alert("Enter Your Mobile!")
		        return false
    }
    if ((document.example2.dob.value=="")){
		        alert("Enter Your Date of Birth!")
		        return false
    }
    if ((document.example2.eid.value=="")){
		        alert("Enter Your E-Mail-ID!")
		        return false
    }
    if ((document.example2.qid.value=="")){
		        alert("Select Your Question!")
		        return false
    }
    if ((document.example2.sa.value=="")){
		        alert("Enter Your Answer!")
		        return false
    }
    else
        return true
}

</script>


</head>
<body>


<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      <div class="topbox">
        <h2>Nullamlacus dui ipsum</h2>
        <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna. Urnaultrices quis curabitur phasellentesque congue magnis vestibulum quismodo nulla et feugiat. Adipisciniapellentum leo ut consequam ris felit elit id nibh sociis malesuada.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
      <div class="topbox">
        <h2>Admin Login Here</h2>
        <form action="AdminChkLogin" method="post">
          <fieldset>
            <legend>Teachers Login Form</legend>
            <label for="teachername">Username:
              <input type="text" name="teachername" id="teachername" value="" />
            </label>
            <label for="teacherpass">Password:
              <input type="password" name="teacherpass" id="teacherpass" value="" />
            </label>
            <label for="teacherremember">
              <input class="checkbox" type="checkbox" name="teacherremember" id="teacherremember" checked="checked" />
              Remember me</label>
            <p>
              <input type="submit" name="teacherlogin" id="teacherlogin" value="Login" />
              &nbsp;
              <input type="reset" name="teacherreset" id="teacherreset" value="Reset" />
            </p>
          </fieldset>
        </form>
      </div>
      <div class="topbox last">
        <h2>User Login Here</h2>
        <form action="UserChkLogin.jsp" method="post">
          <fieldset>
            <legend>User Login Form</legend>
            <label for="pupilname">Username:
              <input type="text" name="ulid" id="pupilname" value="" />
            </label>
            <label for="pupilpass">Password:
              <input type="password" name="upass" id="pupilpass" value="" />
            </label>
            <label for="pupilremember">
              <input class="checkbox" type="checkbox" name="pupilremember" id="pupilremember" checked="checked" />
              Remember me</label>
            <p>
              <input type="submit" name="pupillogin" id="pupillogin" value="Login" />
              &nbsp;
              <input type="reset" name="pupilreset" id="pupilreset" value="Reset" />
              &nbsp;&nbsp;
              <a href="UserInterfaces.jsp">New User</a>
              &nbsp;&nbsp;
              <a href="ForgetPassword.jsp">Forget Password</a>
            </p>
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
    <div id="loginpanel">
      <ul>
        <li class="left">Log In Here &raquo;</li>
        <li class="right" id="toggle"><a id="slideit" href="#slidepanel">Administration</a><a id="closeit" style="display: none;" href="#slidepanel">Close Panel</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="UserLogin.jsp">Learning Portal</a></h1>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="UserLogin.jsp">Home</a></li>
        <li><a href="pages/style-demo.html">Style Demo</a></li>
        <li><a href="pages/full-width.html">Full Width</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div class="featured_box"><a href="#"><img src="images/python-logo.png" alt="" /></a>
      <div class="floater">
        <h2>Python</h2>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/1462519447.jpg"es/" alt="" /></a>
      <div class="floater">
        <h2>Java</h2>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/php-logo.png" alt="" /></a>
      <div class="floater">
        <h2>php</h2>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/logo-c-3.jpg" alt="" /></a>
      <div class="floater">
        <h2>CSS</h2>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/C-CPP-LOGO.jpg" alt="" /></a>
      <div class="floater">
        <h2>C & C++</h2>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </div>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
    <div class="fl_middle">
      <div class="column2">
        <ul>
          <li>
          
          <form action="UserSubmit.jsp" name="example2" onsubmit="return validate()" method="post">
<center>
<table border="2">
<caption>User Registration</caption>
<div id="errorBox"></div>
<tr><td>Enter User Name</td><td><div>
        <input type="text" name="uname" value="" placeholder="Name"  class="input_name" required="">
       </div></td></tr>

<tr><td>Enter User Mobile</td><td><div id="password_form">
        <input type="numeric" name="umob" value=""  placeholder="Mobile Number" class="input_password" required="">
      </div>
      </td></tr>

<tr><td>Enter User Email</td><td><div id="email_form">
        <input type="email" name="uemail" value=""  placeholder="Your Email" class="input_email" required="*">
      </div></td></tr>

<tr><td>Enter User Login ID</td><td><div id="login_form">
        <input type="text" name="upass" value=""  placeholder="Login ID" class="input_loginid" required="">
      </div>
      </td></tr>

<tr><td>Enter User Login Password</td><td><div id="password_form">
        <input type="password" name="upass" value=""  placeholder="New Password" class="input_password" required="">
      </div>
      </td></tr>

<tr><td><input type="submit" value="Sign Up"  onclick="ValidateNo();"></td><td><input type="reset"></td></tr>
</table>



</center>
</form>
          
          
          
          
          
          
          
          
            </li>
        </ul>
        <br class="clear" />
      </div>
      <div class="column2">
        <h2>All about here is to Study!!</h2>
        <img class="imgl" src="images/MajorMinor_web.jpeg" alt="" />
        <p>This is a W3C standards compliant free website template from <a href="http://www.os-templates.com/">OS Templates</a>.</p>
        <p>This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer. For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>.</p>
        <p>Morbitincidunt maurisque eros molest nunc anteget sed vel lacus mus semper. Anterdumnullam interdum eros dui urna consequam ac nisl nullam ligula vestassa.</p>
        <p>Condimentumfelis et amet tellent quisquet a leo lacus nec augue accumsan. Sagittislaorem dolor ipsum at urna et pharetium malesuada nis consectus odio.</p>
      </div>
        <div class="column2">
        <ul>
        <li class="last">
          <div class="imgholder"></div>
          <p><%
          try
          {
        	  String q="Select count(uid) from userreg";
        	  ResultSet rs=DAO.displayRecord(q);
        	  String uid=rs.getString(1);
        	  out.println("Registered Users= "+uid); 
          }
          catch(Exception e)
          {
        	  
        	  out.println(e);
          }
          %></p>
          <p>Feugiatrutrum rhoncus semper enim massa eu intesque ipsum velit orci dolorem. Atnatis dolor tincidunt nulla elit auctortis laculisi elit fauctortor natis loreet.</p>
        </li>
      </ul>
      </div>
     </div>
     </div>
    <br class="clear" />
  </div>
  
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="footer">
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox last">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; Gaurav Taluja</p>
    <br class="clear" />
  </div>
</div>



</body>
</html>