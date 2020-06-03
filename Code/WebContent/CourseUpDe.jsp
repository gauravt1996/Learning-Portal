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
<form action="CourseUpDe1.jsp">
<center>
<table border="1">
<caption>Course Up/De</caption>
<%
try
{
String coid=request.getParameter("coid");
ResultSet rs= DAO.displayRecord("Select * from coursereg where coid='"+coid+"'");
if(rs.next())
{
	out.println("<tr><td>Course ID</td><td><input type=text name=coid value=\""+rs.getString(3)+"\" readonly=true></td></tr>");
	String cid=rs.getString(1);
	out.println("<tr><td>Category ID</td><td>"+cid);
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
	out.println("</td></tr>");
	String scid=rs.getString(2);
	out.println("<tr><td>Sub Category ID</td><td>"+scid);
	out.println("<select name=scid>");
	out.println("<option value=\"\">-Select Sub Category-</option>");
	
	ResultSet rs2=DAO.displayRecord("select * from subcategoryreg");
	
	if(rs2.next())
	{
		do
		{
			out.println("<option value="+rs1.getString(1)+">"+rs1.getString(2)+"</option>");
		}while(rs2.next());
		
	}
	
	out.println("</select>");
	out.println("</td></tr>");
	rs2.close();
	out.println("</td></tr>");
	out.println("<tr><td>Course Name</td><td><input type=text name=coname value=\""+rs.getString(4)+"\"></td></tr>");
	out.println("<tr><td>Course Icon</td><td><img src=adminimg/"+rs.getString(5)+"height=100 width=100><input type=file name=coicon></td></tr>");
	out.println("<tr><td>Course Desc</td><td><textarea name=codesc row=5 cols=25>"+rs.getString(6)+"</textarea></td></tr>");
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