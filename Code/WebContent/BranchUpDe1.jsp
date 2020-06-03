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
String slid=session.getValue("lpaid").toString();
String stime=session.getValue("lptime").toString();
}
catch(Exception e)
{
response.sendRedirect("AdminLogin.jsp");	
}
%>
<%
try
{
Branch sc=new Branch();
sc.setCoid(request.getParameter("coid"));
sc.setBid(request.getParameter("bid"));
sc.setBname(request.getParameter("bname"));
sc.setBicon(request.getParameter("bicon"));
sc.setBdesc(request.getParameter("bdesc"));
String btn=request.getParameter("btn");
String res="";
if(btn.equals("Update"))
{
if(sc.getBicon().equals(""))
{
	if(sc.getCoid().equals(""))
	{
		res = DAO.addNewRecord("update branchreg set bname='"+sc.getBname()+"',bdesc='"+sc.getBdesc()+"' where bid='"+sc.getBid()+"'");
	}
	else
	{
		res = DAO.addNewRecord("update branchreg set coid='"+sc.getCoid()+"',bname='"+sc.getBname()+"',bdesc='"+sc.getBdesc()+"' where bid='"+sc.getBid()+"'");
	}
}
else
{
	if(sc.getCoid().equals(""))
	{
	res = DAO.addNewRecord("update branchreg set bname='"+sc.getBname()+"',bdesc='"+sc.getBdesc()+"', bicon='"+sc.getBicon()+"' where bid='"+sc.getBid()+"'");
	}
	else
	{
		res = DAO.addNewRecord("update branchreg set cid='"+sc.getCoid()+"',bname='"+sc.getBname()+"',bdesc='"+sc.getBdesc()+"', bicon='"+sc.getBicon()+"' where bid='"+sc.getBid()+"'");	
	}
	}
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);
}

else
{
	res = DAO.addNewRecord("delete from branchreg where bid='"+sc.getBid()+"'");
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