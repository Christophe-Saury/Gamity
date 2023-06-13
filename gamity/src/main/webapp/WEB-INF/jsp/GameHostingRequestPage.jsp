<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact</title>
    <link rel="stylesheet" href="/css/ContactPageStyle.css">
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
        <div class="home" ><a href="/Home" class="navbar-link">Home</a></div>
        <div class="about">    <a href="/about" class="navbar-link">About</a></div>
        <div class="ListOfGames" >  <a href="/ListOfGames" class="navbar-link">Games</a></div>
        <div class="contact" >  <a href="/contact" class="navbar-link">Contact</a></div>
        <div class="contact" >  <a href="/GameHostRequest" class="navbar-link">Host your game</a></div>
    </div>
    <div class="navbar-right">
        <a href="/login" class="navbar-button">Login</a>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <h1>Fill the form to request to host your game</h1>
    <p>Do you want your own game hosted on our GAMITY? We'd love to see your game!</p>
    <form class="contact-form" action="mailto:christophesaury23@gmail.com" method="post" enctype="text/plain">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
        <label for="developerName">Developer Name:</label>
        <input type="text" id="developerName" name="developerName" required>

        <label for="gameDescription">Game Description:</label>
        <textarea id="gameDescription" name="gameDescription" rows="5" required></textarea>

        <label for="gameCode">Iframe code of the game:</label>
        <textarea id="gameCode" name="gameCode" rows="5" required></textarea>

        <input type="submit" value="Send">
    </form>
</div>

</body>
</html>
