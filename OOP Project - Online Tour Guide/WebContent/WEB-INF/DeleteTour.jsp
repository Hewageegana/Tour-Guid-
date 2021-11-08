<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" href="tou.css">
<meta charset="ISO-8859-1">
<title>Delete Tour</title>
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
	
	
			<div class="bg3" id="bg3">
			
			<div id="deletepage">
				<form method="post" action="deleteTour" id="fo"><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    		
    		<div id="divdel">
    		Enter Tour ID
    		<input type ="text" name="ID" id="deletetour">
    		<input type="Submit" id="can" value="Delete" class="editBtn">
				</div>
				</form>
	</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		</div>
		<footer>
			<%@ include file="Footer.jsp" %>
		</footer>
</body>

</html>