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
<form action="BranchSubmit.jsp">
<center>
<table border="2">
<caption>Branch Interface</caption>

<tr><td>Select Course</td><td><select name="coid">
<option value="">-Select course-</option>
<%
String q="select * from coursereg";
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


<tr><td>Enter Branch Name</td><td><input type="text" name="bname"></td></tr>

<tr><td>Enter Branch Icon</td><td><input type="file" name="bicon"></td></tr>

<tr><td>Enter Branch Desc</td><td><textarea name="bdesc"></textarea></td></tr>

<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table>

<table border="2">
<caption>Course Display</caption>
<tr><th>Course Id</th><th>Branch Id</th><th>Branch Name</th><th>Branch Icon</th><th>Branch Description</th><th>Action</th></tr>
<%
q="Select * from branchreg";
rs=DAO.displayRecord(q);
if(rs.next())
{
	do
	{
	String bid=rs.getString(2);
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+bid+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td><a href=BranchUpDe.jsp?bid="+bid+">Update / Delete</a></td></tr>");	
}while(rs.next());
}
rs.close();
%>
</table>
</center>
</form>
</body>
</html>