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
}%>
<%
try
{
	Topic sc=new Topic();
	sc.setSid(request.getParameter("sid"));
	sc.setTid(request.getParameter("tid"));
	sc.setTname(request.getParameter("tname"));
	sc.setTtext(request.getParameter("ttext"));
	sc.setTdesc(request.getParameter("tdesc"));
	sc.setTfile(request.getParameter("tfile"));
	sc.setTimg(request.getParameter("timg"));
		

	String q="insert into topicreg(sid,tname,ttext,tdesc,tfile,timg) values('"+sc.getSid()+"','"+sc.getTname()+"','"+sc.getTtext()+"','"+sc.getTdesc()+"','"+sc.getTfile()+"','"+sc.getTimg()+"')";
	out.println(q);
	String res= DAO.addNewRecord(q);
	if(res.equalsIgnoreCase("yes"))
		out.println("Inserted");
	else
		out.println(res);
}
catch(Exception e)
{
out.println("Error:"+e);	
}
%>
</body>
</html>