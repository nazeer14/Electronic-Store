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
<title>Products</title>
</head>
<body><center>
<h2>
	<%
		AdminBean ab=(AdminBean)session.getAttribute("abean");
		ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("products");
		out.println("<u><i>Hello "+ab.getFname()+" these are your product deatils.</u></i><br><br>");
		if(al.size()>0)
		{
			Iterator<ProductBean> i=al.iterator();
			while(i.hasNext())
			{
				ProductBean pb=i.next();
				out.println("==>"+pb.getpCode()+" --> "+pb.getpName()+" --> "+pb.getpCompany()+" --> "+pb.getpPrice()+" --> "+pb.getpQty()
				+"--> <a href='Edit?pcode="+pb.getpCode()+"'> Edit</a>"+"  "+" --> <a href='delete?pcode="+pb.getpCode()+"'>Delete</a><br><br>");
				
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