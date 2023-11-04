<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Birds - Pet Adoption & Accessory Management</title>
    <style>
        /* Flexbox styles for the bird list */
        .bird-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .bird-item {
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

        .bird-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.2);
        }

        .bird-item img {
            max-width: 100%;
            height: 200px; /* Set a fixed height for the images */
            object-fit: cover; /* Ensure images maintain their aspect ratio */
            border-radius: 5px 5px 0 0;
        }

        .bird-item h4 {
            font-size: 20px;
            margin: 10px 0;
        }

        .bird-item p {
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
                // Redirect to the adoption page (adpot.jsp)
                window.location.href = "adpot.jsp";
            }
        }
    </script>
</head>
<body>
    <!-- Main container -->
    <div class="container">
        <!-- Navbar (You may include your navbar here) -->
        <    <%@ include file="empnavbar.jsp" %>
        
        <!-- Replace the following with your navbar -->
        <nav>
            <!-- Navbar content -->
        </nav>

        <!-- Page content -->
        <h2>Buy Birds</h2>
        <hr />
        <br />
        <div class="buy-section">
            <h3>Available Birds</h3>
            <p>Explore our selection of adorable birds available for adoption. Each bird is unique and looking for a loving home. Find your new feathered friend today!</p>
       
        </div>
        <div class="bird-list">
            <div class="bird-item">
                <img src="bird1.jpg" alt="Canny">
                <h4>Canny</h4>
                <p>Breed: Canaries</p>
                <p>Age: 2 years</p>
                <p>Price: INR 1270</p>
                <button class="buy-button" onclick="addToCart('Canny')">Adopt Now</button>
            </div>
            <div class="bird-item">
                <img src="bird2.jpg" alt="Bucky">
                <h4>Bucky</h4>
                <p>Breed: Budgies</p>
                <p>Age: 1.5 years</p>
                <p>Price: INR 1170</p>
                <button class="buy-button" onclick="addToCart('Bucky')">Adopt Now</button>
            </div>
            <div class="bird-item">
                <img src="bird3.jpg" alt="Pitch">
                <h4>Pitch</h4>
                <p>Breed: Finches</p>
                <p>Age: 1 year</p>
                <p>Price: INR 1010</p>
                <button class="buy-button" onclick="addToCart('Pitch')">Adopt Now</button>
            </div>
            <div class="bird-item">
                <img src="bird4.jpg" alt="Finch">
                <h4>Finch</h4>
                <p>Breed: Cockatiels</p>
                <p>Age: 2.5 years</p>
                <p>Price: INR 1070</p>
                <button class="buy-button" onclick="addToCart('Finch')">Adopt Now</button>
            </div>
            <div class="bird-item">
                <img src="bird5.jpg" alt="Para">
                <h4>Para</h4>
                <p>Breed: Quaker Parakeets</p>
                <p>Age: 1.0 years</p>
                <p>Price: INR 1070</p>
                <button class="buy-button" onclick="addToCart('Para')">Adopt Now</button>
            </div>
            <div class="bird-item">
                <img src="bird6.jpg" alt="Pinny">
                <h4>Pinny</h4>
                <p>Breed: Pionus Parrots</p>
                <p>Age: 2.0 years</p>
                <p>Price: INR 1070</p>
                <button class="buy-button" onclick="addToCart('Pinny')">Adopt Now</button>
            </div>
            <div class="bird-item">
                <img src="bird7.jpg" alt="Parry">
                <h4>Parry</h4>
                <p>Breed: Poicephalus Parrots</p>
                <p>Age: 1.0 years</p>
                <p>Price: INR 1170</p>
                <button class="buy-button" onclick="addToCart('Parry')">Adopt Now</button>
            </div>
            <div class="bird-item">
                <img src="bird8.jpg" alt="Peach">
                <h4>Peach</h4>
                <p>Breed: Peach-Faced Lovebirds</p>
                <p>Age: 1.2 years</p>
                <p>Price: INR 1370</p>
                <button class="buy-button" onclick="addToCart('Peach')">Adopt Now</button>
            </div>
            <!-- Add more bird items with similar structure -->
        </div>
        <div class="cart">
            <button class="cart-button" onclick="updateCartDisplay()">View Cart</button>
            <ul id="cart-list"></ul>
            <button class="cart-button" onclick="redirectToAdoptionPage()">Adopt</button>
        </div>
    </div>
</body>
</html>
