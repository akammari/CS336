<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Showing All Auctions</title>
</head>
<body>

<%
		List<String> list = new ArrayList<String>();

		try {

			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();	
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Get the combobox from the index.jsp
			//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the index.jsp
			String str = "SELECT * FROM Buy.Auction";
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(str);

			//Make an HTML table to show the results in:
			out.print("<table>");

			//make a row
			out.print("<tr>");
			//make a column
			out.print("<td>");
			//print out column header
			out.print("Item Name\t");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Auction Close date");
			out.print("</td>");
			//make a column
			out.print("<td>");
			out.print("Auction Close Time  ");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Initial Price  ");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Increment  ");
			out.print("</td>");
			
			out.print("<td>");
			out.print("Secret Minimum Price");
			out.print("</td>");
			
			out.print("</tr>");

			//parse out the results
			while (result.next()) {
				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				//Print out current bar name:
				out.print(result.getString("item"));
				out.print("</td>");
				
				out.print("<td>");
				//Print out current beer name:
				out.print(result.getString("close_date"));
				out.print("</td>");
				
				out.print("<td>");
				//Print out current price
				out.print(result.getString("close_time"));
				out.print("</td>");
				
				out.print("<td>");
				//Print out current price
				out.print("$"+result.getString("initial_price"));
				out.print("</td>");
				
				out.print("<td>");
				//Print out current price
				out.print("$"+result.getString("increment"));
				out.print("</td>");
				
				out.print("<td>");
				//Print out current price
				out.print("$"+result.getString("secret_minimum_price"));
				out.print("</td>");
				
				
				out.print("</tr>");

			}
			out.print("</table>");

			//close the connection.
			con.close();

		} catch (Exception e) {
		}
	%>
	
	<form method="post" action="bidPage.jsp">
			<input type="submit" value="Bid on an Auction">
		</form>

</body>
</html>