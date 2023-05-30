<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page in HTML with CSS Code Example</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/registerv2.css">
   
</head>
<body>

<div class="box-form">

    <div class="left">
        <div class="overlay">
            <h1> GAMITY </h1>
        </div>
    </div>
    <div class="right">
        <h2>REGISTER</h2>
        <p>WELCOME TO GAMITY! YOUR OWN PERSONALISED GAMING SITE</p>
        <p>RELIVE YOUR CHILDHOOD WITH US</p>


        <div class="inputs">

            <input type="text" id="username" placeholder="Username">
            <span id="username-error" class="error-message"></span>
            <br>
            <input type="password" id="password" placeholder="Password">
            <label class="checkbox-label">
                <input type="checkbox" class="show-password-checkbox" onclick="togglePasswordVisibility('password')">
                Show Password
            </label>
            <span id="password-error" class="error-message"></span>
            <br>
            <input type="password" id="confirmpassword" placeholder="Confirm password">
            <label class="checkbox-label">
                <input type="checkbox" class="show-password-checkbox" onclick="togglePasswordVisibility('confirmpassword')">
                Show Password
            </label>
            <span id="confirmpassword-error" class="error-message"></span>
            <p>
                Passwords should be at least
            <ul>
                <li><i>8</i> characters long and max <i>12</i>.</li>
                <li>Contain <strong>lower case letters [a-z]</strong> and <strong>uppercase letters [A-Z]</strong>.</li>
                <li>Contain <strong>numbers [0-9]</strong> and <strong>symbols [@,$,#]</strong>.</li>
            </ul>
            </p>
        </div>
        <br><br>

        <br>
        <button id="register-button">Register</button>
    </div>
</div>
<script>
    const usernameInput = document.getElementById("username");
    const passwordInput = document.getElementById("password");
    const passwordConfirmInput = document.getElementById("confirmpassword");
    const submitButton = document.getElementById("register-button");

    function togglePasswordVisibility(inputId) {
        const input = document.getElementById(inputId);
        input.type = input.type === "password" ? "text" : "password";
    }

    function validatePassword() {
        const username = usernameInput.value;
        const password = passwordInput.value;
        const confirmPassword = passwordConfirmInput.value;

        // Reset previous error messages
        document.getElementById("username-error").textContent = "";
        document.getElementById("password-error").textContent = "";
        document.getElementById("confirmpassword-error").textContent = "";

        if (username.trim() === "") {
            document.getElementById("username-error").textContent = "Username is required";
            return false;
        }

        if (password.length < 8) {
            document.getElementById("password-error").textContent = "Password must be at least 8 characters long";
            return false;
        }
        if (!/[a-z]/.test(password)) {
            document.getElementById("password-error").textContent = "Password must contain at least one lowercase letter";
            return false;
        }
        if (!/[A-Z]/.test(password)) {
            document.getElementById("password-error").textContent = "Password must contain at least one uppercase letter";
            return false;
        }
        if (!/\d/.test(password)) {
            document.getElementById("password-error").textContent = "Password must contain at least one digit";
            return false;
        }
        if (!/[@$#]/.test(password)) {
            document.getElementById("password-error").textContent = "Password must contain at least one special character (@, $, #)";
            return false;
        }
        if (password !== confirmPassword) {
            document.getElementById("confirmpassword-error").textContent = "Confirm password does not match with the password";
            return false;
        }

        return true;
    }

    submitButton.addEventListener("click", (event) => {
        if (!validatePassword()) {
            event.preventDefault();
        }
    });
</script>
</body>
</html>
