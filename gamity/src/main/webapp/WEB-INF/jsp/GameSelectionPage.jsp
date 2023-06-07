<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Selection</title>
    <link rel="stylesheet" href="styles.css">
    <style>/* General Styles */
    /* General Styles */
    body {
        background-color: #1d1d1d;
        font-family: "Open Sans", sans-serif;
        color: #cae9ea;
    }

    h1, h2, p {
        margin: 0;
    }

    /* Navigation Bar */
    .navbar {
        background-color: #3c4748;
        padding: 10px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .navbar-left, .navbar-right {
        display: flex;
        align-items: center;
    }

    .navbar-center {
        flex-grow: 1;
        text-align: center;
    }

    .navbar-link {
        color: #cae9ea;
        text-decoration: none;
        margin: 0 10px;
    }

    /* Dropdown */
    .dropdown {
        position: relative;
    }

    .dropdown-button {
        background-color: transparent;
        border: none;
        color: #cae9ea;
        cursor: pointer;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #3c4748;
        min-width: 160px;
        border-radius: 5px;
        padding: 10px;
        z-index: 1;
    }

    .dropdown-content a {
        color: #cae9ea;
        text-decoration: none;
        display: block;
        padding: 5px;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    /* Game Selection Content */
    .game-selection-container {
        padding: 20px;
    }

    .game-list {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        grid-gap: 20px;
    }

    .game-item {
        background-color: #3c4748;
        padding: 20px;
        border-radius: 10px;
        text-align: center;
    }

    .game-image {
        height: 200px;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        margin-bottom: 10px;
    }

    .game-item h2 {
        color: #cae9ea;
        margin-bottom: 10px;
    }

    .game-description {
        margin-bottom: 10px;
    }

    .game-rating {
        color: #cae9ea;
        font-weight: bold;
    }

    .play-button {
        background-color: #208c8c;
        color: #000000;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    .play-button:hover {
        background-color: #70F570;
    }

    /* Search Form */
    .search-form {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .search-form input[type="text"] {
        width: 300px;
        padding: 5px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        margin-right: 10px;
    }

    .search-form button {
        background-color: #208c8c;
        color: #000000;
        border: none;
        padding: 5px 10px;
        border-radius: 5px;
        cursor: pointer;
    }

    .search-form button:hover {
        background-color: #70F570;
    }

    </style>
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
        <form class="search-form" action="#" method="GET">
            <input type="text" name="search" placeholder="Search games...">
            <button type="submit">Search</button>
        </form>
    </div>
    <div class="navbar-right">
        <a href="/Dashboard" class="navbar-link">Profile</a>
        <a href="/login" class="navbar-link">Logout</a>
    </div>
</nav>

<!-- Game Selection Content -->
<div class="game-selection-container">
    <h1>Game Selection</h1>
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
            <h2>Game 2</h2>
            <div class="game-description">
                <p>Description of Game 2</p>
                <span class="game-rating">Rating: 3.8</span>
            </div>
            <a href="/Game" class="play-button">Play</a>
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
