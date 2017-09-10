<%@page import="com.mnrega.beans.ProjectBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mnrega.dao.ProjectDaoImpl"%>
<%@page import="com.mnrega.dao.ProjectDao"%>

<%@page import="com.mnrega.beans.SarpanchProjectBean"%>
<%@page import="com.mnrega.dao.SarpanchProjectDaoImpl"%>
<%@page import="com.mnrega.dao.SarpanchProjectDao"%>

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


<%
ProjectDao dao=new ProjectDaoImpl();
ArrayList<ProjectBean> alist=dao.viewAllProjectDetails();
%>
 



<body bgcolor="pink">
<h1 align="center">All Project Details</h1>
<hr>
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="adminHome.jsp">Back</a></h3>
<table border="1" align="center">

<tr><th>Project ID</th><th>Project Name</th><th>Project description</th><th>Project duration</th><th>Project Startdate</th><th>Project Capacity</th><th>Project Status</th><th>Project Assign</th></tr>
<%
String s="Not Applicable";
for(ProjectBean b:alist)
{
	if(b.getProject_assign().equals("not assigned")){
		s="<a href=updateProject.jsp?project_id="+b.getProject_id()+">update</a>";
	}
%>
<tr><td><%=b.getProject_id() %></td><td><%=b.getProject_name() %></td><td><%=b.getProject_description() %></td><td><%=b.getProject_duration() %></td><td><%=b.getProject_startdate()%></td><td><%=b.getProject_capacity() %></td><td><%=b.getProject_status() %></td><td><%=b.getProject_assign() %></td><td><%=s %></td></tr>

   
   <%} %>


</body>
</html>