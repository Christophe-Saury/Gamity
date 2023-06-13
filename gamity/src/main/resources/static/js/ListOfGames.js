// Sample JSON input
var gamesData = [
    { name: "Chess" },
    { name: "Checkers" },
    { name: "GoodGameEmpire" },
    { name: "Reversi" }
    // Add more game objects as needed
];

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
