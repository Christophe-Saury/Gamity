<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page in HTML with CSS Code Example</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/RegisterStyle.css">
</head>
<body>

<div class="box-form">

    <div class="left">
        <div class="overlay">
            <h1> GAMITY </h1>
            <a href="/login" class="back-to-login">Back to login</a>
        </div>
    </div>
    <div class="right">
        <h2>REGISTER</h2>
        <p>WELCOME TO GAMITY! YOUR OWN PERSONALISED GAMING SITE</p>
        <p>RELIVE YOUR CHILDHOOD WITH US</p>


        <div class="inputs">
            <c:if test="${not empty errorMsg}">
                <div class="alert alert-danger" role="alert">${errorMsg}</div>
            </c:if>
            <c:if test="${not empty successMsg}">
                <div class="alert alert-success" role="alert">${successMsg}</div>
            </c:if>

            <form:form method="post" modelAttribute="user">

                <form:input type="text" id="username" path="userId" class="form-control mt-3"
                            placeholder="User ID"/>
                <span id="username-error" class="error-message"></span>
                <br>
                <form:input type="password" path="password" class="form-control mt-3"
                            placeholder="Password" />
                <label class="checkbox-label">
                <input type="checkbox" class="show-password-checkbox" onclick="togglePasswordVisibility('password')">
                Show Password
                </label>
                <span id="password-error" class="error-message"></span>
                <br>

        </div>
        <br><br>

        <br>
                <form:button type="submit" id="register-button" class="btn btn-dark btn-block mt-3">Register</form:button>
        </form:form>
    </div>
</div>
<script src="/js/RegisterPage.js">
</script>
</body>
</html>
