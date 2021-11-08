<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" href="tou.css">
<meta charset="ISO-8859-1">
<title>Admin</title>

		<!-- imports -->	
	<%@page import= "java.util.ArrayList" %>
	<%@page import= "java.util.Iterator" %>
	<%@page import= "oop.tourguide.servlet.DisplayTours" %>
	<%@page import= "oop.tourguide.service.*" %>
	<%@page import= "oop.tourguide.model.*" %>
</head><br>

<body >
<header>
			<%@ include file ="Header.jsp" %>
			

	</header><br>

<div id="bg1" style="">
	<div id="buttons">
	<a href="AddTour.jsp"><button id="bt"><font id="ff">Add a Tour</font></button><br><br></a>
	
	<form method="post" action="UpdateView">
	<a href="UpdateTour.jsp"><button id="bt"><font id="ff">Update a Tour</font></button><br><br></a>
	</form>
	<a href="DeleteTour.jsp"><button id="bt"><font id="ff">Delete a Tour</font></button></a>
	
	</div>


</div>
<footer><%@ include file="Footer.jsp" %></footer>
</body>

</html>