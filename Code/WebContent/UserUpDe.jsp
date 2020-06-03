<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="gt.dao.*" %>
    <%@page import="gt.model.*" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="UserUpDe1.jsp">
<center>
<table border="1">
<caption>User Up/De</caption>
<%
try
{
String uid=request.getParameter("uid");
ResultSet rs= DAO.displayRecord("Select * from userreg where uid='"+uid+"'");
if(rs.next())
{
	out.println("<tr><td>User ID</td><td><input type=text name=uid value=\""+rs.getString(1)+"\" readonly=true></td></tr>");	
	out.println("<tr><td>User Name</td><td><input type=text name=uname value=\""+rs.getString(2)+"\"></td></tr>");
	out.println("<tr><td>User Mobile</td><td><input type=number name=umob value=\""+rs.getString(3)+"\"></td></tr>");
	out.println("<tr><td>User Email</td><td><input type=text name=uemail value=\""+rs.getString(4)+"\"></td></tr>");
	out.println("<tr><td>User Login ID</td><td><input type=text name=ulid value=\""+rs.getString(5)+"\"></td></tr>");
	out.println("<tr><td>User User Password</td><td><input type=text name=upass value=\""+rs.getString(6)+"\"></td></tr>");
	out.println("<tr><td><input type=submit name=btn value=Update></td><td><input type=submit name=btn value=Delete></td></tr>");
}
else
{	
}
rs.close();
}
catch(Exception e)
{
out.println("Error:"+e);	
}
%>
</table>
</center>
</form>
</body>
</html>