<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Login Page in HTML with CSS Code Example</title>
    <link rel="stylesheet" href="../css/login.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


</head>
<body>
<!-- partial:index.partial.html -->
<div class="box-form">
    <div class="left">
        <div class="overlay">
            <h1>GAMITY</h1>
            <p>Create an account to play multiple games on a single platform</p>
            <span>
			<p>Don't have an account?</p>
			<a href="/register"><i class="fa account" aria-hidden="true"></i>Create Your Account</a>
			<p>It Takes Less than a Minute</p>


		</span>
        </div>
    </div>


    <div class="right">
        <form method="post" action="login">
            <h5>Login</h5>
            <p>WELCOME TO GAMITY! YOUR OWN PERSONALISED GAMING SITE</p>
            <p>RELIVE YOUR CHILDHOOD WITH US</p>

            <div class="inputs">
                <input type="text" name="userId" placeholder="User ID" required="true">
                <br>
                <input type="password" name="password" placeholder="Password" required="true">
            </div>

            <br><br>

            <div class="remember-me--forget-password">
                <!-- Angular -->
                <label>
                    <input type="checkbox" name="item" checked/>
                    <span class="text-checkbox">Remember me</span>
                </label>
                <p>forget password?</p>
            </div>

            <br>
            <button type="submit">Login</button>
        </form>
    </div>

</div>
<!-- partial -->

</body>
</html>
