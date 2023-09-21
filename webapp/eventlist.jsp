<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="AddEventPackage.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Events</title>
</head>
<style>
<!--
a {
  text-decoration: none;
}
-->
</style>
<body bgcolor="#00FFFF">
  <form action="">
    <h2 align="center">
      <a href="addevent.jsp">Add New Event</a><br>
    </h2>
    <!--  All Event shows-->
    <h1 align="center">List of Events</h1>
    <table border="1" align="center" cellpadding="5"
      style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
      <tr>
        <th>Event ID</th>
        <th>Event Type</th>
        <th>Venue</th>
        <th>Hall Capacity</th>
        <th>Catering Type</th>
        <th>Meal Type</th>
        <th>Event Facilities</th>
        <th>Actions</th>
      </tr>
      <%
        Connection con = DBConnection.getConn();
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("Select * from eventform");
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
        <form action="EventServlet" method="post">
          <td><a value="Edit" name="Action"
            href="editEvent.jsp?id=<%=resultSet.getInt(1)%> ">Edit</a> <input
            type="hidden" name="j" value="<%= resultSet.getInt(1) %>">&nbsp;&nbsp;&nbsp;
            <a href="deleteEvent.jsp">Delete</a>&nbsp;&nbsp;&nbsp;</td>
      </tr>
      </form>
      <%
}
%>
    </table>
  </form>
<body>

</body>
</html>