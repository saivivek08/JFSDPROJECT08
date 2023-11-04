<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin: 20px 0;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        textarea {
            resize: vertical;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .message {
            text-align: center;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
    <script>
        function handleSubmit(event) {
            event.preventDefault();
            // Simulate form submission to the server (you can replace this with actual server-side processing)
            // Here, we'll simply display a confirmation message and then redirect after a delay.
            const form = document.getElementById("adoption-form");
            form.style.display = "none";

            const message = document.createElement("div");
            message.className = "message";
            message.textContent = "Thank you for your adoption request. We have received your details.";

            document.body.appendChild(message);

            setTimeout(function () {
                window.location.href = "emphome"; // Replace with your actual homepage URL
            }, 3000); // Redirect after 3 seconds (adjust the time as needed)
        }

        document.addEventListener("DOMContentLoaded", function () {
            const form = document.getElementById("adoption-form");
            form.addEventListener("submit", handleSubmit);
        });
    </script>
</head>
<body>
    <h2>Adoption Details</h2>
    <form id="adoption-form">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <label for="background">Background:</label>
        <input type="text" id="background" name="background" required>

        <label for="family-details">Family Details:</label>
        <textarea id="family-details" name="family-details" rows="4" required></textarea>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
