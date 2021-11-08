<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Popup.css">
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<body>

<header>
			<%@ include file ="Header.jsp" %>
			

	</header><br>


<div class="popup center">
  <div class="icon">
    <i class="fa fa-check"></i>
  </div>
  <div class="title">
    Success!!
  </div>
  <div class="description">
    By clicking Go To Home button you can redirect to the home page, othervice you can back to the last page
  </div>
  <div class="dismiss-btn">
  
    <a href="Admin.jsp"><button id="dismiss-popup-btn">
     Home Page
    </button></a>
    
  </div>
</div>







</body>

</html>