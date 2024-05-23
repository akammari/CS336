<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Auction Information:
	<br>
		<form method="post" action="auctionCreated.jsp">
			<table>
				<tr>    
					<td>Item</td><td><input type="text" id="itemInput" name="itemInput"></td>
				</tr>
				<tr>
					<td>Close Date</td><td><input type="date" id="closeDateInput" name="closeDateInput"></td>
				</tr>
				<tr>
					<td>Close Time</td><td><input type="time" id="closeTimeInput" name="closeTimeInput"></td>
				</tr>
				<tr>
					<td>Initial Price</td><td><input type="number" id="initialPriceInput" name="initialPriceInput"></td>
				</tr>
				<tr>
					<td>Increment For Bids</td><td><input type="number" id="incrementInput" name="incrementInput"></td>
				</tr>
				<tr>
					<td>Secret Minimum Price</td><td><input type="number" id="secretMinimumPriceInput" name="secretMinimumPriceInput"></td>
				</tr>
				
			</table>
			<input type="submit" value="Submit!">
		
		</form>
		
		<form method="post" action="createAccount.jsp">
			<input type="submit" value="Create Account">
		</form>
	<br>

</body>
</html>