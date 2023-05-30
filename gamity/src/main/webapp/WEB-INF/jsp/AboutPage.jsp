<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* General Styles */
        body {
            background-color: #1d1d1d;
            color: #cae9ea;
            font-family: "Open Sans", sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 15px;
        }

        /* Navigation Bar */
        .navbar {
            background-color: #3c4748;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-left {
            display: flex;
        }

        .navbar-link {
            color: #cae9ea;
            text-decoration: none;
            margin-right: 20px;
        }

        .navbar-right .navbar-button {
            background-color: #208c8c;
            color: #000000;
            padding: 8px 16px;
            border-radius: 5px;
            text-decoration: none;
        }

        .navbar-right .navbar-button:hover {
            background-color: #70F570;
        }

    </style>
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
        <a href="#" class="navbar-link">Home</a>
        <a href="#" class="navbar-link">About</a>
        <a href="#" class="navbar-link">Games</a>
        <a href="#" class="navbar-link">Contact</a>
    </div>
    <div class="navbar-right">
        <a href="#" class="navbar-button">Login</a>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <h1>About</h1>
    <p>Welcome to our Gaming Platform!</p>
    <p>This platform is designed to provide a wide range of games for users to enjoy. Whether you are a casual gamer or a dedicated enthusiast, you'll find a variety of games to suit your interests.</p>
    <p>Our platform features both games developed by our team and user-submitted games. We aim to create a vibrant and interactive community where users can connect, compete, and share their gaming experiences.</p>
    <p>Join us and explore the world of gaming on our platform. Have fun, challenge your skills, and discover new games!</p>
</div>

<script src="script.js"></script>
</body>
</html>
