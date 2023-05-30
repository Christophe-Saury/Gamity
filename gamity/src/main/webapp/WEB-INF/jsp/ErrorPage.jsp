<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
    <link rel="stylesheet" href="../css/error.css">
    
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
