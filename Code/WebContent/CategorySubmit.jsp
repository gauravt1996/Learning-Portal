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
String slid=session.getValue("lpaid").toString();
String stime=session.getValue("lptime").toString();
}
catch(Exception e)
{
response.sendRedirect("AdminLogin.jsp");
}%>
<%
try
{
	Category c=new Category();
	c.setCategoryname(request.getParameter("cname"));
	c.setCategoryicon(request.getParameter("cicon"));
	c.setCategorydesc(request.getParameter("cdesc"));
	
/*	String res= DAO.addNewRecord("insert into categoryreg (cname,cicon,cdesc) values('"+c.getCategoryname()+"','"+c.getCategoryicon()+"','"+c.getCategorydesc()+"')");
*/
	
	String res= DAO.addNewRecord("insert into categoryreg(cname,cicon,cdesc) values('"+c.getCategoryname()+"','"+c.getCategoryicon()+"','"+c.getCategorydesc()+"')");
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