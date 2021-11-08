<!DOCTYPE html>
	<%@page import= "java.util.ArrayList" %>
	<%@page import= "java.util.Iterator" %>
	<%@page import= "oop.tourguide.servlet.DisplayTours" %>
	<%@page import= "oop.tourguide.service.*" %>
	<%@page import= "oop.tourguide.model.*" %>

<html>
<head>

    <title>Tours</title>
    <link rel="stylesheet" href="tou.css">
    <link rel="stylesheet" href="button.css">
    <link rel="stylesheet" type="text/css" href="../css/Header.css">
    <script src="delup.js"></script>

    <header>
  		<%@ include file = "Header.jsp" %>
    </header>
    </head><br><br><br>

<body>


	
    
    <center>
	<div id="slider">
		<figure class="fig">
			            
            <img class="im" src="Images/image06.jpg"height="600">
			<img class="im" src="Images/image090.jpg"height="800">
			<img class="im" src="Images/image202.jpg"height="600">
			<img class="im" src="Images/image30.jpg"height="600">
			<img class="im" src="Images/image4.jpg"height="600">

            
		
		</figure>
	</div> 
</center>
    
    <br><br><br><br>
 <div class="java" id="hello">   
    <script type="text/javascript">
var d = new Date();
theDay=d.getDay();
switch (theDay)
{
case 5:
document.write("<b>Hello Friday....  Have a good day....</b>");
break;
case 6:
document.write("<b>Hello Saturday....  <b>It's time for new Adventure</b></b>");
break;
case 0:
document.write("<b>Woow it's Sunday.... plan a new trip with us....</b>");
break;
case 1:
document.write("<b>Hello Monday....  Have a good day....</b>");
break;
case 2:
document.write("<b>Hello Tuesday....  Have a good day....</b>");
break;
case 3:
document.write("<b>Hello Wednesday....  Have a good day....</b>");
break;
case 4:
document.write("<b>Hello Thursday....  Have a good day....</b>");
break;
default:
document.write("<b>I'm really looking forward to this weekend!</b>");
}

</script>
    </div>
<br><br><br>
    
    <div class="place" id="places">
    	<%
		
	
    	ArrayList <Tour> list = (ArrayList<Tour>) request.getAttribute("displaytour");
		
		for(Tour tour: list){
			
		
	
	%>
	
	
	<div id="displaytour">
		<div id="displaytour2">
		<h3 style="font-family:verdana;"><%= tour.getTopic() %></h3>
		<p id="displaydes">Duration : <%= tour.getDuration() %>  Hours<br>
		Price : <%= tour.getPrice() %> $<br>
		Pickup : <%= tour.getPickup() %></p>
		</div>
		<button id="booking">Book Now</button>
	</div><br>

	<%} %>
	
	

<br><br><br>

<center>
<div id="map">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63371.8152970743!2d79.82118591517911!3d6.921837369633494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae253d10f7a7003%3A0x320b2e4d32d3838d!2sColombo!5e0!3m2!1sen!2slk!4v1620614376032!5m2!1sen!2slk" width="1150" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>
</center>



        
        
        
        
</div>
    
    <div class="foot" id="footimages">

    <div class="footimg" id="footerimages1">
        <img src="Images/footimg1.jpg" width="500px" height="400px">
    
    </div>&nbsp;
        
           <div class="footimg" id="footerimages2"width="600px" height="400px">
        <img src="Images/footimg3.jpg" width="500px" height="400px">
    
    </div>&nbsp;
        
           <div class="footimg" id="footerimages3" >
        <img src="Images/footimg2.jpg" width="500px" height="400px">
    
    </div>
        </div>
    
   
    
    <footer>
    
    
    <%@ include file = "Footer.jsp" %>
    
    
    
    </footer>

</body>
</html>