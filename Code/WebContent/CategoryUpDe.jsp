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
<form action="CategoryUpDe1.jsp">
<center>
<table border="1">
<caption>Category Up/De</caption>
<%
try
{
String cid=request.getParameter("cid");
ResultSet rs= DAO.displayRecord("Select * from categoryreg where cid='"+cid+"'");
if(rs.next())
{
	out.println("<tr><td>Category ID</td><td><input type=text name=cid value=\""+rs.getString(1)+"\" readonly=true></td></tr>");	
	out.println("<tr><td>Category Name</td><td><input type=text name=cname value=\""+rs.getString(2)+"\"></td></tr>");
	out.println("<tr><td>Category Icon</td><td><img src=adminimg/"+rs.getString(3)+"height=100 width=100><input type=file name=cicon></td></tr>");
	out.println("<tr><td>Category Desc</td><td><textarea name=cdesc row=5 cols=25>"+rs.getString(4)+"</textarea></td></tr>");
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