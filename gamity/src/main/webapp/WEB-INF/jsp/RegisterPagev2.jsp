<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page in HTML with CSS Code Example</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="./registercss.css">
    <style>
        body {
            background-image: linear-gradient(135deg, #1d1d1d 10%, #208c8c 100%);
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: "Open Sans", sans-serif;
            color: #cae9ea;
        }

        .box-form {


            margin: 0 auto;
            width: 80%;
            background-image: url("5073414.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: "Open Sans", sans-serif;
            color: #cae9ea;
            display: flex;
            flex: 1 1 100%;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 0 20px 6px #090b6f85;

        }

        .error-message
        {
            color: red;
        }
        @media (max-width: 980px) {
            .box-form {
                flex-flow: wrap;
                text-align: center;
                align-content: center;
                align-items: center;
            }
        }
        .box-form div {
            height: auto;
        }
        .box-form .left {
            color: #000000;
            background-size: cover;
            background-repeat: no-repeat;
            overflow: hidden;
        }
        .box-form .left .overlay {
            padding: 30px;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            width: 100%;
            height: 100%;
            box-sizing: border-box;

        }
        .box-form .left .overlay h1 {
            font-size: 10vmax;
            line-height: 1;
            font-weight: 900;
            margin-top: 0;
            margin-bottom: 0;
            color: #939597;
        }
        .box-form .left .overlay span p {
            margin-top: 30px;
            color:#000000;
            font-weight: 900;
        }
        .box-form .left .overlay span p span {
            color: #000000; /* Replace 'red' with the color you want */
        }
        .box-form .left .overlay span a {
            background: #208c8c;
            color: #000000;
            margin-top: 10px;
            padding: 14px 50px;
            border-radius: 100px;
            display: inline-block;
            box-shadow: 0 3px 6px 1px #042d4657;
        }
        .box-form .left .overlay span a:last-child {
            background: #000040;
            margin-left: 30px;
        }
        .box-form .right {
            padding: 40px;
            overflow: hidden;
        }
        @media (max-width: 980px) {
            .box-form .right {
                width: 100%;
            }
        }
        .box-form .right h5 {
            font-size: 6vmax;
            line-height: 0;
        }
        .box-form .right p {
            font-size: 14px;
            color: #B0B3B9;
        }
        .box-form .right .inputs {
            overflow: hidden;
        }
        .box-form .right input {
            width: 100%;
            padding: 10px;
            margin-top: 25px;
            font-size: 16px;
            border: none;
            outline: none;
            border-bottom: 2px solid #000000;
        }
        .box-form .right .remember-me--forget-password {
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: #cae9ea;
        }
        .box-form .right .remember-me--forget-password input {
            margin: 0;
            margin-right: 7px;
            width: auto;
        }
        .box-form .right button {
            float: none;
            color: #fff;
            font-size: 16px;
            padding: 12px 35px;
            border-radius: 50px;
            display: inline-block;
            border: 0;
            outline: 0;
            box-shadow: 0px 4px 20px 0px #49c628a6;
            background-image: linear-gradient(135deg, #70F570 10%, #49C628 100%);
        }

        label {
            display: block;
            position: relative;
            margin-left: 30px;
        }

        label::before {
            content: ' \f00c';
            position: absolute;
            font-family: FontAwesome;
            background: transparent;
            border: 3px solid #cae9ea;
            border-radius: 4px;
            color: transparent;
            left: -30px;
            transition: all 0.2s linear;
        }

        label:hover::before {
            font-family: FontAwesome;
            content: ' \f00c';
            color: #fff;
            cursor: pointer;
            background: #cae9ea;
        }

        label:hover::before .text-checkbox {
            background: #cae9ea;
        }

        label span.text-checkbox {
            display: inline-block;
            height: auto;
            position: relative;
            cursor: pointer;
            transition: all 0.2s linear;
        }
        .submit
        {
            color: #cae9ea;
        }
        label input[type="checkbox"] {
            display: none;
        }

        #register-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            transition: box-shadow 0.3s;
        }

        #register-button:hover {
            box-shadow: 0 0 10px 2px black;
        }

        .error-message {
            display: block;
            color: red;
            font-size: 14px;
            margin-top: 5px;
        }

        .show-password-checkbox {
            margin-left: 5px;
        }

        .checkbox-label {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }
        .box-form video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }


    </style>
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
