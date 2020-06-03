<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ page import="gt.dao.*" %>
	<%@ page import="gt.model.*" %>
	<%@ page import="java.sql.*" %>
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
}
%>
<form action="SubjectSubmit.jsp">
<center>
<table border="2">
<caption>Subject Interface</caption>

<tr><td>Select Course</td><td><select name=coid>
<option value="">-Select Course-</option>
<%
String q="Select * from coursereg";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
do
{
out.println("<option value="+rs.getString(3)+">"+rs.getString(4)+"</option>");	
}while(rs.next());
}
%>
</select></td></tr>


<tr><td>Select Branch</td><td><select name=bid>
<option value="">-Select Branch-</option>
<%
q="Select * from branchreg";
rs=DAO.displayRecord(q);
if(rs.next())
{
do
{
out.println("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");	
}while(rs.next());
}
%>
</select></td></tr>

<tr><td>Enter subject Name</td><td><input type="text" name="sname"></td></tr>

<tr><td>Enter subject Icon</td><td><input type="file" name="sicon"></td></tr>

<tr><td>Enter subject Desc</td><td><textarea name="sdesc"></textarea></td></tr>

<tr><td><input type="submit"></td><td><input type="reset"></td></tr>

</table>

<table border="2">
<caption>Subject Display</caption>
<tr><th>Course Id</th><th>Branch Id</th><th>Subject Id</th><th>Subject Name</th><th>Subject Icon</th><th>Subject Description</th><th>Action</th></tr>
<%
q="Select * from subjectreg";
rs=DAO.displayRecord(q);
if(rs.next())
{
	do
	{
	String sid=rs.getString(3);
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+sid+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><a href=SubjectUpDe.jsp?sid="+sid+">Update / Delete</a></td></tr>");	
}while(rs.next());
}
rs.close();
%>
</table>
</center>
</form>
</body>
</html>