<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="bookevent.DBconnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="eventbook.css" />
<link rel="icon" type="image/x-icon" href="images/faviconNew.ico">

</head>
<body>

<form action="">
    <h1>Booked Event Management</h1>
    <h1>
      <a href="bookevent.jsp">Book new Event</a><br>
    </h1>
    <!--  All DOctor shows-->
    <h1 align="center">List of Booked Events</h1>
    <table id="event">
      <tr>
        <th>ID</th>
        <th>Event Type</th>
        <th>Date</th>
        <th>Venue</th>
        <th>No of guests</th>
        <th>Food Type</th>
        <th>Meal Plan</th>
        <th>Equipments</th>
      </tr>
      <%
        Connection con = DBconnection.getConn();
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("Select * from eventbooking");
        while (resultSet.next()) {
      %>
      <tr>
        <td>
          <%
            out.print(resultSet.getInt(1));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(2));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(3));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(4));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(5));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(6));
          %>
        </td>
         <td>
          <%
            out.print(resultSet.getString(7));
          %>
        </td>
         <td>
          <%
            out.print(resultSet.getString(8));
          %>
        </td>
        <form action="MyServlet" method="post">
          <td><a value="Edit" name="Action"
            href="editbookEvent.jsp?id=<%=resultSet.getInt(1)%> ">Edit</a> <input
            type="hidden" name="j" value="<%= resultSet.getInt(1) %>">&nbsp;&nbsp;&nbsp;
            <a href="deletebookevent.jsp">Delete</a>&nbsp;&nbsp;&nbsp;</td>
      </tr>
      </form>
      <%
}
%>
    </table>
  </form>
  
</body>
</html>