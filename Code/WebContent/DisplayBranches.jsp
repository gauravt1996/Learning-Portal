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
<table border="2">
<Center>
<caption>Branch Display</caption>
<tr><th>Course Name</th><th>Branch Name</th><th>Branch Icon</th><th>Branch Description</th><th>Subjects</th></tr>
<%
String coid=request.getParameter("coid");
String q="Select coname,bid,bname,bicon,bdesc from coursereg c,branchreg b where c.coid='"+coid+"'and c.coid=b.coid";
out.println(q);
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
	do
	{
	String bid=rs.getString(2);
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(3)+"</td><td><img src=adminimg"+rs.getString(4)+"height=100 width=100></td><td>"+rs.getString(5)+"</td><td><a href=DisplaySubjects.jsp?bid="+bid+"&coid="+coid+">Subjects</a></td></tr>");	
}while(rs.next());
}
rs.close();
%>
</table>
</center>

</body>
</html>