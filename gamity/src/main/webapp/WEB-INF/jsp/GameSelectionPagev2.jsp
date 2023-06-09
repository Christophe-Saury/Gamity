<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Selection</title>
    <link rel="stylesheet" href="/css/GameSelectionStyle.css">
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
        <div class="dropdown">
            <button class="dropdown-button">Categories</button>
            <div class="dropdown-content">
                <a href="/GameCategories">Multiplayer games</a>
                <a href="/GameCategories">Board Games</a>
                <a href="/GameCategories">Tycoon games</a>
                <!-- Add more categories as needed -->
            </div>
        </div>
    </div>
    <div class="navbar-center">
        <h1>Game Selection</h1>
        <p>Select your favorite games to play</p>
    </div>
    <div class="navbar-right">
        <a href="/Dashboard" class="navbar-link">Profile</a>
        <a href="/login" class="navbar-link">Logout</a>
    </div>
</nav>
<!-- Game Selection Content -->
<div class="game-selection-container">
    <div class="game-list">
        <div class="game-item">
            <div class="game-image" style="background-image: url('FPS.jpg')"></div>
            <h2>Chess Game</h2>
            <div class="game-description">
                <p>Can play chess with other players</p>
                <span class="game-rating">Rating: 4.5</span>
            </div>
            <a href="/Game" class="play-button">Play</a>
        </div>
        <div class="game-item">
            <div class="game-image" style="background-image: url('SuperSmash.jpg')"></div>
            <h2>Bubble Shooter 2</h2>
            <div class="game-description">
                <p>Description of Game 2</p>
                <span class="game-rating">Rating: 3.8</span>
            </div>
            <a href="/bubble" class="play-button">Play</a>
        </div>
        <div class="game-item">
            <div class="game-image" style="background-image: url('Assassin_creed.jpg')"></div>
            <h2>Game 3</h2>
            <div class="game-description">
                <p>Description of Game 2</p>
                <span class="game-rating">Rating: 3.8</span>
            </div>
            <a href="/Game" class="play-button">Play</a>
        </div>
        <!-- Add more game items as needed -->
    </div>
</div>
<script src="script.js"></script>
</body>
</html>