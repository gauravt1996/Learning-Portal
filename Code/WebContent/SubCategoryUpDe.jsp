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
<form action="SubCategoryUpDe1.jsp">
<center>
<table border="1">
<caption>Sub Category Up/De</caption>
<%
try
{
String scid=request.getParameter("scid");
ResultSet rs= DAO.displayRecord("Select * from subcategoryreg where scid='"+scid+"'");
if(rs.next())
{
	out.println("<tr><td>Sub Category ID</td><td><input type=text name=scid value=\""+rs.getString(1)+"\" readonly=true></td></tr>");
	String cid=rs.getString(2);
	out.println("<tr><td>Category ID</td><td>");
	out.println("<select name=cid>");
	out.println("<option value=\"\">-Select Category-</option>");
	
	ResultSet rs1=DAO.displayRecord("select * from categoryreg");
	
	if(rs1.next())
	{
		do
		{
			out.println("<option value="+rs1.getString(1)+">"+rs1.getString(2)+"</option>");
		}while(rs1.next());
		
	}
	
	out.println("</select>");
	out.println("</td></tr>");
	rs1.close();
	out.println("<tr><td>Sub Category Name</td><td><input type=text name=scname value=\""+rs.getString(3)+"\"></td></tr>");
	out.println("<tr><td>Sub Category Icon</td><td><img src=adminimg/"+rs.getString(4)+"height=100 width=100><input type=file name=scicon></td></tr>");
	out.println("<tr><td>Sub Category Desc</td><td><textarea name=scdesc row=5 cols=25>"+rs.getString(5)+"</textarea></td></tr>");
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