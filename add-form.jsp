<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file='base.html'%>
</head>
<body>

	<div class="container">
		<%@ include file='navbar.html'%>
	</div>
	<div class="container mt-5">
		<h1 class="text-center">Add Student Details Here</h1>
		<form action="add" method="POST">
			<div class="form-group">
				<label for="inputName">Student Name</label> <input type="text"
					name="sname" class="form-control" id="inputName"
					aria-describedby="emailHelp" placeholder="Enter Student Name">
			</div>
			<div class="form-group">
				<label for="inputMarks">Student Marks</label> <input type="text"
					name="smarks" class="form-control" id="inputMarks"
					aria-describedby="emailHelp" placeholder="Enter Student Marks">
			</div>
			<div class="form-group">
				<label for="inputName">Student Rollnum</label> <input type="text"
					name="srollnum" class="form-control" id="inputRollnum"
					aria-describedby="emailHelp" placeholder="Enter Student Rollnum">

			</div>

			<center>
				<button type="Submit" class="btn btn-success">Save</button>
			</center>
		</form>

	</div>

</body>
</html>