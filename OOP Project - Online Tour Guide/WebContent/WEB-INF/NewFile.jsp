<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@page import= "oop.tourguide.servlet.DisplayTours" %>
<%@page import= "java.util.ArrayList" %>
<%@page import= "oop.tourguide.model.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


    	<%
		
		ArrayList <Tour> list = (ArrayList<Tour>) request.getAttribute("displaytour");
    	
		
		for(Tour tour: list){
			
		
	
	%>
	
	<table>
	<tr><td> tour<%= tour.getTourID() %></td>
		<td><%= tour.getTopic() %></td>
		<td><%= tour.getDuration() %></td>
		<td><%= tour.getPrice() %></td>
		<td><%= tour.getPickup() %></td>
	</tr>
	</table>

	<%} %>



</body>
</html>