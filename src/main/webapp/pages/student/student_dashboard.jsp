<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>
<%
    User currentUser = (User) session.getAttribute("currentUser");
    if (currentUser == null || !"student".equals(currentUser.getRole())) {
        response.sendRedirect("../login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
</head>
<body>
<h1>Welcome Student: <%= currentUser.getFullName() %></h1>
<p>Here you can view your courses and progress.</p>
<a href="../logout.jsp">Logout</a>
</body>
</html>
