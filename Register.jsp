<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<center>
<font color="red">
	<%
		List<String> errors = (List<String>) session.getAttribute("errors");
		if(errors != null) {
			for(String error : errors) {
	%>
				<b><%= error %></b> <br/>
	<%
			}
			session.removeAttribute("errors");
		}
	%>
</font>
<form method="post" action="processRegistration">
<h2>Registration Form</h2>
Name : <input type="text" name="name" /><br/>
Email : <input type="text" name="email" /><br/>
City : <input type="text" name="city" /><br/>
Pincode : <input type="text" name="pincode" /><br/>
Username : <input type="text" name="username" /><br/>
Password : <input type="password" name="password" /><br/>
Confirm Password : <input type="password" name="confirmPassword" /><br/>
<img src="captcha.jpg" /><br/>
Enter the captcha text : <input type="text" name="captchaInput" /><br/>
<input type="submit" value="Register" />
</form>
</center>
</head>
<body>

</body>
</html>