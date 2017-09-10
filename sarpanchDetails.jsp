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
<body bgcolor="magenta">
<%

Object obj=session.getAttribute("sarpanch_bean");
if(obj != null){
	SarpanchBean b=(SarpanchBean)obj;
	
%>
<h2 align="center">  Concerned Sarpanch Details are</h2>
<hr>
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="viewSarpanchById.jsp">Back</a></h3>
<h3>sarpanch Id is :<%=b.getSid() %></h3>
<h3>sarpanch Name is :<%=b.getSname() %></h3>
<h3>sarpanch panchayat is :<%=b.getSpanchayat() %></h3>
<h3>sarpanch mobile is :<%=b.getSmobile() %></h3>
<h3>sarpanch Email is :<%=b.getSemail() %></h3>
<h3>sarpanch Password is :<%=b.getSpassword() %></h3>





<%}else{ %>

<h2>Session fails....</h2>
<%} %>
</body>
</html>