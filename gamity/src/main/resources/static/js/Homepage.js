// Sample JSON input
var gamesData = [
    {
        name: "Tic Tac Toe",
        image: "game1.jpg"
    },
    {
        name: "Chess",
        image: "game2.jpg"
    },
    // Add more game objects as needed
];

// Function to dynamically create game items
function createGameItem(game) {
    var gameItem = document.createElement("div");
    gameItem.classList.add("game-item");

    var gameImage = document.createElement("img");
    gameImage.src = game.image;
    gameImage.alt = game.name;

    var gameTitle = document.createElement("h3");
    gameTitle.textContent = game.name;

    gameItem.appendChild(gameImage);
    gameItem.appendChild(gameTitle);

    return gameItem;
}

// Function to populate featured games
function populateFeaturedGames() {
    var featuredGamesContainer = document.querySelector(".featured-games");

    gamesData.forEach(function(game) {
        var gameItem = createGameItem(game);
        featuredGamesContainer.appendChild(gameItem);
    });
}

// Call the function to populate featured games
populateFeaturedGames();



// Sample JSON input
var announcementsData = [
    {
        title: "Announcement 1",
        description: "We just added a new game."
    },
    {
        title: "Announcement 2",
        description: "We fixed bugs on the Sudoku game."
    },
    // Add more announcement objects as needed
];

// Function to dynamically create announcement items
function createAnnouncementItem(announcement) {
    var announcementItem = document.createElement("div");
    announcementItem.classList.add("announcement-item");

    var announcementTitle = document.createElement("h3");
    announcementTitle.textContent = announcement.title;

    var announcementDescription = document.createElement("p");
    announcementDescription.textContent = announcement.description;

    announcementItem.appendChild(announcementTitle);
    announcementItem.appendChild(announcementDescription);

    return announcementItem;
}

// Function to populate announcements
function populateAnnouncements() {
    var announcementsContainer = document.querySelector(".announcements");

    announcementsData.forEach(function(announcement) {
        var announcementItem = createAnnouncementItem(announcement);
        announcementsContainer.appendChild(announcementItem);
    });
}

// Call the function to populate announcements
populateAnnouncements();
