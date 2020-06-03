<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.model.*" %>
    <%@ page import="gt.dao.*" %>
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
Category c=new Category();
c.setCategoryid(request.getParameter("cid"));
c.setCategoryname(request.getParameter("cname"));
c.setCategoryicon(request.getParameter("cicon"));
c.setCategorydesc(request.getParameter("cdesc"));
String btn=request.getParameter("btn");
String res="";
if(btn.equals("Update"))
{
if(c.getCategoryicon().equals(""))
{
res = DAO.addNewRecord("update categoryreg set cname='"+c.getCategoryname()+"',cdesc='"+c.getCategorydesc()+"' where cid='"+c.getCategoryid()+"'");
}
else
{
	res = DAO.addNewRecord("update categoryreg set cname='"+c.getCategoryname()+"',cdesc='"+c.getCategorydesc()+"', cicon='"+c.getCategoryicon()+"' where cid='"+c.getCategoryid()+"'");
	}
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);
}

else
{
	res = DAO.addNewRecord("delete from categoryreg where cid='"+c.getCategoryid()+"'");
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