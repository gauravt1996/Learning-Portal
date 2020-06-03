<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="gt.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="CategorySubmit.jsp">
<%
try
{
session=request.getSession(false);
String lplid=session.getValue("lpaid").toString();
String lptime=session.getValue("lptime").toString();
}
catch(Exception e)
{
response.sendRedirect("AdminLogin.jsp");
}%>
<center>
<table border="2">
<caption>Sub Category Interface</caption>

<tr><td>Enter Ctegory Name</td><td><input type="text" name="cname"></td></tr>

<tr><td>Enter Category Icon</td><td><input type="file" name="cicon"></td></tr>

<tr><td>Enter Category Desc</td><td><textarea name="cdesc"></textarea></td></tr>

<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table>

<table border="1">
<caption>Category Display</caption>

<tr><th>Category ID</th><th>Category Name</th><th>Category Icon</th><th>Category Desc</th><th>Action</th></tr>
<% 
String q="Select * from categoryreg";
ResultSet rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String cid=rs.getString(1);
		out.println("<tr><td>"+cid+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td><a href=CategoryUpDe.jsp?cid="+cid+">Update / Delete</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>


</center>
</form>
</body>
</html>