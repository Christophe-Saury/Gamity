<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Game Request Page</title>
    <link rel="stylesheet" href="/css/GameRequestPageStyle.css">

</head>

<body>
<div class="container">
    <h1>Game Request</h1>
    <form>
        <div class="form-group">
            <label for="game-name">Game Name:</label>
            <input type="text" id="game-name" name="game-name" required>
        </div>
        <div class="form-group">
            <label for="game-description">Game Description:</label>
            <textarea id="game-description" name="game-description" required></textarea>
        </div>
        <div class="form-group">
            <label for="game-category">Game Category:</label>
            <select id="game-category" name="game-category" required>
                <option value="">Select a category</option>
                <option value="action">Action</option>
                <option value="adventure">Adventure</option>
                <option value="puzzle">Puzzle</option>
                <!-- Add more options for categories as needed -->
            </select>
        </div>
        <div class="form-group">
            <label for="game-platform">Game Platform:</label>
            <input type="text" id="game-platform" name="game-platform" required>
        </div>
        <div class="form-group">
            <label for="game-image">Game Image:</label>
            <input type="file" id="game-image" name="game-image" accept="image/*" required>
        </div>
        <div class="form-group">
            <label for="game-file">Game File:</label>
            <input type="file" id="game-file" name="game-file" required>
        </div>
        <button type="submit">Submit</button>
    </form>
</div>

<script></script>
</body>

</html>
