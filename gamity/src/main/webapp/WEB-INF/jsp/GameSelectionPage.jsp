<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Selection</title>
    <link rel="stylesheet" href="../css/gameselection.css">
    
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
        <div class="dropdown">
            <button class="dropdown-button">Categories</button>
            <div class="dropdown-content">
                <a href="#">Multiplayer games</a>
                <a href="#">Board Games</a>
                <a href="#">Tycoon games</a>
                <!-- Add more categories as needed -->
            </div>
        </div>
    </div>
    <div class="navbar-center">
        <form class="search-form" action="#" method="GET">
            <input type="text" name="search" placeholder="Search games...">
            <button type="submit">Search</button>
        </form>
    </div>
    <div class="navbar-right">
        <a href="#" class="navbar-link">Profile</a>
        <a href="#" class="navbar-link">Logout</a>
    </div>
</nav>

<!-- Game Selection Content -->
<div class="game-selection-container">
    <h1>Game Selection</h1>
    <div class="game-list">
        <div class="game-item">
            <div class="game-image" style="background-image: url('FPS.jpg')"></div>
            <h2>Game 1</h2>
            <div class="game-description">
                <p>Description of Game 1</p>
                <span class="game-rating">Rating: 4.5</span>
            </div>
            <button class="play-button">Play</button>
        </div>
        <div class="game-item">
            <div class="game-image" style="background-image: url('SuperSmash.jpg')"></div>
            <h2>Game 2</h2>
            <div class="game-description">
                <p>Description of Game 2</p>
                <span class="game-rating">Rating: 3.8</span>
            </div>
            <button class="play-button">Play</button>
        </div>
        <div class="game-item">
            <div class="game-image" style="background-image: url('Assassin_creed.jpg')"></div>
            <h2>Game 2</h2>
            <div class="game-description">
                <p>Description of Game 2</p>
                <span class="game-rating">Rating: 3.8</span>
            </div>
            <button class="play-button">Play</button>
        </div>
        <!-- Add more game items as needed -->
    </div>
</div>

<script src="script.js"></script>
</body>
</html>
