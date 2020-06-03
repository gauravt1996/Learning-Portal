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
<form action="CourseSubmit.jsp">
<center>
<table border="2">
<caption>Course Interface</caption>

<tr><td>Select Category</td><td><select name="cid">
<option value="">-Select category-</option>
<%
String q="select * from categoryreg";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
do
{
out.println("<option value="+rs.getString(1)+">"+rs.getString(2)+"</option>");	
}while(rs.next());
}
%>
</select>
</td></tr>

<tr><td>Select Sub Category</td><td><select name="scid">
<option value="">-Select sub category-</option>
<%
q="select * from subcategoryreg";
rs=DAO.displayRecord(q);
if(rs.next())
{
do
{
out.println("<option value="+rs.getString(1)+">"+rs.getString(3)+"</option>");	
}while(rs.next());
}
%>
</select>
</td></tr>

<tr><td>Enter Course Name</td><td><input type="text" name="coname"></td></tr>

<tr><td>Enter Course Icon</td><td><input type="file" name="coicon"></td></tr>

<tr><td>Enter Course Desc</td><td><textarea name="codesc"></textarea></td></tr>

<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table>

<table border="2">
<caption>Course Display</caption>
<tr><th>Category Id</th><th>Sub Category Id</th><th>Course Id</th><th>Course Name</th><th>Course Icon</th><th>Course Description</th><th>Action</th></tr>
<%
q="Select * from coursereg";
rs=DAO.displayRecord(q);
if(rs.next())
{
do
{
String coid=rs.getString(3);
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+coid+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><a href=CourseUpDe.jsp?coid="+coid+">Update / Delete</a></td></tr>");	
}while(rs.next());
}
rs.close();
%>
</table>
</center>
</form>
</body>
</html>