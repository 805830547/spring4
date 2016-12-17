<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-ch">
<head>
<title>Gradle + Spring MVC</title>
<!--
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
-->
<link href="<%=request.getContextPath()%>/resources/css/hello.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
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
<div class="student">
    <div class="input-group mystyle">
        <span class="input-group-addon span">Name</span>
        <input type="text" class="form-control" id="name" placeholder="student name">
    </div>
    <br>
    <div class="input-group mystyle">
        <span class="input-group-addon span">Age</span>
        <input type="text" class="form-control" id="age" placeholder="student age">
    </div>
    <br>
    <button type="button" class="btn btn-default mystyle" id="test">Test</button>
    <br>
    <strong>Result:</strong>
    <strong class="strong" id="result"></strong>
</div>

<script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/hello.js"></script>

</body>
</html>