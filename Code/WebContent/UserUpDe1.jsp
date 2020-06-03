<%@page import="gt.model.User"%>
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
User c=new User();
c.setUid(request.getParameter("uid"));
c.setUname(request.getParameter("uname"));
c.setUmob(request.getParameter("umob"));
c.setUemail(request.getParameter("uemail"));
c.setUlid(request.getParameter("ulid"));
c.setUpass(request.getParameter("upass"));
String btn=request.getParameter("btn");
String res="";
if(btn.equals("Update"))
{
res = DAO.addNewRecord("update userreg set uname='"+c.getUname()+"',umob='"+c.getUmob()+"',uemail='"+c.getUemail()+"',ulid='"+c.getUlid()+"',upass='"+c.getUpass()+"' where uid='"+c.getUid()+"'");
if(res.equalsIgnoreCase("yes"))
	out.println("Record Updated...");
else
	out.println(res);
}

else
{
	res = DAO.addNewRecord("delete from userreg where uid='"+c.getUid()+"'");
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