<%@page import="com.mnrega.dao.SarpanchDaoImpl"%>
<%@page import="com.mnrega.dao.SarpanchDao"%>
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
<body bgcolor="red">
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="viewallSarpanch.jsp">Back</a></h3>
<%
	String sid=request.getParameter("sid");
	int id=Integer.parseInt(sid);
	
	SarpanchDao dao=new SarpanchDaoImpl();
	SarpanchBean sbean=dao.viewSarpanchById(id);
	
%>	


<h1 align="center">Sarpanch Detail</h1>
<hr>

<form action="UpdateSarpanchSrv" method="post">

<table>
<tr><td>Sarpanch Id:</td><td><input type="number" name="sid" value="<%=sbean.getSid()%>" readonly></td></tr>
<tr><td>Sarpanch Nmae:</td><td><input type="text" name="sname" value="<%=sbean.getSname()%>" readonly></td></tr>
<tr><td>Sarpanch Panchayat:</td><td><input type="text" name="spanchayat" value="<%=sbean.getSpanchayat()%>" ></td></tr>
<tr><td>Sarpanch Mobile:</td><td><input type="number" name="smobile" value="<%=sbean.getSmobile()%>" ></td></tr>
<tr><td>Sarpanch Email:</td><td><input type="text" name="semail" value="<%=sbean.getSemail()%>" ></td></tr>
<tr><td>Sarpanch Password:</td><td><input type="text" name="spassword" value="<%=sbean.getSpassword()%>" ></td></tr>

</table>




<input type="submit" value="Update">




</form>


</body>
</html>