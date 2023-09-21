<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%> 
 <%@page import="bookevent.DBconnection"%>
<%Class.forName("com.mysql.jdbc.Driver");%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit your booked event</title>
<link rel="stylesheet" type="text/css" href="eventbook.css" />
</head>
<body>

<form action="MyServlet" method="post">
<%  
        String eid = request.getParameter("id");
        int id = Integer.parseInt(eid);
		Connection con = DBconnection.getConn();
		Statement statement = con.createStatement();
		String sql = "Select * from eventbooking where id='"+id+"'"; 
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
	%>
    <h1 align="center">Edit Doctor</h1>
    <h1>
      <a href="bookeventlist.jsp">List of Booked Events</a>
    </h1>
     <div class="main">
    <br>
    <label class="lable">Booked Event ID</label>
        <input type="hidden" name="id" class="contain" value="<%= id %>" >
        <br><br>
      <label class="lable">Event Type(Wedding/Birthday Party/Musical Show/Magic Show)</label>
        <input type="text" name="ename" class="contain" value="<%= rs.getString(2)%>" required>
     <br><br>
       <label class="lable"> Date </label>
        <input type="date" name="edate" class="contain"  value="<%= rs.getString(3)%>" required>
    <br><br>
        <label class="lable"> Venue(Shangri-la/Galadari/Cinnamon Grand/Kingsbury)</label>
        <input type="text" name="venue" class="contain"  value="<%= rs.getString(4)%>" required>
     <br><br>
        <label class="lable"> No of Guests</label>
        <input type="text" name="guests" class="contain"  value="<%= rs.getString(5)%>" required>
      <br><br>
        <label class="lable"> Food Type(Veg/Non-Veg)</label>
        <input type="text" name="efood" class="contain"  value="<%= rs.getString(6)%>" required>
      <br><br>
        <label class="lable"> Meal Type(Breakfast,Lunch,Tea & Snacks,Dinner)</label>
        <input type="text" name="emeal"  class="contain"  value="<%= rs.getString(7)%>" required>
      <br><br>
        <label class="lable"> Equipment(DJ/Stage/Mike & Speaker)</label>
        <input type="text" name="equp" class="contain"  value="<%= rs.getString(8)%>" required>
      <br><br>
        
        <input type="submit" name="Action" value="Edit" id="book">
  </form>
   </div>
   <%}
	%>
   
</body>
</html>