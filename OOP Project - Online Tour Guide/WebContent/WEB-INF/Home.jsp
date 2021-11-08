<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Travel with Us</title>
<link rel="stylesheet" type="text/css" href="HOMEPAGE.css">
</head>

	


<body >
<header>
			<%@ include file ="Header.jsp" %>
	</header>
		
		<center><h1 class="welcome">Welcome to Travel with Us !</h1></br></br>
		<form action="SearchTours" method="post">
		<input type="search" class="searchText" name="searchText"><input type="submit" value="Search" class="searchBtn"></br></br>
		</form>
		<form action="DisplayTours" method="post">
		<input type="submit" value="View Tours" class="viewBtn">
		</form></center>
		<br><br><br>
		
		<div class="about">
			<br><br><h1 class="titleabout"><center>About Travel with Us</center></h1><br><br>
			<p class="aboutus">
			We "Travel with Us" was established in 2015 with the aim of enhancing Sri-Lankan tourism. 
			Since then we have been successful in providing exciting tour experiences for our customers.
			"Travel with Us" has over 300 staff including well-experienced tour guides, customer care services, a 
			standard financial board, tour management community. We have served over 5000 customers all these years. 
			All our staff members are friendly and flexible.
			We work in collaboration with the Sri-Lankan government and numerous other tour guide services. 
			The main purpose is to develop the Sri-Lankan economy through foreign as well as local tourism. 
			We can guarantee "Travel with Us" is well standard according to all the acts and legislations available.
			We have a great collection of tours and tour packages. It's just one click
			and customers can organize a tour according to their preferences. As well as we provide numerous employment opportunities.
			 Anyone who prefers to work with us can join us through our carrier services.
			We are glad to offer you a valuable and memorable tour experience to your dream destination.
			
			</p>
		</div>
		
		<div class="contactUs">
		<fieldset class="contact">
			<br><br><br><h1><center>Contact Us</center></h1>
			<table>
			<tr>
			<td><div class="main1">
        		<h2>Contact Us</h2><br/><br/>
           		<p>
            		Hotline:+94 77 7777 117<br/>
            		Mobile:+94 77 2121 889<br/>
            		TourGuide@outlook.com<br/><br/>
            	</p>

            	<h2>
                		Visit Travel with Us <br/><br/>
            	</h2>
            	<p>
                	NO:12/A,<br/>
               	 	Rockland Place,<br/>
               	 	5th Lane,<br/>
                	Colombo 6.<br/><br/>

                <h2>Opening Hours</h2><br/><br/>
                	Monday 8.00 AM-6.00PM<br/>
                	Tuesday 8.00 AM-6.00 PM<br/>
                	Wednesday 8.00 AM-6.00 PM<br>
                	Thursday 8.00 AM-4.00 PM<br/>
                	Friday 8.00 AM-2.00 PM<br/>

            
        </div>
        </td>
        <td>
			<div class="details">
        		<form>
      				
        					 <div class="first"><h2 class="titles"> First Name</h2><br/>
        						<input type="text" id="name" name="name" class="text" required><br/><br/></div>

								<div class="last"><h2 class="titles">Last Name</h2><br/>
        						<input type="text" id="name" name="name" class="text" required><br/><br/></div>
								
        						<h2 class="titles">Mobile Number</h2><br/>
        						<input type="text" id="mobileno" class="text" name="mobileno" pattern="[0-9]{10}" placeholder="1234567890" size="10" required><br/><br/>
        
        					
        
        						<div class="email"><h2 class="titles">E-mail</h2><br/>
        						<input type="text" id="email" class="text" placeholder="abc@gmail.com" required><br/><br/></div>
       
        				
      
        						<h2 class="titles">Message</h2><br/>
        						<input type="text" id="message" name="message" class ="msg" required><br/><br/>
      
       							<input type="submit" id="sub" value="Submit" class="sub"><br/><br/>
    			</form>
    		</div>
			
		</td>
		</tr>
		
		</table>
		</fieldset>
		</div>
		
		<br><br><br>
		
		<div id="slider">
			<figure>
		
				
				<img  src="Images/horton.jpg">
				<img  src="Images/leopard.jpg">
				<img  src="Images/beach.jpg">
				<img  src="Images/Mirissa3.jpg">
				<img  src="Images/elephant.jpg">
				<img  src="Images/sigira.jpg" height=568px>
				<img  src="Images/tea3.jpg">
				<img  src="Images/mirijjawila.jpg">
				<img  src="Images/yapahuwa.jpg">
				<img  src="Images/kovil.jpg" height=568px>
				
			</figure>
		</div>
		
		
	 <footer>
	    <%@ include file="Footer.jsp" %>
	    </footer>
</body>
</html>