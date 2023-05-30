<!DOCTYPE html>
<html>
<head>
    <title>Chatting Page</title>
    <link rel="stylesheet" type="text/css" href="../css/chat.css">
   
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
