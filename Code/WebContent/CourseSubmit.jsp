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

	
	Course co=new Course();
	
	co.setCid(request.getParameter("cid"));
	co.setScid(request.getParameter("scid"));
	co.setCoursename(request.getParameter("coname"));
	co.setCourseicon(request.getParameter("coicon"));
	co.setCoursedesc(request.getParameter("codesc"));
	String res= DAO.addNewRecord("insert into coursereg(cid,scid,coname,coicon,codesc) values('"+co.getCid()+"','"+co.getScid()+"','"+co.getCoursename()+"','"+co.getCourseicon()+"','"+co.getCoursedesc()+"')");
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