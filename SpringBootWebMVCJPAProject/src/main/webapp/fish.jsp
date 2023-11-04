<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
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
    <!-- Your existing head content ... -->
    <style>
    /* Flexbox styles for the fish list */
    .fish-list {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .fish-item {
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

    .fish-item:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
    }

    .fish-item img {
        max-width: 100%;
        height: auto;
        border-radius: 5px 5px 0 0;
    }

    .fish-item h4 {
        font-size: 20px;
        margin: 10px 0;
    }

    .fish-item p {
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
    
    .cart {
        text-align: center;
        margin-top: 20px;
    }

    .cart-button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 10px 0;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .cart-button:hover {
        background-color: #45a049; /* Darker green on hover */
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

    .cart-button {
        background-color: #f44336; /* Red color for remove button */
        color: white;
        border: none;
        padding: 5px 10px;
        border-radius: 5px;
        cursor: pointer;
    }

    .cart-button:hover {
        background-color: #d32f2f; /* Darker red on hover */
    }
    
    .cart {
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
    
    </style>
</head>
<body>
    <!-- Main container -->
    <div class="container">
        <!-- Navbar -->
        <%@ include file="empnavbar.jsp" %>
        <br>
        <!-- Page content -->
        <h2>Buy Fish</h2>
        <hr />
        <br />
        <div class="buy-section">
            <h3>Available Fish</h3>
            <p>Explore our selection of adorable fish available for adoption. Each fish is unique and looking for a loving home. Find your new aquatic friend today!</p>
        </div>
        <div class="fish-list">
            <div class="fish-item">
                <img src="fish1.jpg">
                <h4>Bay</h4>
                <p>Breed: Guppies</p>
                <p>Age: 1 year</p>
                <p>Price: INR 1170</p>
                <button class="buy-button" onclick="addToCart('Bay')">Adopt Now</button>
            </div>
            <div class="fish-item">
                <img src="fish2.jpg">
                <h4>Molly</h4>
                <p>Breed: Mollies</p>
                <p>Age: 1 year</p>
                <p>Price: INR 1270</p>
                <button class="buy-button" onclick="addToCart('Molly')">Adopt Now</button>
            </div>
            <div class="fish-item">
                <img src="fish3.jpg">
                <h4>Sword</h4>
                <p>Breed: Swordtails</p>
                <p>Age: 1 years</p>
                <p>Price: INR 1370</p>
                <button class="buy-button" onclick="addToCart('Sword')">Adopt Now</button>
            </div>
            <div class="fish-item">
                <img src="fish4.jpg">
                <h4>Alpha</h4>
                <p>Breed: Betta fish</p>
                <p>Age: 1.5 years</p>
                <p>Price: INR 1470</p>
                <button class="buy-button" onclick="addToCart('Alpha')">Buy Now</button>
            </div>
            <div class="fish-item">
                <img src="fish5.jpg">
                <h4>Dainel</h4>
                <p>Breed: Zebra Danio</p>
                <p>Age: 1.0 years</p>
                <p>Price: INR 1570</p>
                <button class="buy-button" onclick="addToCart('Dainel')">Adopt Now</button>
            </div>
            <div class="fish-item">
                <img src="fish6.jpg">
                <h4>Plat</h4>
                <p>Breed: Platies</p>
                <p>Age: 1.0 years</p>
                <p>Price: INR 1670</p>
                <button class="buy-button" onclick="addToCart('Plat')">Adopt Now</button>
            </div>
            <div class="fish-item">
                <img src="fish7.jpg">
                <h4>Bow</h4>
                <p>Breed: Rainbowfish</p>
                <p>Age: 1.0 years</p>
                <p>Price: INR 1770</p>
                <button class="buy-button" onclick="addToCart('Bow')">Adopt Now</button>
            </div>
            <div class="fish-item">
                <img src="fish8.jpg">
                <h4>Tera</h4>
                <p>Breed: Tetras</p>
                <p>Age: 1.1 years</p>
                <p>Price: INR 1070</p>
                <button class="buy-button" onclick="addToCart('Tera')">Adopt Now</button>
            </div>
            <!-- Add more fish items with similar structure -->
        </div>
        <div class="cart">
            <button class="cart-button" onclick="updateCartDisplay()">View Cart</button>
            <ul id="cart-list"></ul>
            <button class="cart-button" onclick="redirectToAdoptionPage()">Adopt</button>
        </div>
    </div>
</body>
</html>
