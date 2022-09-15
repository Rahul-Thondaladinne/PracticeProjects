<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background:url("flyaway7.jpg");
background-size:cover;

}
footer{
position:absolute;
right:0;
left:0;
bottom:5px;
}
</style>
</head>
<body align="center">
<br>
<h1> FLYAWAY</h1>

<br><br>
<h2>User Login</h2>
<div align="center">
<form action=UserLogin method=post >
    <table >
    <tr>
    <td><label for=email>Email:</label><br></td>
    <td><input type="email" name=email id=email /></td>
    </tr>
    <tr>
    <td><label for=pass>Password:</label><br></td>
    <td><input type="password" name=password id=pass /></td>
    </tr>
    
    <tr>
    <td><input type="submit" value=submit /></td>
    <td><input type=reset /></td>
    </tr>
    </table>
	<a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">BACK</a>
</form>
</div>

<br><br>
<i>New User-Create account</i>
<h4><a href=UserRegistration.jsp style="font-size:25;color:red;">Create Account</a></h4>

<%
	String message=(String)session.getAttribute("message");
	if(message!=null){
%>
<p style="color:green;"><%=message %></p>
<%
		session.setAttribute("message", null);
	}
%>





  <!-- FOOTER -->
		<footer class="text-center" style="color:BLACK;background:url('');">
			<h2>RAHUL Airlines 2022 &copy All Rights Reserved.</h2>
                       <h3><p><i>Web-site designed by  RAHUL</i></p></h3>
			
		</footer>
</body>
</html>