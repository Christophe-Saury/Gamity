<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game List</title>
    <link rel="stylesheet" href="/css/ListOfGamesStyle.css">
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
    <h1>Welcome to our Game Platform</h1>
    <p>Please sign in to play a game.</p>

    <h2>Game List</h2>
    <ul class="game-list">

    </ul>
</div>

<script>
    // Sample JSON input
    var gamesData = ${games};

    // Function to dynamically create game list items
    function createGameListItem(game) {
        var gameListItem = document.createElement("li");
        var gameLink = document.createElement("a");
        gameLink.href = "#";
        gameLink.textContent = game.name;
        gameListItem.appendChild(gameLink);
        return gameListItem;
    }

    // Function to populate game list
    function populateGameList() {
        var gameListContainer = document.querySelector(".game-list");

        gamesData.forEach(function(game) {
            var gameListItem = createGameListItem(game);
            gameListContainer.appendChild(gameListItem);
        });
    }

    // Call the function to populate game list
    populateGameList();

</script>
</body>
</html>
