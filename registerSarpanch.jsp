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
</head>
<body bgcolor="pink">

<h1 align="center">Register Sarpanch</h1>
<hr>

<form action="RegisterSarpanchSrv" method="post">
<h3 align="right"><a href="logout.jsp">LogOut</a>&nbsp &nbsp<a href="adminHome.jsp">Back</a></h3>
<table>
<tr><td>Sarpanch Name:</td><td><input type="text" name="sname" required></td></tr>

<tr><td>Sarpanch Panchayat:</td><td><input type="text" name="spanchayat"></td></tr>

<tr><td>Sarpanch mobile :</td><td><input type="number" name="smobile" minlength="10" maxlength="10" ></td></tr><br><br>

<tr><td>Email :</td><td><input type="email" name="semail" required></td></tr>

<tr><td>Password :</td><td><input type="password" name="spassword"></td></tr>
</table>
<input type="submit" value="Register">

</form>
</body>
</html>
