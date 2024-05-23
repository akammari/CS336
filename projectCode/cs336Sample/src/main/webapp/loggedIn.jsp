<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
</head>
<body>



	<% try {
		
			
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();		

			//Create a SQL statement
			Statement stmt = con.createStatement();
			
			String str1 = "Select b.username, b.pass FROM Buy.users AS b";
			//out.println(str1);
			//String str1 = "SELECT e.username, e.pass FROM Buy.users AS e WHERE e.username = '" + request.getParameter("usernameInput") + "'";
			ResultSet result = stmt.executeQuery(str1);
			
			
			String username = request.getParameter("usernameInput");
			String pass = request.getParameter("passwordInput");
			//out.println("INPUTED INFO: " + username + " " + pass);
			
			boolean t = false;
			
			while (result.next()) {
				//out.println(result.getString("username") + ", " + result.getString("pass"));
				
				if (username.equals(result.getString("username"))) {
					if (pass.equals(result.getString("pass"))) {
						out.println("Welcome, " + username + "!");
						t = true;
					}
				}
 			}
			
			
			if (!t) {
				out.println("LOGIN FAILED");
			} 
			
			
			
			//close the connection.
			db.closeConnection(con);

		} catch (Exception e) {
			out.print(e);
		}
		%>

Auction:
	<br>
		<form method="post" action="createAuction.jsp">
			<table>
				
			</table>
			<input type="submit" value="Create Auction">
		
		</form>


		<form method="post" action="showAuction.jsp">
			<table>
				
			</table>
			<input type="submit" value="Show Auctions">
		
		</form>

	<form method="post" action="HelloWorld.jsp">
	<input type="submit" value="Log Out">
	</form>


</body>
</html>