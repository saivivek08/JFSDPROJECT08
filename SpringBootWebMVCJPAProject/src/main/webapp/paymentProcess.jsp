<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Processing</title>
    <!-- Your CSS styles here -->
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            padding: 20px;
        }

        h1 {
            color: #333;
        }

        .payment-details {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            margin: 20px auto;
            max-width: 400px;
        }

        .payment-details h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .payment-details p {
            font-size: 16px;
            margin: 5px 0;
        }

        .success-message {
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            padding: 20px;
            margin: 20px auto;
            max-width: 400px;
        }

        .success-message h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .success-message p {
            font-size: 16px;
            margin: 5px 0;
        }

        .go-back-link {
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
    
    <!-- ... -->
</head>
<body>
    <h1>Payment Processing</h1>
    
    <%-- Retrieve data from the request parameters --%>
    <% String cardNumber = request.getParameter("cardNumber"); %>
    <% String expiry = request.getParameter("expiry"); %>
    <% String cvv = request.getParameter("cvv"); %>
    <% String cartItems = request.getParameter("cartItems"); %>
    <% String totalCost = request.getParameter("totalCost"); %>
    
    <%-- Perform payment processing logic here --%>
    <%-- In a real-world application, you would integrate with a secure payment gateway --%>
    <%-- and perform necessary validation and authorization checks --%>
    <%-- For demonstration purposes, we're just printing the details here --%>
    <div>
        <h2>Payment Details:</h2>
        <p>Card Number: <%= cardNumber %></p>
        <p>Expiry Date: <%= expiry %></p>
    </div>
    
    <%-- Display the selected items and total cost from the cart --%>
    <div>
        <h2>Total Cost:</h2>
        <p>INR <%= totalCost %></p>
    </div>
    
    <%-- Thank you message for the successful payment --%>
    <div>
        <h2>Thank you for your payment!</h2>
        <p>Your payment of INR <%= totalCost %> has been successfully processed.</p>
        <p>An order confirmation email will be sent to your registered email address.</p>
    </div>

    <%-- Link to go back to the home page --%>
    <div>
        <a href="emphome.jsp">Go back to Home Page</a>
    </div>
    
</body>
</html>
