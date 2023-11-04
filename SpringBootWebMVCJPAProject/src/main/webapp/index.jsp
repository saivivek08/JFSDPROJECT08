<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-image: url('OIP.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }

        .content-container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8); /* Add an overlay to improve readability */
            padding: 20px;
        }

        .feature {
            margin: 20px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Add a semi-transparent background to individual features */
            border-radius: 10px;
            display: inline-block;
            width: calc(20% - 40px); /* Ensure each feature occupies 20% of the width with some spacing */
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <div class="content-container">
        <h1>Welcome to Our Pet Adoption and Accessories Web App</h1>
        <p>Explore the features of our web application:</p>
    </div>

    <div style="text-align: center; margin-top: 30px;">
        <div class="feature">
            <h3>Find Your Furry Companion</h3>
            <p>Discover adorable pets looking for loving homes.</p>
        </div>
        <div class="feature">
            <h3>Pet Accessories Store</h3>
            <p>Shop for a wide range of pet accessories and essentials.</p>
        </div>
        <div class="feature">
            <h3>Adopt a Pet</h3>
            <p>Register and adopt a pet to make them part of your family.</p>
        </div>
        <div class="feature">
            <h3>Accessories Shop</h3>
            <p>Explore our store for pet toys, food, and more.</p>
        </div>
        <div class="feature">
            <h3>Pet Care Tips</h3>
            <p>Find valuable information on pet care and health.</p>
        </div>
    </div>
</body>
</html>
