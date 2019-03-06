<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Kids Products</title>
<link rel="stylesheet" type="text/css" href="/css/Main.css">
</head>
<style>
table {
	border-collapse: collapse;
	margin: 10px;
}

table, td, th {
	border: 1px solid black;
	padding: 10px;
	text-align: left;
}
</style>
<body bgcolor="#f0f5f5">
	<%@include file="include/header.jsp"%>

	<div align="center" ; style="font-size: 40px">WelCome To Kid's
		Zone</div>
	<div>
		<marquee scrollamount="10" onmouseover="stop()" onmouseout="start()"
			behavior="alternate">
			<img alt="img" src="Images/Clothes/111.jpg"> <img alt="img"
				src="Images/Clothes/222.jpg"> <img alt="img"
				src="Images/Clothes/333.jpg"> <img alt="img"
				src="Images/Clothes/444.jpg"> <img alt="img"
				src="Images/Clothes/555.jpg"> <img alt="img"
				src="Images/Clothes/666.jpg"> <img alt="img"
				src="Images/Clothes/777.jpg">
		</marquee>
	</div>
	<div align="center">

		<h1 style="color: black;">Product List</h1>

		<c:forEach var="Product" items="${ProductKid}">
			<table border="2" cellpadding="2" style="float: left;" height="200px"
				width="320px">
				<tr>
					<td><b>ProductID:</b> ${Product.productId}</br> <b>Product
							Description:</b> ${Product.productDesc}</br> <b> Category:</b>
						${Product.category}</br> <b> Price:</b> ${Product.price}</br>
						<form action="cart/${Product.productId}/quantity/" method="post">
							<b> Quantity:</b><select name="quantity">
								<option value="1" selected>1</option>
								<option value="2">2</option>
								<option value="3">3</option></td>
					<th rowspan="2"><img src="${Product.image}" alt="not found"
						style="height: 150px; width: 120px"></th>
				</tr>
				<tr>
					<th colspan="1" align="center"></select> <input type="submit"
						value="Add Cart"> <input type="submit" value="BuyNow" form
						action="buyNow/${Product.productId}/quantity/">
						</form></th>
				</tr>

			</table>
		</c:forEach>

		<br />
	</div>
	<center>
		<%@include file="include\footer.jsp"%>
	</center>
</body>
</html>