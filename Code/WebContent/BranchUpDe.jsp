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
<form action="BranchUpDe1.jsp">
<center>
<table border="1">
<caption>Branch Up/De</caption>
<%
try
{
String bid=request.getParameter("bid");
ResultSet rs= DAO.displayRecord("Select * from branchreg where bid='"+bid+"'");
if(rs.next())
{
	String coid=rs.getString(1);
	out.println("<tr><td>Course ID</td><td>");
	out.println("<select name=coid>");
	out.println("<option value=\"\">-Select Course-</option>");
	
	ResultSet rs1=DAO.displayRecord("select * from coursereg");
	
	if(rs1.next())
	{
		do
		{
			out.println("<option value="+rs1.getString(3)+">"+rs1.getString(4)+"</option>");
		}while(rs1.next());
		
	}
	
	out.println("</select>");
	out.println("</td></tr>");
	rs1.close();
	
	out.println("<tr><td>Branch ID</td><td><input type=text name=bid value=\""+rs.getString(2)+"\" readonly=true></td></tr>");
	out.println("<tr><td>Branch Name</td><td><input type=text name=bname value=\""+rs.getString(3)+"\"></td></tr>");
	out.println("<tr><td>Branch Icon</td><td><img src=adminimg/"+rs.getString(4)+"height=100 width=100><input type=file name=bicon></td></tr>");
	out.println("<tr><td>Branch Desc</td><td><textarea name=bdesc row=5 cols=25>"+rs.getString(5)+"</textarea></td></tr>");
	out.println("<tr><td><input type=submit name=btn value=Update></td><td><input type=submit name=btn value=Delete></td></tr>");
}
else
{	
}
rs.close();
}
catch(Exception e)
{
out.println("Error:"+e);	
}
%>
</table>
</center>
</form>

</body>
</html>