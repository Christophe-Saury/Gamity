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


        <!-- Add more game items as needed -->
    </div>
</div>

<script>
    // Sample JSON input
    var gamesData = [
        {
            image: "Assassin_creed.jpg",
            name: "Game 3",
            description: "Description of Game 3",
            rating: "3.8",
            gameId: 3
        },
        {
            image: "game_image.jpg",
            name: "Game 4",
            description: "Description of Game 4",
            rating: "4.2",
            gameId: 4
        },
        // Add more game objects as needed
    ];

    // Function to dynamically create game items
    function createGameItem(game) {
        var gameItem = document.createElement("div");
        gameItem.classList.add("game-item");

        var gameImage = document.createElement("div");
        gameImage.classList.add("game-image");
        gameImage.style.backgroundImage = `url('${game.image}')`;
        gameItem.appendChild(gameImage);

        var gameTitle = document.createElement("h2");
        gameTitle.textContent = game.name;
        gameItem.appendChild(gameTitle);

        var gameDescription = document.createElement("div");
        gameDescription.classList.add("game-description");
        var descriptionParagraph = document.createElement("p");
        descriptionParagraph.textContent = game.description;
        gameDescription.appendChild(descriptionParagraph);
        var gameRating = document.createElement("span");
        gameRating.classList.add("game-rating");
        gameRating.textContent = "Rating: " + game.rating;
        gameDescription.appendChild(gameRating);
        gameItem.appendChild(gameDescription);

        var gameForm = document.createElement("form");
        gameForm.action = "/Game";
        gameForm.method = "POST";
        var gameIdInput = document.createElement("input");
        gameIdInput.type = "hidden";
        gameIdInput.name = "gameId";
        gameIdInput.value = game.gameId;
        gameForm.appendChild(gameIdInput);
        var playButton = document.createElement("button");
        playButton.type = "submit";
        playButton.classList.add("play-button");
        playButton.textContent = "Play";
        gameForm.appendChild(playButton);
        gameItem.appendChild(gameForm);

        return gameItem;
    }

    // Function to populate game list
    function populateGameList() {
        var gameListContainer = document.querySelector(".game-list");

        gamesData.forEach(function(game) {
            var gameItem = createGameItem(game);
            gameListContainer.appendChild(gameItem);
        });
    }

    // Call the function to populate game list
    populateGameList();


</script>

</body>
</html>