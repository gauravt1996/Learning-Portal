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
Subject c=new Subject();
c.setCoid(request.getParameter("coid"));
c.setBid(request.getParameter("bid"));
c.setSid(request.getParameter("sid"));
c.setSname(request.getParameter("sname"));
c.setSicon(request.getParameter("sicon"));
c.setSdesc(request.getParameter("sdesc"));
String btn=request.getParameter("btn");
String res="";
if(btn.equals("Update"))
{
if(c.getSicon().equals(""))
{
res = DAO.addNewRecord("update subjectreg set coid='"+c.getCoid()+"',bid='"+c.getBid()+"', sname='"+c.getSname()+"',sdesc='"+c.getSdesc()+"' where sid='"+c.getSid()+"'");
}
else
{
	res = DAO.addNewRecord("update subjectreg set coid='"+c.getCoid()+"',bid='"+c.getBid()+"',sname='"+c.getSname()+"',sdesc='"+c.getSdesc()+"', sicon='"+c.getSicon()+"' where sid='"+c.getSid()+"'");
	}
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);
}

else
{
	res = DAO.addNewRecord("delete from subjectreg where sid='"+c.getSid()+"'");
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