<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Game Play</title>
    <link rel="stylesheet" href="styles.css" />
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            background-color: #1d1d1d;
            color: #cae9ea;
            font-family: "Open Sans", sans-serif;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            text-align: center;
        }

        /* Navigation Bar */
        .navbar {
            background-color: #3c4748;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: auto;
        }

        .navbar-left {
            display: flex;
        }

        .navbar-left :hover {
            color: #70f570;
        }

        .navbar-center {
            display: flex;
            text-align: center;
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
            background-color: #70f570;
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

    <div class="navbar-center">
        <h1>GAMITY</h1>
    </div>

    <div class="navbar-right">
        <a href="#" class="navbar-button">Logout</a>
    </div>
</nav>

<!-- Main Content -->

<div class="container">
    <div id="game-interface">
        <div id="game-content">
            <iframe
                    style="width: 100%; height: 550px; overflow: hidden"
                    src="https://playpager.com/embed/checkers/index.html"
                    scrolling="no"
            >
            </iframe>
        </div>
    </div>
    <div class="game-details">
        <h2>Description</h2>
        <p>
            Checkers is played by two persons who oppose each other across a board
            of 64 light and dark squares, the same as a chessboard. The 24 playing
            pieces are disk-shaped and of contrasting colours (whatever their
            colours, they are identified as black and white).
        </p>
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
<div class="ad-column">
    <img src="ad2.jpg" alt="Ad 2" />
    <!-- Add more ad images or content as needed -->
</div>
<script src="script.js"></script>
</body>
</html>
