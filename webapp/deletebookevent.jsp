<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Booked Event</title>
<link rel="stylesheet" type="text/css" href="eventbook.css" />
</head>
<body>
<h1>Delete Doctor</h1>
  <h1>
    <a href="bookeventlist.jsp">List of Booked Events</a>
  </h1>
  <form action="MyServlet" method="post">

    <lable class="lable" >Enter event ID </lable>
    <input type="text" name="id" class="contain" > 
    <input type="submit"
      value="Delete" name="Action" id="book">
  </form>
</body>
</html>