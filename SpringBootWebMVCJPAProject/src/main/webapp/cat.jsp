<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Cats - Pet Adoption & Accessory Management</title>
    <style>
        /* Flexbox styles for the cat list */
        .cat-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .cat-item {
            flex: 0 0 calc(33.33% - 20px); /* Adjust the width as needed */
            padding: 20px;
            margin: 10px;
            border: 1px solid #ccc;
            text-align: center;
            background-color: #f9f9f9;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }

        .cat-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
        }

        .cat-item img {
            max-width: 100%;
            height: auto;
            border-radius: 5px 5px 0 0;
        }

        .cat-item h4 {
            font-size: 20px;
            margin: 10px 0;
        }

        .cat-item p {
            font-size: 16px;
            margin: 5px 0;
        }

        .buy-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .buy-button:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        .cat-item img {
            max-width: 100%;
            height: 200px; /* Set a fixed height for the images */
            object-fit: cover; /* Ensure images maintain their aspect ratio */
            border-radius: 5px 5px 0 0;
        }

        .cart {
            text-align: center;
            margin-top: 20px;
            position: fixed;
            top: 20px;
            right: 20px;
            text-align: center;
            padding: 10px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .cart-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .cart-button:hover {
            background-color: #45a049;
        }

        #cart-list {
            list-style-type: none;
            padding: 0;
            margin: 0;
            text-align: left;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            margin: 5px 0;
        }

        .cart-button-remove {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .cart-button-remove:hover {
            background-color: #d32f2f;
        }
        
        .cat-item img {
    max-width: 100%;
    height: 200px; /* Set a fixed height for the images */
    object-fit: cover; /* Ensure images maintain their aspect ratio */
    border-radius: 5px 5px 0 0;
}
        
    </style>
    <script>
        let cart = [];

        function addToCart(productName) {
            cart.push(productName);
            updateCartCount();
        }

        function removeFromCart(index) {
            cart.splice(index, 1);
            updateCartDisplay();
            updateCartCount();
        }

        function updateCartCount() {
            document.getElementById("cart-count").textContent = cart.length;
        }

        function updateCartDisplay() {
            const cartList = document.getElementById("cart-list");
            cartList.innerHTML = "";

            cart.forEach(function (item, index) {
                const listItem = document.createElement("li");
                listItem.textContent = item;

                const removeButton = document.createElement("button");
                removeButton.textContent = "Remove";
                removeButton.onclick = function () {
                    removeFromCart(index);
                };

                listItem.appendChild(removeButton);
                cartList.appendChild(listItem);
            });
        }

        function redirectToAdoptionPage() {
            if (cart.length === 0) {
                alert("Your cart is empty. Please add items to the cart.");
            } else {
                // Redirect to the adoption page
                window.location.href = "adpot.jsp";
            }
        }
    </script>
</head>
<body>
    <!-- Main container -->
    <div class="container">
        <!-- Navbar -->
        <%@ include file="empnavbar.jsp" %>
        <br>
        <!-- Page content -->
        <h2>Buy Cats</h2>
        <hr />
        <br />
        <div class="buy-section">
            <h3>Available Cats</h3>
            <p>Explore our selection of adorable cats available for adoption. Each cat is unique and looking for a loving home. Find your new friend today!</p>
        </div>
        <div class="cat-list">
            <div class="cat-item">
                <img src="cat1.jpg">
                <h4>Picky</h4>
                <p>Breed: Siamese cat</p>
                <p>Age: 1 years</p>
                <p>Price: INR 1270</p>
                <button class="buy-button" onclick="addToCart('Picky')">Adopt Now</button>
            </div>
            <div class="cat-item">
                <img src="cat2.jpg">
                <h4>Luficier</h4>
                <p>Breed: British Shorthair</p>
                <p>Age: 1.5 years</p>
                <button class="buy-button" onclick="addToCart('Luficier')">Adopt Now</button>
            </div>
            <div class="cat-item">
                <img src="cat3.jpg">
                <h4>Hana</h4>
                <p>Breed: Maine Coon</p>
                <p>Age: 1 years</p>
                <p>Price: INR 1370</p>
                <button class="buy-button" onclick="addToCart('Hana')">Adopt Now</button>
            </div>
            <div class="cat-item">
                <img src="cat4.jpg">
                <h4>Rocky</h4>
                <p>Breed: Persian cat</p>
                <p>Age: 2.5 years</p>
                <p>Price: INR 1170</p>
                <button class="buy-button" onclick="addToCart('Rocky')">Adopt Now</button>
            </div>
            <div class="cat-item">
                <img src="cat5.jpg">
                <h4>Munni</h4>
                <p>Breed: Ragdoll</p>
                <p>Age: 1.0 years</p>
                <p>Price: 21,000 INR</p>
                <button class="buy-button" onclick="addToCart('Munni')">Adopt Now</button>
            </div>
            <div class="cat-item">
                <img src="cat6.jpg">
                <h4>Ronny</h4>
                <p>Breed: American Shorthair</p>
                <p>Age: 1.5 years</p>
                <p>Price: INR 1840</p>
                <button class="buy-button" onclick="addToCart('Ronny')">Adopt Now</button>
            </div>
            <div class="cat-item">
                <img src="cat7.jpg">
                <h4>Roxy</h4>
                <p>Breed: Scottish Fold</p>
                <p>Age: 2.0 years</p>
                <p>Price: INR 1570</p>
                <button class="buy-button" onclick="addToCart('Roxy')">Adopt Now</button>
            </div>
            <div class "cat-item">
                <img src="cat8.jpg">
                <h4>Lava</h4>
                <p>Breed: Bombay cat</p>
                <p>Age: 2.2 years</p>
                <p>Price: INR 1870</p>
                <button class="buy-button" onclick="addToCart('Lava')">Adopt Now</button>
            </div>
            <!-- Add more cat items with similar structure -->
        </div>
        <div class="cart">
            <button class="cart-button" onclick="updateCartDisplay()">View Cart</button>
            <ul id="cart-list"></ul>
            <button class="cart-button" onclick="redirectToAdoptionPage()">Adopt</button>
        </div>
    </div>
</body>
</html>
