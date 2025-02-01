<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<style type="text/css">
div{
margin: 10px 400px 0px 400px;
backdrop-filter :blur(10px);
border: 2px solid #7648f4;
padding: 100px 10px 20px 10px;
}
</style>
<meta charset="UTF-8">
<title>Admin Home</title>
</head>
<body style="background-image: url('https://tse2.mm.bing.net/th?id=OIP.kVzY4MtEI9Bgp4bTzwz9bQHaCs&pid=Api&P=0&h=220'); background-position: top; background-size: 100%;background-repeat: repeat; color: yellow;">
<center>
<marquee class="mq">NOC Electronic Store</marquee>
	<h1 style="background-image: url('https://tse4.mm.bing.net/th?id=OIP.RZewLeFqnEWTM5_qhIPhDAHaFP&pid=Api&P=0&h=220'); color:white; font-size: 45px; " align="center">NOC Electronic Store</h1><br>

<%
	AdminBean abean=(AdminBean)session.getAttribute("abean");
	out.println("<h2 class='btn'>Welcome "+abean.getFname()+" !!!</h2><br><br><br>");
%>
<div>
<h2>
<a style="color: black; background-color: 	#66b8ea; border-radius: 8px;font-family: monospace; font-size: 20px;padding: 10px 20px 10px 20px;" href="AddProduct.html">Add Product</a>&emsp;
<a style="color: black; background-color: 	#78e40ccc;border-radius: 8px; font-family: monospace;font-size: 20px;padding: 10px 20px 10px 20px;" href="View1">View Products</a><br><br><br><br><br>
<a style="color: white; background-color: #16d47c;border-radius: 8px; font-family: monospace; font-size: 25px;padding: 2px 3px 2px 3px;" href="logout">Logout</a></h2>
</div>
</body>
</html>