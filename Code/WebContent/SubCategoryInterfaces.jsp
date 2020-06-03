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
<form action="SubCategorySubmit.jsp">
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
<caption>Sub Category Interface</caption>

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

<tr><td>Enter Sub Ctegory Name</td><td><input type="text" name="scname"></td></tr>

<tr><td>Enter Sub Category Icon</td><td><input type="file" name="scicon"></td></tr>

<tr><td>Enter Sub Category Desc</td><td><textarea name="scdesc"></textarea></td></tr>

<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table>


<table border="1">
<caption>Sub Category Display</caption>

<tr><th>Sub Category ID</th><th>Category ID</th><th>Sub Category Name</th><th>Sub Category Icon</th><th>Sub Category Desc</th><th>Action</th></tr>
<% 
q="Select * from subcategoryreg";
rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String scid=rs.getString(1);
		out.println("<tr><td>"+scid+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td><a href=SubCategoryUpDe.jsp?scid="+scid+">Update / Delete</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>

</center>
</form>
</body>
</html>