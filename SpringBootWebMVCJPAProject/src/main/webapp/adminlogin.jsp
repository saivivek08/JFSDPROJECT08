<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>

body {
            background-color: #f7f7f7; /* Light gray background */
            font-family: Arial, sans-serif;
            text-align: center; /* Center-align all text within the body */
            margin: 0;
        }

        .blink {
            animation: blink 1s steps(1, end) infinite;
        }

        @keyframes blink {
            0% {
                opacity: 1;
            }
            50% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        h3 {
            color: red; /* Red text color for h3 elements */
        }

        table {
            margin: 0 auto; /* Center-align the table horizontally */
            text-align: left; /* Reset text alignment for table cells */
        }

        label {
            text-align: right; /* Right-align labels in the table */
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 10px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            text-align: center; /* Center-align text within input fields */
        }

        .button {
            background-color: #1e90ff; /* Dodger Blue background color */
            border: none;
            color: #fff; /* White text color */
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px; /* Rounded corners */
            cursor: pointer;
            transition: background-color 0.3s; /* Smooth background color transition on hover */
            margin: 0 auto; /* Center the button horizontally */
            display: block; /* Ensure it spans the width */
        }
        
        a {
            color: #1e90ff; /* Dodger Blue for links */
        }
</style>
</head>
<body>

<%@ include file="navbar.jsp" %>

<br>

<span class="blink">
  <h3 align = center style="color:red"> ${message}</h3>
</span>

<h3 align=center><u>Admin Login</u></h3>

<br>



<form method="post" action="checkadminlogin">

<table align=center>


<tr>
<td><label>Username</label></td>
<td><input type="text" name="uname" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required/></td>
</tr>



<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Login" class="button"></td>
</tr>

</table>

</form>


</body>
</html>