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
<caption>Subject Display</caption>
<tr><th>Course Name</th><th>Branch Name</th><th>Subject Name</th><th>Subject Icon</th><th>Subject Description</th><th>Topics</th></tr>
<%
String bid=request.getParameter("bid");
String coid=request.getParameter("coid");
String q="Select coname,bname,sid,sname,sicon,sdesc from coursereg c,branchreg b,subjectreg s where c.coid='"+coid+"' and b.bid='"+bid+"'and b.bid=s.bid";
out.println(q);
ResultSet rs=DAO.displayRecord(q);
if(rs.next())
{
	do
	{
	String sid=rs.getString(3);
out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><a href=DisplayTopics.jsp?sid="+sid+">Topics</a></td></tr>");	
}while(rs.next());
}
rs.close();
%>
</table>

</body>
</html>