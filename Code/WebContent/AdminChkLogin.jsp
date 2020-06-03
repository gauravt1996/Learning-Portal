<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String alid=request.getParameter("alid");
String pass=request.getParameter("pass");
if(alid.equals("admin")&&pass.equals("admin"))
	{
		session=request.getSession(true);
		session.putValue("lpaid", alid);
		session.putValue("lptime", new java.util.Date().toString());
	response.sendRedirect("AdminHome.jsp");
	
	}
	else
	response.sendRedirect("AdminLogin.jsp");
%>
</body>
</html>