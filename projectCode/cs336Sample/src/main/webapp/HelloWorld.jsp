<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Log In Page</title>
	</head>
	
	<body>
	
	
	Log in:
	<br>
		<form method="post" action="loggedIn.jsp">
			<table>
				<tr>    
					<td>Username</td><td><input type="text" id="usernameInput" name="usernameInput"></td>
				</tr>
				<tr>
					<td>Password</td><td><input type="password" id="passwordInput" name="passwordInput"></td>
				</tr>
			</table>
			<input type="submit" value="Submit!">
		
		</form>
		
		<form method="post" action="createAccount.jsp">
			<input type="submit" value="Create Account">
		</form>
		
		<form method="post" action="askQuestion.jsp">
			<input type="submit" value="Ask a Question">
		</form>
		
		<form method="post" action="faq.jsp">
			<input type="submit" value="FAQ">
		</form>
	<br>
	
</body>
</html>