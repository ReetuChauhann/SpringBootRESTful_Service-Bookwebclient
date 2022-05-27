<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reetu's Book App!</title>
</head>
<body>
	<h3 style="color: black;">Reetu's Book App</h3>
	<hr>
	<a href="updatehere">Update Book Here</a>
	<hr>
	<a href="viewallbook">View All Book Here</a>
	<hr>
	<form action="addbook">
		<c:if test="${result=='success'}">
			<h3 style="color: green;">Added Successfully!</h3>
		</c:if>
		<c:if test="${result=='failed'}">
			<h3 style="color: red;">Something Went Wrong!</h3>
		</c:if>
		Book Id:    <input type="number" name="id" required /><br> <br>
		Book Name:  <input type="text" name="name" required /><br> <br>
		Book Aname: <input type="text" name="aname" required /><br> <br>
		Book Pname: <input type="text" name="pname" required /><br> <br>
		<button>Add</button>
	</form>
	<hr>
	<h3 style="color: black;">Delete Book here by their name!</h3>
	<form action="deletebook">
		<c:if test="${delete=='Success'}">
			<h3 style="color: green;">Deleted Successfully!</h3>
		</c:if>
		<c:if test="${delete=='Failed'}">
			<h3 style="color: red;">No Book found to delete!</h3>
		</c:if>
		<br> Book Name: <input type="text" name="name" required /><br>
		<br>
		<button>Delete</button>
	</form>

</body>
</html>