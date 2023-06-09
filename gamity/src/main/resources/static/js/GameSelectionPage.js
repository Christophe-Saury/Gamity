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

