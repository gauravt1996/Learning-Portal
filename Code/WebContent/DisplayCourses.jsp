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
<center>
<table border="2">
<caption>Course Display</caption>
<tr><th>Course Name</th><th>Course Icon</th><th>Course Description</th><th>Branches</th></tr>
<%
String q="Select * from coursereg";
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
	do
	{
	String coid=rs.getString(3);
out.println("<tr><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><a href=DisplayBranches.jsp?coid="+coid+">Show</a></td></tr>");	
}while(rs.next());
	}
rs.close();
%>
</table>
</center>

</body>
</html>