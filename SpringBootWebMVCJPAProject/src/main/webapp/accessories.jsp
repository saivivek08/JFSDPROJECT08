<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
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
    <main>
        <div class="container">
            <div class="card">
                <img src="acc1.jpg" alt="Accessory 1" />
                <h2>Pet Accessories</h2>
                <p>Explore a wide range of high-quality pet accessories for your furry friends. Keep them happy and healthy.</p>
            </div>
            <div class="card">
                <img src="acc2.jpg" alt="Accessory 2" />
                <h2>Pet Accessories</h2>
                <p>Enhance your pet's lifestyle with our selection of accessories, toys, food, and more.</p>
            </div>
            <div class="card">
                <img src="acc3.jpg" alt="Accessory 3" />
                <h2>Pet Accessories</h2>
                <p>Discover essential pet accessories to provide the best care for your beloved pets.</p>
            </div>
        </div>
    </main>
</body>
</html>
