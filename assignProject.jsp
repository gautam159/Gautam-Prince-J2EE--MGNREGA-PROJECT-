<%@page import="com.mnrega.beans.ProjectBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mnrega.dao.ProjectDaoImpl"%>
<%@page import="com.mnrega.dao.ProjectDao"%>
<%@page import="com.mnrega.beans.SarpanchBean"%>
<%@page import="com.mnrega.dao.SarpanchDaoImpl"%>
<%@page import="com.mnrega.dao.SarpanchDao"%>
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
<body bgcolor="brick red">
<form action="AssignProjectSrv" method="post">

<%

ProjectDao dao=new ProjectDaoImpl();
ArrayList<ProjectBean> alist=dao.viewAllProjectDetails();

%>

Select Project Id:&nbsp &nbsp 
<select name="pid">
<%

for(ProjectBean p:alist){
if(p.getProject_assign().equals("not assigned")){
%>
<option><%=p.getProject_id() %></option>

<%} }%>

</select>
<br>
<%

SarpanchDao dao1=new SarpanchDaoImpl();
ArrayList<SarpanchBean> blist=dao1.viewAllSarpanchDetails();

%>
Select Sarpanch Id:
<select name="sid">
<%

for(SarpanchBean s:blist){

%>
<option><%=s.getSid() %></option>

<%} %>

</select>

<br>


<input type="submit" value="Assign">
</body>
</html>