<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body bgcolor="#00FFFF">
  <h1>Delete Event</h1>
  <h1>
    <a href="eventlist.jsp">List of Events</a>
  </h1>
  <form action="EventServlet" method="post">
    Enter ID<input type="text" name="eventID"> <input type="submit"
      value="DeleteEvent" name="Action">
  </form>
</body>

</html>