<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
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
            background-image: linear-gradient(135deg,  #4ccf64 10%, #49C628 100%);
        }

    </style>
</head>

<body>
<div class="container">
    <h1>Oops! Something went wrong.</h1>
    <p>We're sorry, but an error has occurred.</p>
    <p>Please try again later or contact support for assistance.</p>
    <button onclick="redirectToHomepage()">Go to Homepage</button>
</div>

<script>
    function redirectToHomepage() {
        // Replace "homepage.html" with the actual URL of your homepage
        window.location.href = "homepage.html";
    }
</script>
</body>

</html>
