<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game List</title>
    <link rel="stylesheet" href="styles.css">
    <style>/* General Styles */
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

    h1, h2 {
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

    /* Game List */
    .game-list {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .game-list li {
        margin-bottom: 10px;
    }

    .game-list li a {
        color: #cae9ea;
        text-decoration: none;
    }

    .game-list li a:hover {
        text-decoration: underline;
    }

    /* Sign In Message */
    .signin-message {
        background-color: #70F570;
        color: #000000;
        padding: 10px;
        margin-bottom: 20px;
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
    <h1>Welcome to our Game Platform</h1>
    <p>Please sign in to play a game.</p>

    <h2>Game List</h2>
    <ul class="game-list">
        <li><a href="#">Game 1</a></li>
        <li><a href="#">Game 2</a></li>
        <li><a href="#">Game 3</a></li>
        <li><a href="#">Game 4</a></li>
        <li><a href="#">Game 5</a></li>
    </ul>
</div>

<script src="script.js"></script>
</body>
</html>
