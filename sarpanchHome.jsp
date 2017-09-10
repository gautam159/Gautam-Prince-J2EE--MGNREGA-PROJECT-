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
<body bgcolor="#FFA07A">
<%

Object obj=session.getAttribute("sarpanch_bean");
if(obj != null)
{
	SarpanchBean bean=(SarpanchBean)obj;
%>



<h1 align="center">Welcome <%=bean.getSname() %></h1>
<hr>
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="adminHome.jsp">Back</a></h3>

<a href="viewProfile.jsp"><h1><font color="black">Profile</font></h1></a>








<%}else{ %>

<h2>Session fails....</h2>
<%} %>
<br><br><br><br><br><br><br><br><br><br>
<hr>
<footer>
  <p>Presented by: MGNREGA Project Group</p>
  <p>Contact Information: rahulchoudhary2539@gmail.com<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp: gtmprnc@gmail.com <br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp: rahulbhagat.technoindia@gmail.com<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp: raviranjan30124@gmail.com</p>
  
</footer>
<hr>
</body>
</html>