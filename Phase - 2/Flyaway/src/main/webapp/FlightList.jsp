<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
<style>
body{
background:url("flyaway1.jpg");
background-size:cover;

}
</style>

</head>
<body  align="center">
<br>
<h1> FLYAWAY</h1>

<br><br>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("flights");
	if(flights!=null){
%>

<h1>Available Flights</h1>
<div align="center">

<table border="1">
<tr>
	<th>Name</th>
	<th>Time</th>
	<th>Price</th>
</tr>



<%
	for(String[] flight:flights){
%>
<tr>
<td><%=flight[0]%></td>
<td><%=flight[1]%></td>
<td><%=flight[2]%></td>
</tr>
</table>

<a href=BookFlight.jsp style="color:blue">Book Now</a>
<%
	}
%>


<%
	}
	else{
%>
<h1>There are no available flights</h1>
<%
	}
%>
</div>
<br>
<br>
<a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">BACK</a>
<br>
<br>
<br>
<br>
<br>
<br>









 <!-- FOOTER -->
		<footer class="text-center" style="color:BLACK;background:url('');">
			<h2>RAHUL Airlines 2022 &copy All Rights Reserved.</h2>
                       <h3><p><i>Web-site designed by  RAHUL</i></p></h3>
			
		</footer>
</body>
</html>