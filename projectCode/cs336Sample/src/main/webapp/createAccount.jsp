<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
</head>
<body>

Create Account:
	<br>
		<form method="post" action="creation.jsp">
			<table>
				<tr>    
					<td>Create Username</td><td><input type="text" id="usernameInputCreate" name="usernameInputCreate"></td>
				</tr>
				<tr>
					<td>Create Password</td><td><input type="password" id="passwordInputCreate" name="passwordInputCreate"></td>
				</tr>
			</table>
			<input type="submit" value="Submit!">
		
		</form>

</body>
</html>