<%@page import="com.mnrega.beans.SarpanchBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mnrega.dao.SarpanchDaoImpl"%>
<%@page import="com.mnrega.dao.SarpanchDao"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<div id="wrapperHeader">

    <div id="header">
             <img src="images/mgnrega_banner.gif" width="1350" height="100" alt="logo" />
    </div> 
<hr>
</head>
<%
SarpanchDao dao=new SarpanchDaoImpl();
ArrayList<SarpanchBean> slist=dao.viewAllSarpanchDetails();
%>
<body bgcolor="#00FA9A">
<h1 align="center">All Sarpanch Details</h1>
<hr>
<table border="1" align="center">
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="adminHome.jsp">Back</a></h3>
<tr><th>Sarpanch ID</th><th>Sarpanch Name</th><th>Sarpanch panchayat</th><th>Sarpanch mobile</th></tr>
<%
for(SarpanchBean b:slist)
{
%>
<tr><td><%=b.getSid() %></td><td><%=b.getSname() %></td><td><%=b.getSpanchayat() %></td><td><%=b.getSmobile() %></td><td><a href='updateSarpanch.jsp?sid=<%=b.getSid()%>'>update</a></td></tr>

<%} %>
</table>
</body>
</html>