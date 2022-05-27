<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3 style="color: blue;">Update Page</h3>
	<form action="updatebook">
	<c:if test="${response=='Success'}">
			<h3 style="color: green;">Updated Successfully!</h3>
		</c:if>
		<c:if test="${response=='Fuccess'}">
			<h3 style="color: red;">Something Went Wrong!</h3>
		</c:if>
		
		<select name="id">
			<c:forEach items="${ids}" var="l">
				<option>${l}</option>
			</c:forEach>
		</select>
		<hr>
		Book Name:  <input type="text" name="name" required /><br> <br>
		Book Aname: <input type="text" name="aname" required /><br> <br>
		Book Pname: <input type="text" name="pname" required /><br> <br>
		<button>Update</button>
	</form>
    <hr>
</body>
</html>