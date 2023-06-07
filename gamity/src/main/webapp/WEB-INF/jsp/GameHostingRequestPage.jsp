<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Game Hosting Request</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background-color: #1d1d1d;
            font-family: "Open Sans", sans-serif;
            color: #cae9ea;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            width: 80%;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-size: 16px;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            font-size: 16px;
            border: none;
            outline: none;
            border-bottom: 2px solid #000000;
        }

        textarea {
            resize: vertical;
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

        button:hover {
            background-image: linear-gradient(135deg, #4ccf64 10%, #49C628 100%);
        }


    </style>
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
