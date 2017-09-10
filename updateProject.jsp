<%@page import="com.mnrega.beans.ProjectBean"%>
<%@page import="com.mnrega.dao.ProjectDaoImpl"%>
<%@page import="com.mnrega.dao.ProjectDao"%>
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

String project_id=request.getParameter("project_id");
int id=Integer.parseInt(project_id);

ProjectDao dao=new ProjectDaoImpl();

ProjectBean pbean=dao.viewProjectById(id);
%>
<body bgcolor="#F4A460">

<h1 align="center">Update Project </h1>
<hr>
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="viewallProject.jsp">Back</a></h3>

<form action="UpdateProjectSrv" method="post">

<table>
<tr><td>Project Id:</td><td><input type="text" name="project_id" value="<%=pbean.getProject_id()%>" readonly></td></tr>
<tr><td>Project Name:</td><td><input type="text" name="project_name" value="<%=pbean.getProject_name()%>" readonly></td></tr>
<tr><td>Project Description:</td><td><input type="text" name="project_description" value="<%=pbean.getProject_description()%>" ></td></tr>
<tr><td>Project Duration:</td><td><input type="text" name="project_duration" value="<%=pbean.getProject_duration()%>"></td></tr>
<tr><td>Project Startdate:</td><td><input type="text" name="project_startdate" value="<%=pbean.getProject_startdate()%>"></td></tr>
<tr><td>Project Capacity:</td><td><input type="text" name="project_capacity" value="<%=pbean.getProject_capacity()%>"></td></tr>
<tr><td>Project Status:</td><td><input type="text" name="project_status" value="<%=pbean.getProject_status()%>"></td></tr>
<tr><td>Project Assign:</td><td><input type="text" name="project_assign" value="<%=pbean.getProject_assign()%>"></td></tr>

</table>
<input type="submit" value="Update">




</form>




</body>
</html>