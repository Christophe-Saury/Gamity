<!DOCTYPE html>

<html>

<head>

    <title>Dashboard</title>

    <link rel="stylesheet" type="text/css" href="NewFile.css">
    <style>
        /* Reset styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        /* Styles for header */
        header {
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: space-between;
            background-color: #333;
            color: #fff;
            padding: 10px;
        }
        nav ul {
            display: flex;
            flex-direction: row;
            align-items: center;
        }
        nav ul li {
            margin-right: 100px;
        }
        nav li {
            margin-right: 20px;
        }
        nav li a {
            color: #fff;
            text-decoration: none;
        }
        .logout {
            margin-left: auto;
        }
        .profile {
            display: flex;
            flex-direction: row;
            align-items: center;
        }
        .profile img {
            border-radius: 50%;
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        /* Styles for main */
        main {
            padding: 20px;
        }
        .wrapper {
            display: flex;
            flex-direction: row;
            margin-bottom: 30px;
        }
        .section {
            flex: 1;
            margin-right: 20px;
        }
        .profile-section {
            flex-direction: column;
        }
        .profile-section p {
            margin-top: 10px;
        }
        h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }
        p {
            font-size: 16px;
            line-height: 1.5;
        }
    </style>

</head>

<body>

<header>

    <nav>

        <ul>

            <li><a href="#"><img src="src/main/webapp/WEB-INF/jsp/Logo.png" alt="Website Logo"></a></li>

            <li><a href="#">HORROR</a></li>

            <li><a href="#">INTERACTIVE</a></li>

            <li><a href="#">STORY BASED</a></li>

            <li class="logout"><a href="login">Logout</a></li>

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

    <div class="wrapper">

        <div class="section profile-section">

            <h2>Profile Section</h2>

            <p>User details go here</p>

        </div>

        <div class="wrapper">

            <div class="section">

                <h2>Section 1</h2>

                <p>Information goes here</p>

            </div>

            <div class="section">

                <h2>Section 2</h2>

                <p>Information goes here</p>

            </div>

        </div>



        <div class="section">

            <h2>Section 3</h2>

            <p>Information goes here</p>

        </div>

    </div>

</main>

</body>

</html>

