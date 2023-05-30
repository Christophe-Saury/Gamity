<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* General Styles */
        body {
            background-color: #1d1d1d;
            color: #cae9ea;
            font-family: "Open Sans", sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 15px;
        }

        /* Navigation Bar */
        .navbar {
            background-color: #3c4748;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-left {
            display: flex;
        }

        .navbar-link {
            color: #cae9ea;
            text-decoration: none;
            margin-right: 20px;
        }

        .navbar-right .navbar-button {
            background-color: #208c8c;
            color: #000000;
            padding: 8px 16px;
            border-radius: 5px;
            text-decoration: none;
        }

        .navbar-right .navbar-button:hover {
            background-color: #70F570;
        }

        /* Contact Form */
        .contact-form {
            text-align: left;
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #cae9ea;
        }

        textarea {
            resize: vertical;
            min-height: 100px;
        }

        input[type="submit"] {
            background-color: #208c8c;
            color: #000000;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #70F570;
        }

    </style>
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
        <a href="#" class="navbar-link">Home</a>
        <a href="#" class="navbar-link">About</a>
        <a href="#" class="navbar-link">Games</a>
        <a href="#" class="navbar-link">Contact</a>
    </div>
    <div class="navbar-right">
        <a href="#" class="navbar-button">Login</a>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <h1>Contact Us</h1>
    <p>We'd love to hear from you!</p>
    <form class="contact-form" action="#" method="post">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="message">Message</label>
        <textarea id="message" name="message" rows="4" required></textarea>

        <input type="submit" value="Send">
    </form>
</div>

<script src="script.js"></script>
</body>
</html>
