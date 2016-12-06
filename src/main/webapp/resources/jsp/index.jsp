<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gradle + Spring MVC</title>
<!--
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
-->
<link href="<%=request.getContextPath()%>/resources/css/hello.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Gradle + Spring MVC</a>
		</div>
	</div>
</nav>

<div class="jumbotron">
	<div class="container">
		<h1>${title}</h1>
		<p>Hello ${msg}</p>
	</div>
</div>

<script src="<%=request.getContextPath()%>/resources/js/hello.js"></script>
<script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/jquery/jquery-3.1.1.min.js"></script>

</body>
</html>