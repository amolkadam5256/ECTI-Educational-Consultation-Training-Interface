<%@ page session="true" %>
<%@ page import="model.User" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h1>Welcome, <%= user.getFullName() %>!</h1>
    <p>Email: <%= user.getEmail() %></p>
    <p>Contact: <%= user.getContactNumber() %></p>
    <a href="logout.jsp">Logout</a>
</body>
</html>
