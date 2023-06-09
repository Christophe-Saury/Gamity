<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Game Hosting Request</title>
    <link rel="stylesheet" href="/css/GameHostingPageStyle.css">
</head>

<body>
<div class="container">
    <h1>Game Hosting Request</h1>
    <p>Fill out the form below to submit your game hosting request.</p>

    <form action="submit_request.php" method="POST">
        <label for="gameName">Game Name:</label>
        <input type="text" id="gameName" name="gameName" required>

        <label for="developerName">Developer Name:</label>
        <input type="text" id="developerName" name="developerName" required>

        <label for="gameDescription">Game Description:</label>
        <textarea id="gameDescription" name="gameDescription" rows="5" required></textarea>

        <label for="contactEmail">Contact Email:</label>
        <input type="email" id="contactEmail" name="contactEmail" required>

        <button type="submit">Submit Request</button>
    </form>
</div>
</body>

</html>
