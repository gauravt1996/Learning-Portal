<%@page import="gt.model.SubCategory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="gt.dao.*" %>
    <%@page import="gt.model.*" %>
    <%@page import="java.sql.*" %>
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
SubCategory sc=new SubCategory();
sc.setCid(request.getParameter("cid"));
sc.setSubcategoryid(request.getParameter("scid"));
sc.setSubcategoryname(request.getParameter("scname"));
sc.setSubcategoryicon(request.getParameter("scicon"));
sc.setSubcategorydesc(request.getParameter("scdesc"));
String btn=request.getParameter("btn");
String res="";
if(btn.equals("Update"))
{
if(sc.getSubcategoryicon().equals(""))
{
	if(sc.getCid().equals(""))
	{
		res = DAO.addNewRecord("update subcategoryreg set scname='"+sc.getSubcategoryname()+"',scdesc='"+sc.getSubcategorydesc()+"' where scid='"+sc.getSubcategoryid()+"'");
	}
	else
	{
		res = DAO.addNewRecord("update subcategoryreg set cid='"+sc.getCid()+"',scname='"+sc.getSubcategoryname()+"',scdesc='"+sc.getSubcategorydesc()+"' where scid='"+sc.getSubcategoryid()+"'");
	}
}
else
{
	if(sc.getCid().equals(""))
	{
	res = DAO.addNewRecord("update subcategoryreg set scname='"+sc.getSubcategoryname()+"',scdesc='"+sc.getSubcategorydesc()+"', scicon='"+sc.getSubcategoryicon()+"' where scid='"+sc.getSubcategoryid()+"'");
	}
	else
	{
		res = DAO.addNewRecord("update subcategoryreg set cid='"+sc.getCid()+"',scname='"+sc.getSubcategoryname()+"',scdesc='"+sc.getSubcategorydesc()+"', scicon='"+sc.getSubcategoryicon()+"' where scid='"+sc.getSubcategoryid()+"'");	
	}
}	
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);

}
else
{
	res = DAO.addNewRecord("delete from subcategoryreg where scid='"+sc.getSubcategoryid()+"'");
	if(res.equalsIgnoreCase("yes"))
		out.println("Record Deleted...");
	else
		out.println(res);
	
}
}
catch(Exception e)
{
	out.println("Error:"+e);
}
%>
</body>
</html>