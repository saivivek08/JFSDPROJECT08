<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment - Pet Adoption & Accessory Management</title>
</head>
<body>
    <!-- Main container -->
    <div class="container">
        <!-- Navbar or other common elements -->
        <%@ include file="empnavbar.jsp" %>
        <br>
        <!-- Page content -->
        <h2>Payment</h2>
        <hr>
        <h3>Payment Details</h3>

        <div id="cart-items">
            <!-- Cart items will be displayed here using JavaScript -->
        </div>

        <div id="cart-total" class="cart-total">
            <!-- Total cost will be displayed here using JavaScript -->
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Retrieve the cart data from the query parameter
            const params = new URLSearchParams(location.search);
            const cartData = params.get("cartData");

            if (cartData) {
                // Parse the cart data (assuming it's a JSON string)
                const cartItems = JSON.parse(cartData);

                // Display the cart items
                const cartItemsContainer = document.getElementById("cart-items");
                cartItems.forEach(function (item) {
                    const itemElement = document.createElement("div");
                    itemElement.innerHTML = `
                        <p>Name: ${item.name}</p>
                        <p>Price: ${item.price} INR</p>
                    `;
                    cartItemsContainer.appendChild(itemElement);
                });

                // Calculate and display the total cost
                const totalCost = cartItems.reduce(function (total, item) {
                    return total + item.price;
                }, 0);

                const cartTotal = document.getElementById("cart-total");
                cartTotal.textContent = `Total Cost: ${totalCost} INR`;
            } else {
                const cartItemsContainer = document.getElementById("cart-items");
                cartItemsContainer.innerHTML = "<p>Your cart is empty. Please add items to the cart.</p>";
            }
        });
    </script>
</body>
</html>
