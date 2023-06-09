<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="/css/HomepageStyle.css">
    <style>
    
</style>
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
    <div class="home" ><a href="/Home" class="navbar-link">Home</a></div>   
    <div class="about" >    <a href="/about" class="navbar-link">About</a></div>
      <div class="ListOfGames" >  <a href="/ListOfGames" class="navbar-link">Games</a></div>
      <div class="contact" >  <a href="/contact" class="navbar-link">Contact</a></div>
    </div>
    <div class="navbar-right">
        <a href="/login" class="navbar-button">Login</a>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <h1>Welcome to the Gaming Platform</h1>
    <p>This website hosts free to play games. Login to the website to play a game.</p>
    <h2>Popular Games</h2>
    <div class="featured-games">
        <div class="game-item">
            <img src="OlP.jpg" alt="Game 1">
            <h3>Sudoku</h3>
        </div>
        <div class="game-item">
            <img src="game2.jpg" alt="Game 2">
            <h3>Puissance 4</h3>
        </div>
        <!-- Add more featured games as needed -->
    </div>
    <h2>Announcements</h2>
    <div class="announcements">
        <div class="announcement-item">
            <h3>Announcement 1</h3>
            <p>We just added a new game.</p>
        </div>
        <div class="announcement-item">
            <h3>Announcement 2</h3>
            <p>We fixed bugs on the sudoku game.</p>
        </div>
        <!-- Add more announcements as needed -->
    </div>
</div>

<script src="script.js"></script>
</body>
</html>
