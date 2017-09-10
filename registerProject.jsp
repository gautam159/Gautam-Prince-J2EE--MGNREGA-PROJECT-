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
<body bgcolor="#F0E68C">
<h1 align="center">Register Project </h1>
<hr>

<form action="RegisterProjectSrv" method="post">
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="adminHome.jsp">Back</a></h3>
<table>
<tr><td>Project Name:</td><td><input type="text" name="project_name"></td></tr>
<tr><td>Project Description:</td><td><input type="text" name="project_description"></td></tr>
<tr><td>Project Duration :</td><td><input type="number" name="project_duration"></td></tr>
<tr><td>Project StartDate :</td><td><input type="date" name="project_startdate"></td></tr>
<tr><td>Project Capacity :</td><td><input type="number" name="project_capacity"></td></tr>
<tr><td>Project Status :</td><td><input type="text" name="project_status"></td></tr>
<tr><td>Project Assign :</td><td><input type="text" name="project_assign"></td></tr>
</table>
<input type="submit" value="Register">
</form>
</body>
</html>