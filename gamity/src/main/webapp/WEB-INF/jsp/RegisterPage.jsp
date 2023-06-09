<%@ page language="java" contentType="text/html"%>
<%@ page import="java.text.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <title>Login Page</title>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .Login-form{
            width:400px;
            height:230px;
            background-color:#34568B;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-right: -50%;
            transform: translate(-50%, -50%);
        }

        .error-msg {
            background-color: white;
            color: red;
        }
    </style>
</head>

<body>

<div class="Login-form">

    <c:if test="${not empty errorMsg}">
        <div class="alert alert-danger" role="alert">${errorMsg}</div>
    </c:if>


    <div class="container-fluid">
        <form:form method="post" modelAttribute="user">
            <div class="mt-3">
                <form:input type="text" path="userId" class="form-control mt-3"
                            placeholder="User ID"/>
            </div>
            <div class="mt-3">
                <form:input type="password" path="password" class="form-control mt-3"
                            placeholder="Password" />
            </div>

            <form:button type="submit" class="btn btn-dark btn-block mt-3">Register</form:button>

        </form:form>


    </div>
</div>

<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
<script src="webjars/bootstrap/5.2.3/js/boostrap.min.js"></script>

</body>
</html>


<!--
<html>
<head>
<title>Login Page</title>
<link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
<style>
.Login-form{
width:400px;
height:200px;
background-color:#34568B;
position: absolute;
top: 50%;
left: 50%;
margin-right: -50%;
transform: translate(-50%, -50%);
}
</style>
</head>

<body>
<h2></h2>
<div class="Login-form">
<div class="container-fluid">
<form method="post">
<div class="mt-3">
<input type="text" name="userId" placeholder="User ID"/>
</div>
<div class="mt-3">
<input type="password" name="password" placeholder="Password">
</div>
<button type="submit" class="btn btn-dark btn-block mt-3">Login</button>
</form>
</div>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/4.6.0/js/boostrap.min.js"></script>

</body>
</html>