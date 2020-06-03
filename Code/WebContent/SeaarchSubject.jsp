<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="gt.dao.* "%>
    <%@ page import="gt.model.* "%>
    <%@ page import="java.sql.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form>
<center>
<table border="1">
<caption>Search Subject</caption>

<tr>
<td>
<select name="cid">
<option value="">-Select Course-</option>
<%
try
{
String q="select * from Coursereg";
ResultSet rs = DAO.displayRecord(q);
if(rs.next())
{
do
{
out.println("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");	
}while(rs.next());
}
rs.close();
%>
</select>
</td>
<td>
<select name="bid">
<option value="">-Select Branch-</option>
<%
q="select * from branchreg";
rs = DAO.displayRecord(q);
if(rs.next())
{
do
{
out.println("<option value="+rs.getString(2)+">"+rs.getString(3)+"</option>");	
}while(rs.next());
}
rs.close();
%>
</select>
</td>
<td><input type="text" name="snm" placeholder="Enter Subject Name"></td></tr>
<tr><td colspan="2"><input type="submit" value="Search"></td></tr>
</table>
</center>
</form>

<% 
String cid = request.getParameter("cid");
String bid = request.getParameter("bid");
String sname = request.getParameter("snm");

if(cid.equals("")&&bid.equals("")&&sname.equals(""))
{
q = "select * from subjectreg";	
}
else if(!cid.equals("")&&bid.equals("")&&sname.equals(""))
{
q = "select * from subjectreg";
}
else if(cid.equals("")&&!bid.equals("")&&sname.equals(""))
{
q = "select * from subjectreg where branchid='"+bid+"'";
}
else if(cid.equals("")&&bid.equals("")&&!sname.equals(""))
{
q = "select * from subjectreg where subname like '%"+sname+"%'";
}
else if(!cid.equals("")&&!bid.equals("")&&sname.equals(""))
{
q = "select * from subjectreg where branchid='"+bid+"'";
}
else if(!cid.equals("")&&bid.equals("")&&!sname.equals(""))
{
q = "select * from subjectreg where subname like '%"+sname+"%'";
}
else if(cid.equals("")&&!bid.equals("")&&!sname.equals(""))
{
q = "select * from subjectreg where branchid='"+bid+"' and subname like '%"+sname+"%'";
}
else if(!cid.equals("")&&!bid.equals("")&&!sname.equals(""))
{
q = "select * from subjectreg where branchid='"+bid+"' and subname like '%"+sname+"%'";
}

rs = DAO.displayRecord(q);

if(rs.next())
{
%>
<table border="1">
<caption>Search Subject</caption>
<%
do{
	
out.println("<tr><td>"+rs.getString(3)+"<br><img src=/adminimg/"+rs.getString(4)+" height=100 width=100></td><td>"+rs.getString(5)+"</td></tr>");	
}while(rs.next());
}
else
{
out.println("Record Not Found...");	
}
rs.close();
}
catch(Exception ex)
{
	String q = "select * from subjectreg";

ResultSet rs = DAO.displayRecord(q);

if(rs.next())
{
%>
<table border="1">
<caption>Search Subject</caption>
<%
do{
	
out.println("<tr><td>"+rs.getString(3)+"<br><img src=/adminimg/"+rs.getString(4)+" height=100 width=100></td><td>"+rs.getString(5)+"</td></tr>");	
}while(rs.next());
}
else
{
out.println("Record Not Found...");	
}
rs.close();
}
%>


</body>
</html>