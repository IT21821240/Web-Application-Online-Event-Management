<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Event</title>
</head>
<body>
<body bgcolor="#00FFFF">
 <form action="EventServlet" method="post">
 
    <h1 align="center">Edit Event</h1>
    <h1>
      <a href="eventlist.jsp">List of Events</a>
    </h1>
    <table border="1" align="center" cellpadding="5"
      style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
      <tr>
        <td>Event ID</td>
        <td><input type="text" name="eventID"></td>
      </tr>
     <tr>
        <td>Event Type</td>
        <td><input type="text" name="eventType" ></td>
      </tr>
      <tr>
        <td>Venue</td>
        <td><input type="text" name="venue"></td>
      </tr>
      <tr>
        <td>Hall Capacity</td>
        <td><input type="text" name="hallCapacity" ></td>
      </tr>
      <tr>
        <td>Catering Type</td>
        <td><input type="text" name="cateringType" ></td>
      </tr>
      <tr>
        <td>Meal Type</td>
        <td><input type="text" name="mealType" ></td>
      </tr>
      <tr>
        <td>Event Facilities</td>
        <td><input type="text" name="eventFacilities" ></td>
      </tr>
      <tr>
        <td></td>
        <td align="center"><input type="submit" name="Action"
          value="EditEvent"></td>
      </tr>
    </table>
  </form>

</body>
</html>