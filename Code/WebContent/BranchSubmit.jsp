<%@page import="gt.model.Branch"%>
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
Branch b=new Branch();
b.setCoid(request.getParameter("coid"));
b.setBname(request.getParameter("bname"));
b.setBicon(request.getParameter("bicon"));
b.setBdesc(request.getParameter("bdesc"));

String res=DAO.addNewRecord("Insert into branchreg(coid,bname,bicon,bdesc)values('"+b.getCoid()+"','"+b.getBname()+"','"+b.getBicon()+"','"+b.getBdesc()+"')");

if(res.equalsIgnoreCase("yes"))
		
	out.println("Inserted");
else
	
	out.println("Not Inserted");
}
catch(Exception e)
{
out.println("Error"+e);	
}
%>
</body>
</html>