<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Play</title>
    <link rel="stylesheet" href="/css/GamePlayPageStyle.css">
</head>
<body>
<!-- Navigation Bar -->
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
    <div class="home" ><a href="/Home" class="navbar-link">Home</a></div>   
    <div class="about" >    <a href="/about" class="navbar-link">About</a></div>
      <div class="ListOfGames" >  <a href="/ListOfGames" class="navbar-link">Games</a></div>
      <div class="contact" >  <a href="/contact" class="navbar-link">Contact</a></div>
    </div>
    <div class="navbar-center">
        <h1>GAMITY</h1>
    </div>
    <div class="navbar-right">
        <a href="/login" class="navbar-button">Login</a>
    </div>
</nav>


<!-- Main Content -->

<div class="container">

    <div id="game-interface">

        <div id="game-content">
            <iframe
                    style="width: 100%; height: 550px; overflow: hidden;"
                    src="https://playpager.com/embed/chess/index.html"
                    scrolling="no">
            </iframe>
        </div>

    </div>
    <div class="game-details">
        <h2>Description</h2>
        <p>Chess is a two-player board game of strategy and intellect. Players maneuver their pieces across a checkered board to capture the opponent's king. It requires tactical thinking, planning, and foresight. The game is played with 16 pieces per player and involves unique movements for each piece. Chess is renowned for its complexity and is enjoyed by people of all ages.</p>
        <h2>Rules</h2>
        <ul>
    		<li>Rule 1: The king is the most important piece on the board. The objective of the game is to checkmate the opponent's king, meaning to put it in a position where it is threatened with capture and cannot escape on the next move.</li>
    		<li>Rule 2: Each player starts with 16 pieces: one king, one queen, two rooks, two knights, two bishops, and eight pawns.</li>
    		<li>Rule 3: The queen is the most powerful piece and can move any number of squares in any direction: horizontally, vertically, or diagonally.</li>
    		<li>Rule 4: Rooks move horizontally or vertically any number of squares. They are usually most effective when placed on open files or ranks.</li>
    		<li>Rule 5: Knights move in an L-shape, two squares in one direction and then one square in a perpendicular direction. Knights are the only pieces that can "jump" over other pieces.</li>
    		<li>Rule 6: Bishops move diagonally any number of squares. They are most effective when placed on long diagonals, controlling multiple squares.</li>
    		<li>Rule 7: Pawns are the smallest and most numerous pieces. They move forward one square, but capture diagonally. Pawns can also move two squares forward on their first move and have a special en passant capture rule.</li>
    		<li>Rule 8: Castling is a special move that involves the king and one of the rooks. It allows the king to move two squares towards a rook, and the rook moves to the square adjacent to the king on the opposite side. Castling can only be done if neither the king nor the rook involved has moved before and there are no pieces between them.</li>
    		<li>Rule 9: The game can end in a draw if certain conditions are met, such as a stalemate (when the player to move has no legal moves but is not in check) or insufficient material to checkmate (when neither player has enough pieces to force a checkmate).</li>
		</ul>
        <div class="rating">
            <h2>Rate the Game</h2>
            <div class="rating-buttons">
                <button class="rating-button">1</button>
                <button class="rating-button">2</button>
                <button class="rating-button">3</button>
                <button class="rating-button">4</button>
                <button class="rating-button">5</button>
            </div>
        </div>
    </div>
</div>
<div class="ad-column">
    <img src="ad2.jpg" alt="Ad 2">
    <!-- Add more ad images or content as needed -->
</div>
<script src="script.js"></script>
</body>
</html>
