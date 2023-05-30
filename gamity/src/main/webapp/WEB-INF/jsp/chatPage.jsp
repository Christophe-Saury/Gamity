<!DOCTYPE html>
<html>
<head>
    <title>Chatting Page</title>
    <link rel="stylesheet" type="text/css" href="chat.css">
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

        main {
            padding: 20px;
        }

        .chat-container {
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 20px;
            height: 400px;
            overflow-y: scroll;
        }

        .chat-messages {
            margin-bottom: 20px;
        }

        .message {
            margin-bottom: 10px;
        }

        .received {
            background-color: #f5f5f5;
            padding: 10px;
            border-radius: 4px;
        }

        .sent {
            background-color: #ddd;
            padding: 10px;
            border-radius: 4px;
            text-align: right;
        }

        .chat-input textarea {
            width: 100%;
            height: 60px;
            resize: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 5px;
            margin-bottom: 10px;
        }

        .chat-input button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        .chat-input button:hover {
            background-color: #555;
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
            <li><a href="#">STORY MODE</a></li>
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
    <div class="chat-container">
        <div class="chat-messages">
            <div class="message received">
                <img src="profile2.jpg" alt="Profile Picture">
                <p>Hey, how are you?</p>
            </div>
            <div class="message sent">
                <img src="profile2.jpg" alt="Profile Picture">
                <p>I'm good, thanks! How about you?</p>
            </div>
            <!-- Add more messages here -->
        </div>
        <div class="chat-input">
            <textarea placeholder="Type your message"></textarea>
            <button>Send</button>
        </div>
    </div>
</main>
</body>
</html>
