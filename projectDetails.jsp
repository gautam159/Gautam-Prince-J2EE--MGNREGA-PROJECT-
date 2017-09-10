<%@page import="com.mnrega.beans.ProjectBean"%>
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
<body bgcolor="#FA8072">

<%

Object obj=session.getAttribute("project_bean");
if(obj != null){
	ProjectBean b=(ProjectBean)obj;
	
%>
<h2 align="center">Project Details are</h2>
<hr>
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="viewProjectById.jsp">Back</a></h3>
<h3>Project Id is :<%=b.getProject_id() %></h3>
<h3>Project Name is :<%=b.getProject_name() %></h3>
<h3>Project Description is :<%=b.getProject_description() %></h3>
<h3>Project Duration is :<%=b.getProject_duration() %></h3>
<h3>Project Startdate is :<%=b.getProject_startdate() %></h3>
<h3>Project Capacity is :<%=b.getProject_capacity() %></h3>
<h3>Project Status is :<%=b.getProject_status() %></h3>
<h3>Project Assign is :<%=b.getProject_assign() %></h3>

<%}else{ %>

<h2>Session fails....</h2>
<%} %>
</body>
</html>