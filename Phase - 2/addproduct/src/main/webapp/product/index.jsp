<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
<title>CRUD Operators with Hibernate</title>
<style>
body {
position: relative;
margin:200px;
}
</style>
</head>
<body>
<div align = "center" >
	<h3>Add Product into the database</h3>
	${msg }
	<form method="post" action="${pageContext.request.contextPath }/product">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><input type="text" name="quantity"></td>
			</tr>
			<tr>
				<td>Status</td>
				<td><input type="checkbox" name="status"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Save"></td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>