<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>

</style>
</head>
<body>

<%@ include file="empnavbar.jsp" %>

<h3 align=right>Hi, ${ename}</h3>

<h3 align=center><u>Update Profile</u></h3>

<form method="post" action="update">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required" value="${emp.name}"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
${emp.gender}
</td>
</tr>

<tr><td></td></tr>


<tr><td></td></tr>



<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required  value="${emp.email}" readonly/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required  value="${emp.password}" /></td>
</tr>

<tr><td></td></tr>



<tr><td></td></tr>



<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Update" class="button"></td>
</tr>

</table>

</form>

</body>
</html>