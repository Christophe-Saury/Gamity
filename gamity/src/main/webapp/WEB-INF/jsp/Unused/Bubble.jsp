<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Play</title>
    <link rel="stylesheet" href="/css/AboutPageStyle.css">
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            background-color: #1d1d1d;
            color: #cae9ea;
            font-family: "Open Sans", sans-serif;
        }
        body {
			background-image: linear-gradient(135deg, #1d1d1d 10%, #208c8c 100%);
		    background-size: cover;
        	background-repeat: no-repeat;
			background-attachment: fixed;
			font-family: "Open Sans", sans-serif;
			color: #cae9ea;
		}
			
		.box-form {
			margin: 0 auto;
			width: 80%;
			background: #3c4748;
			border-radius: 10px;
			overflow: hidden;
			display: flex;
			flex: 1 1 100%;
			align-items: stretch;
			justify-content: space-between;
			box-shadow: 0 0 20px 6px #090b6f85;
		}

        .container {
            max-width: 800px;
            margin: 40px auto;
            text-align: center;
        }



        /* Navigation Bar */
        .navbar {
    		background: linear-gradient(to left, #000000, #1D1D1D, #3c4748, #208C8C);
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: auto;
            
        }

        .navbar-left {
            display: flex;
        }

        .navbar-left :hover {
            color: #70F570;
        }
        .home,.about,.ListOfGames,.contact{
            color: #cae9ea;
            text-decoration: none;
            margin-right: 10px;
            padding: 8px 16px;
            border-radius: 5px;
            background-color: #3c4748;
            transition: background-color 0.3s ease;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 1px;
			transition: 0.3s; 
        
        }
        .home:hover,.about:hover,.ListOfGames:hover,.contact:hover{
   			background-color: #66CC66;
        
        	box-shadow: 0px 12px 24px 0px rgba(0,0,0,0.2); 
    		transform: translateY(-10px); 
        }

        .navbar-center {
            display: flex;
            text-align: center;
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



        .ad-column {
            flex-basis: 20%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .ad-column img {
            width: 100%;
            max-width: 200px;
            margin-bottom: 20px;
        }
        
        .rating-button{
            background-color: #cae9ea;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            margin: 0 10px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); 
            transition: 0.3s; 
        }
        
        .rating-button:hover{
        box-shadow: 0px 12px 24px 0px rgba(0,0,0,0.2); 
    	transform: translateY(-10px); 
        }

    </style>
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar">
    <div class="navbar-left">
    <div class="home" ><a href="/Home" class="navbar-link">Home</a></div>   
    <div class="about" >    <a href="/about" class="navbar-link">About</a></div>
      <div class="ListOfGames" >  <a href="/ListOfGames" class="navbar-link">Games</a></div>
      <div class="contact" >  <a href="/contact" class="navbar-link">Contact</a></div>
    </div>
    <div class="navbar-center">
        <h1>GAMITY</h1>
    </div>
    <div class="navbar-right">
        <a href="/login" class="navbar-button">Login</a>
    </div>
</nav>


<!-- Main Content -->

<div class="container">

    <div id="game-interface">

        <div id="game-content">
				<iframe 
			    style="width: 900px; height: 675px; overflow: hidden;"
				src="http://www.freeonlinegames.com/embed/144939"
				scrolling="no">
				</iframe>
        </div>

    </div>
    <div class="game-details">
        <h2>Description</h2>
        <p>Bubble Shooter Extreme is a WebGL/HTML5 version of popular Bubble Shooter game with great graphics. Additionally, the game is unusual because it is quite complex, but anyone who is skilled in computer games will surely be able to play it until the end of the game. Shoot two or more connected bubbles of the same color to disappear them. The more bubbles you disappear in one shot the more score you get. Game is won after all bubbles exploded.</p>
        <h2>Instructions:</h2>
        <ul>
    		<li> Use mouse to aim and shoot bubbles

    		</li>

		</ul>
        <div class="rating">
            <h2>Rate the Game</h2>
            <div class="rating-buttons">
                <button class="rating-button">1</button>
                <button class="rating-button">2</button>
                <button class="rating-button">3</button>
                <button class="rating-button">4</button>
                <button class="rating-button">5</button>
            </div>
        </div>
    </div>
</div>
<div class="ad-column">
    <img src="ad2.jpg" alt="Ad 2">
    <!-- Add more ad images or content as needed -->
</div>
<script src="script.js"></script>
</body>
</html>
