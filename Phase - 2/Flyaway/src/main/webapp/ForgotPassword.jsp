<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
body{
background:url("flyaway5.jpg");
background-size:cover;

}</style>
</head>
<body  align="center">
<br>
<h1> FLYAWAY</h1>

<br><br>

<div align="center">
<form action=ForgotPassword method=post>
<table>
<tr>
	<td><label for=email>Email :-</label> <input type="email" name=email id=email /><br><br></td>
	</tr>
	<tr>
	<td><label for=pass>New Password :-</label> <input type="password" name=password id=pass /><br><br></td>
	</tr>
	<tr>
	<td><input type=submit value=submit /> <input type=reset /></td>
	</tr>
	</table>
</form>
<a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">BACK</a>
</div>
</body>
</html>