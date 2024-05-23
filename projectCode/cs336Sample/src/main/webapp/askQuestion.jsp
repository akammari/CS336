
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Ask a Question</title>
</head>
<body>

Ask a Question:
<br>
		<form method="post" action="questionRecorded.jsp">
			<table>
				<tr>    
					<td></td><td><input type="text" id="questionInput" name="questionInput"></td>
				</tr>
			</table>
			<input type="submit" value="Submit!">
		
		</form>
		
		
		
		

</body>
</html>