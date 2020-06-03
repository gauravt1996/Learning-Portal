<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="gt.dao.*" %>
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
<%
try
{
session=request.getSession(false);
String lplid=session.getValue("lpaid").toString();
String lptime=session.getValue("lptime").toString();
%>

<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      <br class="clear" />
    </div>

<div id="loginpanel">
      <ul>
        <li class="right" id="toggle"><a href="AdmnLogout.jsp">Logout</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="AdminHome.jsp">Learning Portal</a></h1>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="AdminHome.jsp">Home</a></li>
        <li><a href="#">Style Demo</a></li>
        <li><a href="#">Full Width</a></li>
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
    
      <div class="column2">
        <ul>
          <li>
            
<center>
<table border="0">
<caption>Admin Home</caption>
<tr><td>Welcome: <%= lplid %></td><td>Login Time: <%= lptime%></td></tr>
<tr><td><a href="CategoryInterfaces.jsp" target="aa">Category</a>
<br><a href="SubCategoryInterfaces.jsp" target="aa">Sub Category</a>
<br><a href="CourseInterfaces.jsp" target="aa">Course</a>
<br><a href="BranchInterfaces.jsp" target="aa">Branch</a>
<br><a href="SubjectInterfaces.jsp" target="aa">Subject</a>
<br><a href="TopicInterfaces.jsp" target="aa">Topic</a></td><td><iframe name="aa" height="300" width="800"></iframe></td></tr>
</table>
</center>
<%
}
catch(Exception ex)
{
	response.sendRedirect("AdminLogin.jsp");
}
%>            
            
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
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
          <h2>User Name</h2>
          <p><%
          try
          {
        	  ResultSet rs=DAO.displayRecord("Select count(uid) from userreg");
        	  if(rs.next())
        	  {
        	  do
        	  {
        		  String uname=rs.getString(1);
        	  	  out.println("Registered Users= "+uname); 
        		}while(rs.next());
        	   }       
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