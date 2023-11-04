<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
     <style>
        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: green;
        }

        h2 {
            margin-bottom: 10px;
        }

        p {
            margin-bottom: 20px;
        }

        /* Payment form styles */
        form {
            display: flex;
            flex-direction: column;
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ccc;
            padding-bottom: 5px;
            margin-bottom: 5px;
        }

        .cart-item button {
            background-color: #dc3545;
        }

        .cart-item button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Checkout</h1>

        <!-- Retrieve data from the request parameters -->
        <% String cartItems = request.getParameter("cartItems"); %>
        <% String totalCost = request.getParameter("totalCost"); %>

        <!-- Display the selected items and total cost -->
        <div>
            <h2>Selected Items:</h2>
            <div id="cartItems">
                <!-- Split the cartItems string by line breaks to get individual items -->
                <% String[] items = cartItems.split("\\r?\\n"); %>
                <% for (String item : items) { %>
                    <div class="cart-item">
                        <%= item %>
                        <button onclick="removeItem(this)">Clear</button>
                    </div>
                <% } %>
            </div>
            <h2>Total Cost:</h2>
            <p>INR <%= totalCost %></p>
        </div>

        <!-- Option to clear selected items -->
        <div>
            <form action="emphome.jsp" method="get">
                <button type="submit">Clear All Selections</button>
            </form>
        </div>

        <!-- Payment form for card details -->
        <div>
            <h2>Enter Card Details:</h2>
            <form action="paymentProcess.jsp" method="post">
                <label for="cardNumber">Card Number (16 digits):</label>
                <input type="text" id="cardNumber" name="cardNumber" required pattern="[0-9]{16}"><br>
                <label for="expiry">Expiry Date (MM/YY):</label>
                <input type="text" id="expiry" name="expiry" required pattern="(0[1-9]|1[0-2])/(2[0-9])"><br>
                <label for="cvv">CVV:</label>
                <input type="password" id="cvv" name="cvv" required pattern="[0-9]{3}"><br>
                <input type="hidden" name="cartItems" value="<%= cartItems %>">
                <input type="hidden" name="totalCost" value="<%= totalCost %>">
                <button type="submit">Proceed to Payment</button>
            </form>
        </div>
    </div>

    <script>
        function removeItem(button) {
            const cartItem = button.parentNode;
            cartItem.parentNode.removeChild(cartItem);
        }
    </script>
</body>
</html>
