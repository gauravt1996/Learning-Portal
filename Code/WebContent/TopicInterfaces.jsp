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
<form action="TopicSubmit.jsp">
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
}
%>
<center>
<table border="2">
<caption>Topic Interface</caption>

<tr><td>Select Subject</td><td><select name="sid">
<option value="">-Select Subject-</option>
<%

String q="select * from subjectreg";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
do
{
out.println("<option value="+rs.getString(3)+">"+rs.getString(4)+"</option>");	
}while(rs.next());
}
%>
</select>
</td></tr>

<tr><td>Enter Topic Name</td><td><input type="text" name="tname"></td></tr>

<tr><td>Enter Topic Text</td><td><input type="text" name="ttext"></td></tr>

<tr><td>Enter Topic Description</td><td><textarea name="tdesc"></textarea></td></tr>

<tr><td>Enter Topic File</td><td><input type="file" name="tfile"></td></tr>

<tr><td>Enter Topic Image</td><td><input type="file" name="timg"></td></tr>

<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table>


<table border="1">
<caption>Topic Display</caption>

<tr><th>Subject ID</th><th>Topic ID</th><th>Topic Name</th><th>Topic Text</th><th>Topic Description</th><th>Topic File</th><th>Topic Image</th><th>Action</th></tr>
<% 
q="Select * from topicreg";
rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String tid=rs.getString(2);
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+tid+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td><a href=TopicUpDe.jsp?tid="+tid+">Update / Delete</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>

</center>
</form>
</body>
</html>