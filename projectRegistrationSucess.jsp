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
<body bgcolor="#8FBC8F">
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="registerProject.jsp">Back</a></h3>
<%
Object obj=session.getAttribute("project_id");
if(obj != null){
	int id=(Integer)obj;
%>
<h1>Project added and ID is :<%=id %></h1>


<%}else{ %>
<h2>Session fails...</h2>
<%} %>
</body>
</html>