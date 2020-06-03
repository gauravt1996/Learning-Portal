<%@page import="gt.model.Subject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.*" %>
    <%@ page import="gt.model.*" %>
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
<%
try
{
Subject s=new Subject();

s.setCoid(request.getParameter("coid"));
s.setBid(request.getParameter("bid"));
s.setSname(request.getParameter("sname"));
s.setSicon(request.getParameter("sicon"));
s.setSdesc(request.getParameter("sdesc"));

String res=DAO.addNewRecord("Insert into subjectreg(coid,bid,sname,sicon,sdesc)values('"+s.getCoid()+"','"+s.getBid()+"','"+s.getSname()+"','"+s.getSicon()+"','"+s.getSdesc()+"')");

if(res.equalsIgnoreCase("yes"))
		
	out.println("Inserted");
else
	
	out.println("Not Inserted");
}
catch(Exception e)
{
	out.println("Error:"+e);
}
%>
</body>
</html>