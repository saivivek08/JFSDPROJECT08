<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <style>
        body {
            font-family: sans-serif;
            line-height: 1.6;
            background-color: #f7f7f7;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 1rem;
        }
        header h1 {
            font-size: 2rem;
            margin-bottom: 0;
        }
        header nav {
            margin-top: 1rem;
        }
        header nav a {
            color: #fff;
            text-decoration: none;
            padding: 0.5rem 1rem;
        }
        header nav a:hover {
            background-color: #666;
        }
        main {
            padding: 2rem;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 2rem;
        }
        .card {
            background-color: #fff;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            text-align: center;
            margin: 1rem;
            padding: 1rem;
            border-radius: 8px;
            max-width: 300px;
        }
        .card img {
            width: 100%;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <%@ include file="empnavbar.jsp" %>
    <h3 align="right">Hi ${ename}</h3>
    <div class="container">
        <div class="card">
            <img src="PHOTO.jpg" alt="Pet Adoption" />
            <h2>Pet Adoption</h2>
            <p>Find your new best friend from our extensive collection of adoptable pets.</p>
            <a class="btn btn-default" href="adopt.jsp" role="button">View Details &raquo;</a>
        </div>
        <div class="card">
            <img src="ACC.jpg" alt="Pet Accessories" />
            <h2>Pet Accessories</h2>
            <p>Upgrade your pet's lifestyle with our high-quality pet accessories.</p>
            <a class="btn btn-default" href="accessories.jsp" role="button">View Details &raquo;</a>
        </div>
        <div class="card">
            <img src="pet.jpg" alt="About Us" />
            <h2>About Us</h2>
            <p>Learn more about our mission and commitment to animal welfare.</p>
            <a class="btn btn-default" href="about.jsp" role="button">View Details &raquo;</a>
        </div>
    </div>
</body>
</html>
