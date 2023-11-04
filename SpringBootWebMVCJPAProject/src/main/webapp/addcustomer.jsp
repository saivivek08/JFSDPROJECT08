<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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

<%@ include file="adminnavbar.jsp" %>

<br>

<span class="blink">
<h3 align=center  style="color:red">${message}</h3>
</span>

<h3 align=center><u>Add Employee</u></h3>

<br>

<form:form modelAttribute="customer" method="post" action="insertcustomer">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>


<tr><td></td></tr>


<tr>
<td><label>Email ID</label></td>
<td><form:input path="email" required="required"/></td>
</tr>

<tr><td></td></tr>


<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Address</label></td>
<td>
<form:textarea path="address" required="required"/>
</td>
</tr>

<tr><td></td></tr>


<tr>
<td><label>Contact No</label></td>
<td><form:input path="contactno" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add" class="button"></td>
</tr>

</table>

</form:form>



</body>
</html>