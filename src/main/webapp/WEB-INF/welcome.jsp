<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- welcome on the tab with the Username -->
    <title>Welcome <c:out value ="${user.userName}"/>!</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
  
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="dashboard d-flex flex-column mx-auto">	
		<!-- Welcome with username as the header -->
		<h1 class = "mx-auto">Welcome <c:out value ="${user.userName}"/>!</h1>
		<p class = "mx-auto">This is your dashboard. Nothing to see here yet!</p>
		<!-- Logout button to clear session -->
		<form action="/logout" method="POST" class = "mx-auto">
	  		<input type="hidden" name="_method" value="logout">
			<input type="submit" value="Logout" class="bg-danger">
		</form>
	</div>
</body>
</html>