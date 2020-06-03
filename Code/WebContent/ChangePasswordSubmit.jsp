<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.*" %>
    <%@ page import="gt.model.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%String uaid = session.getValue("uaid").toString();
String uapass = session.getValue("uapass").toString();
%>
</head>
<body>
<%
ChangePassword cp=new ChangePassword();
cp.setOldpass(request.getParameter("oldpass"));
cp.setNewpass(request.getParameter("newpass"));
cp.setConpass(request.getParameter("conpass"));

if(cp.getOldpass().equals(uapass))
{
	if(cp.getNewpass().equals(cp.getConpass()))
	{
		String q=DAO.addNewRecord("update userreg set upass='"+cp.getNewpass()+"' where ulid='"+uaid+"'");
		
	   session.invalidate();
		
	   response.sendRedirect("UserLogin.jsp");
		
	}
	else
	{
		out.println("New Password and Conform Password not matched..........");
	}
}
else
{
	out.println("Old Password not matched..........");
}
%>
</body>
</html>