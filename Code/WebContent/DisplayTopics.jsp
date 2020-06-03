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
<table border="1">
<caption>Topic Display</caption>

<tr><th>Subject ID</th><th>Topic ID</th><th>Topic Name</th><th>Topic Text</th><th>Topic Description</th><th>Topic File</th><th>Topic Image</th><th>Download</th></tr>
<% 
String sid=request.getParameter("sid");
String q="Select sname,tid,tname,ttext,tdesc,tfile,timg from subjectreg s,topicreg t where s.sid='"+sid+"'and s.sid=t.sid";
ResultSet rs= DAO.displayRecord(q);
if(rs.next())
{
	do
	{
		String tid=rs.getString(2);
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td><a href="+rs.getString(6)+" download>Download</a></td></tr>");	
	}while(rs.next());
	}
rs.close();

%>
</table>

</body>
</html>