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
<form action="SubjectUpDe1.jsp">
<center>
<table border="1">
<caption>Subject Up/De</caption>
<%
try
{
String sid=request.getParameter("sid");
ResultSet rs= DAO.displayRecord("Select * from subjectreg where sid='"+sid+"'");
if(rs.next())
{
	out.println("<tr><td>Course ID</td><td><input type=text name=coid value=\""+rs.getString(1)+"\" ></td></tr>");
	out.println("<tr><td>Branch ID</td><td><input type=text name=bid value=\""+rs.getString(2)+"\"></td></tr>");
	out.println("<tr><td>Subject ID</td><td><input type=text name=sid value=\""+rs.getString(3)+"\" readonly=true></td></tr>");
	out.println("<tr><td>Subject Name</td><td><input type=text name=sname value=\""+rs.getString(4)+"\"></td></tr>");
	out.println("<tr><td>Subject Icon</td><td><img src=adminimg/"+rs.getString(5)+"height=100 width=100><input type=file name=sicon></td></tr>");
	out.println("<tr><td>Subject Desc</td><td><textarea name=sdesc row=5 cols=25>"+rs.getString(6)+"</textarea></td></tr>");
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