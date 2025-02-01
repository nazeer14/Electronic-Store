<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><center>
<h2>
<%@include file="CustomerProducts2.jsp" %>
<div style="border: 3px dashed black; padding: 0px 0px 0px 0px;margin: 5px 330px 10px 330px;justify-content: left;text-align: left;backdrop-filter:blur(5px);">
<%
	String msg=(String)request.getAttribute("msg");
	out.println("<p style='color:gold;'>"+msg+"<br>");
	out.println("Order Not placed..<br>Please be try again!!</p> ");
	
%>

</div>
</h2>

</body>
</html>