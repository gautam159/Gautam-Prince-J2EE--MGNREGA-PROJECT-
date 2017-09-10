<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">

<div id="wrapperHeader">

    <div id="header">
             <img src="images/mgnrega_banner.gif" width="1350" height="100" alt="logo" />
    </div> 
<hr>
<h2 align="center">
<form action="LoginSrv" method="post">


Enter username:<input type="text" name="uname" placeholder="Enter Username" required><br><br>

Enter Password:<input type="password" name="pass" placeholder="Enter Password" required><br><br>

Login As:
<select name="role">
<option>BDO</option>
<option>Sarpanch</option>


</select>
<input type="submit" value="Login">

</form>


<a href="reset.jsp">Forget Password ?</a>
<a href="registerCustomer.jsp">New Customer ? Register Here</a>
<a href="logout.jsp">LogOut</a>


</div>


<div>

<%

Object obj=session.getAttribute("flag");
if(obj != null){
%>

<h2>Invalid username or password..</h2>

<%}session.removeAttribute("flag"); %>


</div>







</h2><br><br><br><br><br><br><br><br><br><br>
<hr>
<footer>
  <p>Presented by: MGNREGA Project Group</p>
  <p>Contact Information: rahulchoudhary2539@gmail.com<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp: gtmprnc@gmail.com <br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp: rahulbhagat.technoindia@gmail.com<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp: raviranjan30124@gmail.com</p>
  
</footer>
<hr>
</body>
</html>