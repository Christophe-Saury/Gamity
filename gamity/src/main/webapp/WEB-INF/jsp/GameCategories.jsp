<!DOCTYPE html>
<html>
<head>
    <title>Game Page</title>
    <link rel="stylesheet" type="text/css" href="catogory.css">
    <style>
        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        nav ul {
            list-style: none;
            display: flex;
            align-items: center;
        }

        nav ul li {
            color: #fff;
            font-weight: bold;
            text-decoration: none;
            margin-right: 75px;
        }

        .profile {
            display: flex;
            align-items: center;
        }

        .profile img {
            border-radius: 50%;
            margin-right: 10px;
            width: 40px;
            height: 40px;
        }

        .profile .details {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }

        .container {
            display: flex;
            margin: 20px;
        }


        .game-preview {
            flex-basis: 50%;
            padding: 20px;
            border: 1px solid #ccc;
            margin-right: 20px;
        }

        .game-preview h3 {
            margin-top: 0;
        }

        .game-preview video {
            width: 100%;
        }

        .game-description {
            flex-basis: 50%;
            padding: 20px;
            border: 1px solid #ccc;
            margin-right: 20px;
        }

        .game-description h3 {
            margin-top: 0;
        }

        .game-description video {
            width: 100%;
        }

        .game-description p {
            margin-bottom: 20px;
        }

    </style>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="#"><img src="logo.png" alt="Website Logo"></a></li>
            <li><a href="#">HORROR</a></li>
            <li><a href="#">INTERACTIVE</a></li>
            <li><a href="#">STORY BASED</a></li>
            <li class="logout"><a href="#">Logout</a></li>
        </ul>
    </nav>
    <div class="profile">
        <img src="profile.jpg" alt="Profile Picture">
        <div class="details">
            <h2>User Name</h2>
            <p>User Role</p>
        </div>
    </div>
</header>
<main>
    <div class="container">
        <div class="game-preview">
            <h3>Game 1</h3>
            <video controls>
                <source src="game-preview-video.mp4" type="video/mp4">


            </video>
            <p>Game description</p>


        </div>
        <div class="game-description">
            <h3>Game 2</h3>
            <video controls>
                <source src="game-preview-video.mp4" type="video/mp4">

            </video>
            <p>Game description</p>
        </div>
    </div>
</main>
</body>
</html>
