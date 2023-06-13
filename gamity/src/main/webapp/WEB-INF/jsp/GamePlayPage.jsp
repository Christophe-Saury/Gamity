
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Play </title>
    <link rel="stylesheet" href="/css/GamePlayPageStyle.css">
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
        <div class="home"><a href="/Home" class="navbar-link">Home</a></div>
        <div class="about"><a href="/about" class="navbar-link">About</a></div>
        <div class="ListOfGames"><a href="/ListOfGames" class="navbar-link">Games</a></div>
        <div class="contact"><a href="/contact" class="navbar-link">Contact</a></div>
        <div class="contact" >  <a href="/GameHostRequest" class="navbar-link">Host your game</a></div>
    </div>
    <div class="navbar-center">
        <h1>GAMITY ${categoryName}</h1>
    </div>
    <div class="navbar-right">
        <a href="/login" class="navbar-button">Login</a>
    </div>
</nav>


<!-- Main Content -->

<div class="container">
    <div class="game-container">
        <div id="game-interface">

            <div id="game-content">
                ${gameCode}
            </div>

        </div>

        <div class="game-details">
            <div class="description">
                <h2>Description</h2>
                <p>${gameDescription}</p>
            </div>
            <div class="rules">
                <h2></h2>
                <ul></ul>
            </div>
        </div>
    </div>

    <div class="rating">
        <h2>Rate the Game</h2>
        <form action="/Game" method="post">
            <div class="rating-buttons">
                <button type="submit" class="rating-button" name="rating" value="1">1</button>
                <button type="submit" class="rating-button" name="rating" value="2">2</button>
                <button type="submit" class="rating-button" name="rating" value="3">3</button>
                <button type="submit" class="rating-button" name="rating" value="4">4</button>
                <button type="submit" class="rating-button" name="rating" value="5">5</button>
            </div>
        </form>
        <h2>Current Rating: ${gameRating}</h2>
    </div>

</div>




</body>
</html>
