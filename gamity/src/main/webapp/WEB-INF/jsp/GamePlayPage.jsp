<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Play</title>
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

        /* Game Interface */
        #game-interface {
            background-color: #3c4748;
            padding: 20px;
            border-radius: 10px;
            display: flex;
            justify-content: space-between;
        }

        .ad-column {
            flex-basis: 20%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .ad-column img {
            width: 100%;
            max-width: 200px;
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
        <a href="#" class="navbar-button">Logout</a>
    </div>
</nav>

<!-- Main Content -->

<div class="container">
    <h1>Game Title</h1>
    <div id="game-interface">
        <div class="ad-column">
            <img src="ad1.jpg" alt="Ad 1">
            <!-- Add more ad images or content as needed -->
        </div>
        <div id="game-content">
            <!-- Game-specific controls and visual representation go here -->
        </div>
        <div class="ad-column">
            <img src="ad2.jpg" alt="Ad 2">
            <!-- Add more ad images or content as needed -->
        </div>
    </div>
    <div class="game-details">
        <h2>Description</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique nulla vel massa placerat, et sagittis arcu mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed vulputate enim et sem posuere, id malesuada enim lobortis.</p>
        <h2>Rules</h2>
        <ul>
            <li>Rule 1: Lorem ipsum dolor sit amet</li>
            <li>Rule 2: Consectetur adipiscing elit</li>
            <li>Rule 3: Nunc tristique nulla vel massa placerat</li>
        </ul>
        <div class="rating">
            <h2>Rate the Game</h2>
            <div class="rating-buttons">
                <button class="rating-button">1</button>
                <button class="rating-button">2</button>
                <button class="rating-button">3</button>
                <button class="rating-button">4</button>
                <button class="rating-button">5</button>
            </div>
        </div>
    </div>
</div>

<script src="script.js"></script>
</body>
</html>
