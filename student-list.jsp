<%@page import = "com.entity.Student " %>
<%@page import = "java.util.ArrayList " %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file = 'base.html' %>
</head>
<body>

	<%
	ArrayList<Student> data=(ArrayList<Student>) request.getAttribute("data");
	
	%>
	<div class="container">
	<%@ include file='navbar.html' %>
	</div>
	
	<div container="container">
	<img alt="" src="image/student.jpg" width="50" height = " 50">
		
		<h1 class="text-center">List Of Student</h1>
		
		<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">MARKS</th>
      <th scope="col">ROLL NUMBER</th>
      <th scope="col">EDIT</th>
      <th scope="col">DELETE</th>
    </tr>
  </thead>
  <tbody>
  <% for (Student obj : data) {%>
    <tr>
      <th scope="row"><%= obj.getId() %></th>
      <td><%= obj.getName() %> </td>
      <td><%=  obj.getMarks() %></td>
      <td><%=  obj.getRollnum() %></td>
      <td><a href="edit?id=<%= obj.getId() %>" class="btn btn-success btn-sm">Edit +</a></td>
      <td><a href="delete?id=<%= obj.getId() %>" class="btn btn-danger btn-sm">Delete</a></td>
    </tr>
    <% 
    }
  %>

  </tbody>
</table>
		
		
	</div>
</body>
</html>