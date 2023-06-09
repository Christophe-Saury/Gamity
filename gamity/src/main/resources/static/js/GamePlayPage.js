// Sample JSON input
var jsonData = {
    code: '<iframe style="width: 100%; height: 550px; overflow: hidden;" src="https://playpager.com/embed/chess/index.html" scrolling="no"></iframe>',
    description: "Chess is a two-player board game of strategy and intellect. Players maneuver their pieces across a checkered board to capture the opponent's king. It requires tactical thinking, planning, and foresight. The game is played with 16 pieces per player and involves unique movements for each piece. Chess is renowned for its complexity and is enjoyed by people of all ages.",
    rules: [
        "Rule 1: The king is the most important piece on the board. The objective of the game is to checkmate the opponent's king, meaning to put it in a position where it is threatened with capture and cannot escape on the next move.",
        "Rule 2: Each player starts with 16 pieces: one king, one queen, two rooks, two knights, two bishops, and eight pawns.",
        "Rule 3: The queen is the most powerful piece and can move any number of squares in any direction: horizontally, vertically, or diagonally.",
        "Rule 4: Rooks move horizontally or vertically any number of squares. They are usually most effective when placed on open files or ranks.",
        "Rule 5: Knights move in an L-shape, two squares in one direction and then one square in a perpendicular direction. Knights are the only pieces that can 'jump' over other pieces.",
        "Rule 6: Bishops move diagonally any number of squares. They are most effective when placed on long diagonals, controlling multiple squares.",
        "Rule 7: Pawns are the smallest and most numerous pieces. They move forward one square, but capture diagonally. Pawns can also move two squares forward on their first move and have a special en passant capture rule.",
        "Rule 8: Castling is a special move that involves the king and one of the rooks. It allows the king to move two squares towards a rook, and the rook moves to the square adjacent to the king on the opposite side. Castling can only be done if neither the king nor the rook involved has moved before and there are no pieces between them.",
        "Rule 9: The game can end in a draw if certain conditions are met, such as a stalemate (when the player to move has no legal moves but is not in check) or insufficient material to checkmate (when neither player has enough pieces to force a checkmate)."
    ]
};

// Function to dynamically populate the container
function populateContainer() {
    var gameContent = document.getElementById("game-content");
    gameContent.innerHTML = jsonData.code;

    var descriptionParagraph = document.querySelector(".description p");
    descriptionParagraph.textContent = jsonData.description;

    var rulesList = document.querySelector(".rules ul");
    jsonData.rules.forEach(function(rule) {
        var ruleItem = document.createElement("li");
        ruleItem.innerHTML = rule;
        rulesList.appendChild(ruleItem);
    });
}

// Call the function to populate the container
populateContainer();
