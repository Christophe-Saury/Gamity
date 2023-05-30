<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
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

        h1, h2, h3 {
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

        /* Featured Games */
        .featured-games {
            display: flex;
            justify-content: center;
            margin-bottom: 40px;
        }

        .game-item {
            background-color: #3c4748;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            margin: 0 10px;
        }

        .game-item img {
            width: 200px;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        /* Announcements */
        .announcements {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .announcement-item {
            background-color: #3c4748;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            margin: 10px;
        }

        /* Footer */
        footer {
            background-color: #3c4748;
            padding: 20px;
            text-align: center;
        }

        footer p {
            margin: 0;
        }

        footer a {
            color: #cae9ea;
            text-decoration: none;
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
    <h1>Welcome to the Gaming Platform</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor neque ac diam fringilla, ut fringilla odio hendrerit. Phasellus rutrum efficitur massa at pellentesque.</p>
    <h2>Featured Games</h2>
    <div class="featured-games">
        <div class="game-item">
            <img src="game1.jpg" alt="Game 1">
            <h3>Game 1</h3>
        </div>
        <div class="game-item">
            <img src="game2.jpg" alt="Game 2">
            <h3>Game 2</h3>
        </div>
        <!-- Add more featured games as needed -->
    </div>
    <h2>Announcements</h2>
    <div class="announcements">
        <div class="announcement-item">
            <h3>Announcement 1</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <div class="announcement-item">
            <h3>Announcement 2</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <!-- Add more announcements as needed -->
    </div>
</div>

<script src="script.js"></script>
</body>
</html>
