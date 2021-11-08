<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" href="tou.css">
<meta charset="ISO-8859-1">
<title>Update Tour</title>
		<!-- imports -->	
	<%@page import= "java.util.ArrayList" %>
	<%@page import= "java.util.Iterator" %>
	<%@page import= "oop.tourguide.servlet.DisplayTours" %>
	<%@page import= "oop.tourguide.service.*" %>
	<%@page import= "oop.tourguide.model.*" %>

</head>
<body>

<header>
			<%@ include file ="Header.jsp" %>
			

	</header><br>
	
				
		<div class="bg2" id="bg2">		
		<div id="fulco">
				<br><!--<h1 class="updateHeading" id="updateHeading">Update Tour</h1><br><br> -->
				
				<br>
				<div class="updatetour" id="updatetour">
           				 
           				 
       				 		<form action="UpdateTour" method="post">
           				 			
           				 			<table>
           				 				<tr id="tabs"><th>Tour ID</th><th>Topic</th><th>Duration</th><th>Price</th><th>Pickup</th></tr>
           				 			<%
    									ArrayList <Tour> list = (ArrayList<Tour>) request.getAttribute("displaytour");
										for(Tour tour: list){
									%>
           				 	<tr>
           				 		<td><input type="text" id="upt" name="tourID" value=<%=tour.getTourID()%>  class="duration" required placeholder="4 digit" pattern="[0-9]{4}"></td>
           				 		
        						<td><input type="text"id="upt" name="topic" value=<%=tour.getTopic()%> class="topic" required></td>
        						
        						<td><input type="text" id="upt" name="duration" value=<%=tour.getDuration()%> class="duration" required placeholder="in hours"></td>

        						<td><input type="text" id="upt" class="price" name="price" value=<%=tour.getPrice()%> required placeholder="in dollars"></td>
       
        						<td><input type="text" id="upt" class="pickup" name="pickup" value=<%=tour.getPickup()%> required ></td>
        					     
       							<td><input type="submit" id="up" value="Update" class="editBtn"></td>
       							</tr>
       								<%} %>
       								</table>
       							</form>
       						
       							</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
       							
    			
    			</div>
    		
    			</div><br>
    			
    			
<footer><%@ include file="Footer.jsp" %></footer>		
</body>

</html>