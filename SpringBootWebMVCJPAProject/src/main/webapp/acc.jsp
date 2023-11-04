<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Project</title>
<style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-image: url('price.jpg'); 
      background-size: cover;
      background-position: center;
      color: #333;
    }

    .container {
      max-width: 800px;
      margin: 20px auto;
      background-color: rgba(255, 255, 255, 0.8);
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    
    /* Header styles */
    h1 {
      text-align: center;
      margin-bottom: 20px;
      color: green;
    }

    /* Info section styles */
    .info-section {
      text-align: center;
      margin-bottom: 30px;
    }

    .info-section h2 {
      font-size: 24px;
    }

    .info-section p {
      font-size: 16px;
      line-height: 1.6;
    }

    /* Table styles */
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 30px;
    }

    th, td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #f2f2f2;
    }

    /* Navbar link styles */
    .navbar a {
      color: #fff;
      text-decoration: none;
      padding: 8px 16px;
      border-radius: 5px;
    }

    .navbar a:hover {
      background-color: #555;
    }
    
    /* Fertilizer item styles */
    .items {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 20px;
      margin-top: 30px;
    }

    .item {
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .item img {
      max-width: 100%;
      height: 150px;
      object-fit: cover;
      border-radius: 5px;
      margin-bottom: 10px;
    }

    .item h4 {
      margin: 0;
      color: green;
      font-size: 18px;
      margin-bottom: 10px;
    }

    .item p {
      font-size: 14px;
      line-height: 1.5;
    }

    .item button {
      padding: 8px 16px;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
      letter-spacing: 1px;
      text-transform: uppercase;
      transition: background-color 0.3s;
    }

    .item button:hover {
      background-color: #0056b3;
    }
    

    /* Cart styles */
    .cart-container {
        /* Style your cart section here */
    }

    ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
        text-align: left;
    }

    li {
        display: flex;
        justify-content: space-between;
        margin: 5px 0;
    }

    .totalCost {
        font-size: 20px;
    }

    .proceedToCheckout {
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

    .proceedToCheckout:hover {
        background-color: #45a049;
    }
    
    .cart-container {
      position: absolute;
      top: 10px;
      right: 10px;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .cart h2 {
      color: green;
      margin-bottom: 15px;
    }

    .cart ul {
      list-style-type: none;
      padding: 0;
      margin: 0;
    }

    .cart li {
      font-size: 14px;
      margin-bottom: 5px;
    }

    .cart p {
      font-size: 16px;
      margin-top: 10px;
    }

    .cart button {
      padding: 8px 16px;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
      letter-spacing: 1px;
      text-transform: uppercase;
      transition: background-color 0.3s;
    }

    .cart button:hover {
      background-color: #0056b3;
    }
    
</style>




 
</head>
<body>
<div class="navbar">
    <!-- Your navigation bar here -->
    <%@ include file="empnavbar.jsp" %>
    <!-- ... -->
</div>

<div class="container">
    <h1>Pet Accessories</h1>
    <section class="items">
        <div class="item">
          <div class="item-content">
            <img src="acc11.jpg">
            <h4>Bed</h4>
            <p>Price: INR 1650</p>
            <button onclick="addToCart('Bed', 1650)">Order</button>
          </div>
        </div>
        <div class="item">
          <div class="item-content">
            <img src="acc21.jpg">
            <h4>Chew Toy</h4>
            <p>Price: INR 700</p>
            <button onclick="addToCart('Chew Toy', 700)">Order</button>
          </div>
        </div>
        <div class="item">
            <div class="item-content">
              <img src="acc31.png">
              <h4>Wool Ball & Mouse(Combno)</h4>
              <p>Price: INR 1050</p>
              <button onclick="addToCart('Wool Ball & Mouse', 1050)">Order</button>
            </div>
          </div>
          <div class="item">
            <div class="item-content">
              <img src="acc4.png">
              <h4>Cat Toy</h4>
              <p>Price: INR 1290</p>
              <button onclick="addToCart('Cat Toy', 1290)">Order</button>
            </div>
          </div>
          <div class="item">
            <div class="item-content">
              <img src="acc5.png">
              <h4>Cages</h4>
              <p>Price: INR 1080</p>
              <button onclick="addToCart('Cages', 1080)">Order</button>
            </div>
          </div>
          <div class="item">
            <div class="item-content">
              <img src="acc6.png">
              <h4>Collar</h4>
              <p>Price: INR 1000</p>
              <button onclick="addToCart('Collar', 1000)">Order</button>
            </div>
          </div>
          <div class="item">
            <div class="item-content">
              <img src="acc7.png">
              <h4>Harness</h4>
              <p>Price: INR 1870</p>
              <button onclick="addToCart('Harness', 1870)">Order</button>
            </div>
          </div>
        <!-- ... -->
         

<div class="cart-container">
    <!-- Cart section -->
    <h2>Cart</h2>
    <ul id="cartItems"></ul>
    <p>Total Cost: INR <span id="totalCost">0</span></p>
    <button onclick="proceedToCheckout()">Proceed to Checkout</button>
</div>



<h2>Cart</h2>
<ul id="cartItems">
    <!-- Cart items will be displayed here -->
</ul>
<p>Total Cost: <span id="totalCost">0</span></p>

<script>
    // Function to add selected items to the cart
    function addToCart(itemName, itemPrice) {
        const cartItems = document.getElementById("cartItems");
        const totalCost = document.getElementById("totalCost");

        const listItem = document.createElement("li");
        listItem.textContent = `${itemName} - INR ${itemPrice}`;
        cartItems.appendChild(listItem);

        totalCost.textContent = parseFloat(totalCost.textContent) + parseFloat(itemPrice);
    }

    // Function to proceed to checkout
    function proceedToCheckout() {
        const cartItems = document.getElementById("cartItems").innerHTML;
        const totalCost = document.getElementById("totalCost").innerHTML;

        // Create a form
        const form = document.createElement("form");
        form.action = "checkout.jsp"; // Replace "checkout.jsp" with the actual JSP page for checkout
        form.method = "post";

        // Create hidden input fields to send cart items and total cost to the checkout page
        const cartItemsInput = document.createElement("input");
        cartItemsInput.type = "hidden";
        cartItemsInput.name = "cartItems";
        cartItemsInput.value = cartItems;
        form.appendChild(cartItemsInput);

        const totalCostInput = document.createElement("input");
        totalCostInput.type = "hidden";
        totalCostInput.name = "totalCost";
        totalCostInput.value = totalCost;
        form.appendChild(totalCostInput);

        // Create input fields for card details
        const cardNumberInput = document.createElement("input");
        cardNumberInput.type = "text";
        cardNumberInput.name = "cardNumber";
        cardNumberInput.placeholder = "Card Number";
        form.appendChild(cardNumberInput);

        const expiryInput = document.createElement("input");
        expiryInput.type = "text";
        expiryInput.name = "expiry";
        expiryInput.placeholder = "Expiry (MM/YY)";
        form.appendChild(expiryInput);

        const cvvInput = document.createElement("input");
        cvvInput.type = "text";
        cvvInput.name = "cvv";
        cvvInput.placeholder = "CVV";
        form.appendChild(cvvInput);

        // Append the form to the body and submit it
        document.body.appendChild(form);
        form.submit();
    }
</script>




</body>
</html>