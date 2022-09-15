<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
<style>
body{
background:url("flyaway3.jpg");
background-size:cover;

}
</style>
</head>
<body  align="center" >
<h1>FlyAway</h1>

<div align="center">
<a href="AdminPage.jsp" style="color:red">Admin Login</a>
</div>

<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user!=null){
%>
<p>Welcome <%=user.get("name") %></p>

<%
	}else{
%>
<a href=UserPage.jsp style="color:red">User Login</a>
<%
	}
%>
<br><br>
<div align="center">
<form action=FlightList method=post>
<table>
   <tr>
	<td><label for=from>From :-</label> <input type=text name=from id=from/><br><br></td>
	</tr>
	<tr>
	<td><label for=to>To :-</label> <input type=text name=to id=to/><br><br></td>
	</tr>
	<tr>
	<td><label for=departure>Departure :-</label> <input type=date name=departure id=departure/><br><br></td>
	</tr>
	<tr>
	<td><label for=travellers>Travellers :-</label> <input type=number name=travellers id=travellers/><br><br></td>
	</tr>
	<tr>
	<td><input type=submit value=Search />           <input type=reset /></td>
	</tr>
	</table>
	<div align="bottom">
	<h2><a href="Logout" style="color:red">Logout</a></h2>
	</div>
	<footer class="text-center" style="color:BLACK;background:url('');">
			<h2>RAHUL Airlines 2022 &copy All Rights Reserved.</h2>
                       <h3><p><i>Web-site designed by  RAHUL</i></p></h3>
			
		</footer>
</form>
</div>

</body>
</html>