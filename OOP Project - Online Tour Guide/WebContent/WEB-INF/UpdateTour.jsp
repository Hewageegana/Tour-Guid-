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
		<div id="fullcovered">
				<br><!--<h1 class="updateHeading" id="updateHeading">Update Tour</h1><br><br> -->
				
				<br>
				
				<div class="updatetour" id="updatetour">
        		<form method="post" class="admin" id="admin" action="UpdateTour" enctype="multipart/form-data">
      				
           				 <div class="" id="f">
           				 
           				 		Tour ID<br/>
        						<input type="text" id="shortbox" name="tourID" class="duration" required placeholder="4 digit" pattern="[0-9]{4}"><br/><br/>
           				 		
        						 Place<br/>
        						<input type="text" id="box" name="topic" class="topic" required><br/><br/>
        						
        						
        						Duration<br/>
        						<input type="text" id="shortbox" name="duration" class="duration" required placeholder="in hours"><br/><br/>

        						Price<br/>
        						<input type="text" id="shortbox" class="price" name="price" required placeholder="in dollars"><br/><br/>
        
        						
        						Pickup<br/>
        						<input type="text" id="box" class="pickup" name="pickup" required ><br/><br/>
        					     
       							<div class="updatecancel">
       							<input type="submit" id="up" value="Update" class="editBtn" >&nbsp;
       							<input type="reset" id="can" value="Cancel" class="editBtn" ></div><br/><br/>
       							</div>
       							
       							
       							
    			</form>
    			</div>
    		
    			</div></div><br>
    			
    			
<footer><%@ include file="Footer.jsp" %></footer>		
</body>

</html>