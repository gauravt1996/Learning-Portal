<%@page import="gt.model.Course"%>
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
String slid=session.getValue("said").toString();
String stime=session.getValue("stime").toString();
}
catch(Exception e)
{
response.sendRedirect("AdminLogin.jsp");	
}
%>
<%
try
{
Course c=new Course();
c.setCid(request.getParameter("cid"));
c.setScid(request.getParameter("scid"));
c.setCourseid(request.getParameter("coid"));
c.setCoursename(request.getParameter("coname"));
c.setCourseicon(request.getParameter("coicon"));
c.setCoursedesc(request.getParameter("codesc"));
String btn=request.getParameter("btn");
String res="";
if(btn.equals("Update"))
{
if(c.getCourseicon().equals(""))
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
	res = DAO.addNewRecord("update coursereg set cid='"+c.getCid()+"',scid='"+c.getScid()+"',coname='"+c.getCoursename()+"',codesc='"+c.getCoursedesc()+"', coicon='"+c.getCourseicon()+"' where coid='"+c.getCourseid()+"'");
	}
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);
}

else
{
	res = DAO.addNewRecord("delete from coursereg where coid='"+c.getCourseid()+"'");
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