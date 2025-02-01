<%@page import="com.pack1.CustomerBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
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
	<%
		CustomerBean ab=(CustomerBean)session.getAttribute("cbean");
		ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("products");
		out.println("<u><i>Hello "+ab.getFisrtname()+" these are your product deatils.</u></i><br><br>");
		if(al.size()>0)
		{
			Iterator<ProductBean> i=al.iterator();
			while(i.hasNext())
			{
				ProductBean pb=i.next();
				out.println(pb.getpName()+" --> "+pb.getpCompany()+" --> "+pb.getpPrice()+" --> "+pb.getpQty()
				+"--> <a href='Buy?pcode="+pb.getpCode()+"'> Buy</a><br><br>");
				
			}
		}
		else{
			out.println("Products are NOT available.");
		}		
		
	%><br>
	<a href="logout">Logout</a>
</h2>


</body>
</html>