<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Verify OTP</title>
</head>
<body>
    <h2>OTP Verification</h2>
    <form action="<%= request.getContextPath() + "/VerifyOtpServlet" %>" method="post">
        <label>Enter OTP:</label>
        <input type="text" name="otp_input" required />
        <button type="submit">Verify</button>
    </form>
</body>
</html>
