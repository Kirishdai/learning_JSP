<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<body>

<%!
    // Declared as a class-level variable (available across the JSP page)
    String printed = "Username and Password have been added to the database";
%>

<%
    // Retrieve form data sent via POST method from index.html
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String phoneNumber = request.getParameter("phonenum");

    // Displaying the received input values on the webpage
    out.println("Username: ");
    out.println(username + "<br>");
    out.println("Password: ");
    out.println(password + "<br>");
    out.println("Phone number: ");
    out.println(phoneNumber + "<br>");

    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/aliens?allowMultipleQueries=true";
    String uname = "root";
    String pass = "Jayshreeram1#";

    // Load the MySQL JDBC driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // SQL query to insert form data into the student table
    String query = "INSERT INTO student VALUES (?, ?, ?)";

    // Establishing a connection and preparing the SQL statement
    Connection connection = DriverManager.getConnection(url, uname, pass);
    PreparedStatement ps = connection.prepareStatement(query);

    // Binding values to the SQL query
    ps.setString(1, username);
    ps.setString(2, password);
    ps.setString(3, phoneNumber);

    // Executing the query and getting the affected row count
    int count = ps.executeUpdate();

    // Closing resources
    ps.close();
    connection.close();
%>

<!-- Display the confirmation message -->
<%= printed %>

</body>
</html>
