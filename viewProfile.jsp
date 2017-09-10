<%@page import="com.mnrega.beans.SarpanchBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<body bgcolor="#7FFFD4">

<%
Object obj=session.getAttribute("sarpanch_bean");
if(obj != null)
{
	SarpanchBean sbean=(SarpanchBean)obj;

%>


<h1 align="center">Sarpanch Details</h1>
<hr>
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="sarpanchHome.jsp">Back</a></h3>
<h2>ID :<%=sbean.getSid() %></h2>

<h2>Name :<%=sbean.getSname() %></h2>

<h2>Panchayat :<%=sbean.getSpanchayat() %></h2>


<h2>Mobile :<%=sbean.getSmobile() %></h2>

<h2>Email :<%=sbean.getSemail() %></h2>

<h2>Password :<%=sbean.getSpassword() %></h2>






<%}else{ %>

<h2>Session fails</h2>

<%} %>
</body>
</html>