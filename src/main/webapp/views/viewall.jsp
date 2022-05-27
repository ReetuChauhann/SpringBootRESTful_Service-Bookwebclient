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
	<h3 style="color: purple;">Book Data</h3>
	<c:forEach items="${view}" var="k">
			<div>
				Student Id:
				<c:out value="${k.id}"></c:out>
				<br> Student Name:
				<c:out value="${k.name}"></c:out>
				<br> Student RollNo:
				<c:out value="${k.aname}"></c:out>
				<br> Student Course:
				<c:out value="${k.pname}"></c:out>
				<br>
				<hr>
			</div>
	</c:forEach>
	<form action="bookdata">
     <button>View Data</button>
	</form>
</body>
</html>