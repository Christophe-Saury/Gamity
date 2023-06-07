<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Game Request Page</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background-color: #1d1d1d;
            font-family: "Open Sans", sans-serif;
            color: #cae9ea;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: none;
            outline: none;
            border-bottom: 2px solid #000000;
        }

        select {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: none;
            outline: none;
            border-bottom: 2px solid #000000;
        }

        button {
            color: #fff;
            font-size: 16px;
            padding: 12px 35px;
            border-radius: 50px;
            display: inline-block;
            border: 0;
            outline: 0;
            box-shadow: 0px 4px 20px 0px #49c628a6;
            background-image: linear-gradient(135deg, #70F570 10%, #49C628 100%);
            cursor: pointer;
        }

        button[type="submit"] {
            float: right;
        }

        input[type="file"] {
            display: block;
            margin-top: 5px;
        }

        textarea {
            resize: vertical;
        }
        /* Hover effect for submit button */
        button[type="submit"]:hover {
            background-image: linear-gradient(135deg, #4ccf64 10%, #49C628 100%);
        }

    </style>
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
</body>

</html>
