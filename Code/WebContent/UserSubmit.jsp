<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.*" %>
    <%@ page import="gt.model.*" %>
    <%@ page import="java.sql.*" %>
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
	c.setUname(request.getParameter("uname"));
	c.setUmob(request.getParameter("umob"));
	c.setUemail(request.getParameter("uemail"));
	c.setUlid(request.getParameter("ulid"));
	c.setUpass(request.getParameter("upass"));
	
/*	String res= DAO.addNewRecord("insert into categoryreg (cname,cicon,cdesc) values('"+c.getCategoryname()+"','"+c.getCategoryicon()+"','"+c.getCategorydesc()+"')");
*/
	
	String res= DAO.addNewRecord("insert into userreg(uname,umob,uemail,ulid,upass) values('"+c.getUname()+"','"+c.getUmob()+"','"+c.getUemail()+"','"+c.getUlid()+"','"+c.getUpass()+"')");
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