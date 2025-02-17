<%@ page import="com.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file='base.html' %>
</head>
<body>

	<%
		Student s = (Student) request.getAttribute("obj");
	%>
	
	<div class="container">
	
	<%@ include file='navbar.html' %>
	</div>
	<div class="container">
		<h1>Are Your Sure That You want To delete : "<%=s.getName() %>"" ?</h1>
		
		<form action="delete?id=<%= s.getId() %>"method="POST">
			<input type="submit" value="YES">
		</form>
		
		<a href="list">NO</a>
	</div>
</body>
</html>