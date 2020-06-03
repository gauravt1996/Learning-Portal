<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="gt.dao.*" %>
    <%@page import="gt.model.*" %>
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
	SubCategory sc=new SubCategory();
	sc.setCid(request.getParameter("cid"));
	sc.setSubcategoryid(request.getParameter("scid"));
	sc.setSubcategoryname(request.getParameter("scname"));
	sc.setSubcategoryicon(request.getParameter("scicon"));
	sc.setSubcategorydesc(request.getParameter("scdesc"));
	

	
	String res= DAO.addNewRecord("insert into subcategoryreg(cid,scname,scicon,scdesc) values("+sc.getCid()+",'"+sc.getSubcategoryname()+"','"+sc.getSubcategoryicon()+"','"+sc.getSubcategorydesc()+"')");
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