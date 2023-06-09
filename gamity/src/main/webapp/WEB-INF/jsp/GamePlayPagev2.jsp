<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Play</title>
    <link rel="stylesheet" href="/css/GamePlayPageStyle.css">
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
        <div class="home"><a href="/Home" class="navbar-link">Home</a></div>
        <div class="about"><a href="/about" class="navbar-link">About</a></div>
        <div class="ListOfGames"><a href="/ListOfGames" class="navbar-link">Games</a></div>
        <div class="contact"><a href="/contact" class="navbar-link">Contact</a></div>
    </div>
    <div class="navbar-center">
        <h1>GAMITY</h1>
    </div>
    <div class="navbar-right">
        <a href="/login" class="navbar-button">Login</a>
    </div>
</nav>


<!-- Main Content -->

<div class="container">
    <div class="game-container">
        <div id="game-interface">

            <div id="game-content">

            </div>

        </div>

        <div class="game-details">
            <div class="description">
                <h2>Description</h2>
                <p></p>
            </div>
            <div class="rules">
                <h2>Rules</h2>
                <ul></ul>
            </div>
        </div>
    </div>

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

<div class="ad-column">
    <img src="ad2.jpg" alt="Ad 2">
    <!-- Add more ad images or content as needed -->
</div>


<script src="/js/GamePlayPage.js"></script>

</body>
</html>
