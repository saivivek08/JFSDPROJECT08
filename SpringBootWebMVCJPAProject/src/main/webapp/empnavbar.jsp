<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <title>Spring Boot MVC</title>
    <style>
        /* Add your custom CSS styles here */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #0076b8; /* Blue background color */
            z-index: 9999; /* Ensure the dropdown appears on top */
        }

        .dropdown-content a {
            color: #fff; /* White font color */
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
    <h1 align="center">Pet Adoption And Accessories</h1>
    <br>
    <ul>
        <li><a href="emphome">Home</a></li>
        <li><a href="updateprofile">Update Profile</a></li>
        <li class="dropdown">
            <a class="dropbtn">Pets</a>
            <div class="dropdown-content">
                <a href="dog">Dogs</a>
                <a href="cat.jsp">Cats</a>
                <a href="fish.jsp">Fish</a>
                <a href="bird.jsp">Birds</a>
            </div>
        </li>
        <li><a href="acc">Accessories</a></li>
        <li><a href="emplogout">Logout</a></li>
    </ul>
</body>
</html>
