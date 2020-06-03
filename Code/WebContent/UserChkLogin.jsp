<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String ulid=request.getParameter("ulid");
String upass=request.getParameter("upass");

String q="select * from userreg where ulid='"+ulid+"' and upass='"+upass+"'";
//out.println(q);
ResultSet rs=DAO.displayRecord(q);

if(rs.next())
	{
		session=request.getSession(true);
		session.putValue("uaid", ulid);
		session.putValue("uapass", upass);
		session.putValue("utime", new java.util.Date().toString());
	response.sendRedirect("UserHome.jsp");
	
	}
	else
	out.println("ID / Password Not Matched...");
%>
</body>
</html>