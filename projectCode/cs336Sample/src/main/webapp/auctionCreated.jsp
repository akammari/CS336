
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Create Auction</title>
</head>
<body>

<%
	try {

		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		//Get parameters from the HTML form at the index.jsp
		String newItem = request.getParameter("itemInput");
		String closeDate = request.getParameter("closeDateInput");
		String closeTime = request.getParameter("closeTimeInput");
		String initialPrice = request.getParameter("initialPriceInput");
		String bidIncrement = request.getParameter("incrementInput");
		String secretMinPrice = request.getParameter("secretMinimumPriceInput");
		//float price = Float.valueOf(request.getParameter("price"));


		//Make an insert statement for the Sells table:
		String insert = "INSERT INTO Buy.Auction(item,close_date, close_time, initial_price, increment, secret_minimum_price)"
				+ "VALUES (?,?,?,?,?,?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps = con.prepareStatement(insert);

		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps.setString(1, newItem);
		ps.setString(2, closeDate);
		ps.setString(3, closeTime);
		ps.setString(4, initialPrice);
		ps.setString(5, bidIncrement);
		ps.setString(6, secretMinPrice);
		ps.executeUpdate();

		
		/*  //Make an insert statement for the Sells table:
		insert = "INSERT INTO beers(name)"
				+ "VALUES (?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		ps = con.prepareStatement(insert);
		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself		
		ps.setString(1, newBeer);
		ps.executeUpdate();

		
		//Make an insert statement for the Sells table:
		insert = "INSERT INTO sells(bar, beer, price)"
				+ "VALUES (?, ?, ?)";
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		ps = con.prepareStatement(insert);

		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps.setString(1, newBar);
		ps.setString(2, newBeer);
		ps.setFloat(3, price);
		//Run the query against the DB
		ps.executeUpdate();
		//Run the query against the DB
		*/
		
		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();
		out.print("insert succeeded");
		
	} catch (Exception ex) {
		out.print(ex);
		out.print("insert failed");
	}
%>

</body>
</html>