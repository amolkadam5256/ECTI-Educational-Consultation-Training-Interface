package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import dao.UserDAO;
import model.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {    

    private static final int SESSION_TIMEOUT = 30 * 60; // 30 minutes

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get login credentials
        String email = request.getParameter("email");
        String password = request.getParameter("user_password");

        // Authenticate user
        UserDAO userDAO = new UserDAO();
        User user = userDAO.loginUser(email, password);

        if (user != null) {
            // Create session
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", user);
            session.setMaxInactiveInterval(SESSION_TIMEOUT);

            // Redirect based on role
            String role = user.getRole() != null ? user.getRole() : "student";

            switch (role.toLowerCase()) {
                case "admin":
                    response.sendRedirect(request.getContextPath() + "/pages/admin/admin_dashboard.jsp");
                    break;
                case "teacher":
                    response.sendRedirect(request.getContextPath() + "/pages/teacher/teacher_dashboard.jsp");
                    break;
                case "manager":
                    response.sendRedirect(request.getContextPath() + "/pages/manager/manager_dashboard.jsp");
                    break;
                default: // student
                    response.sendRedirect(request.getContextPath() + "/pages/student/student_dashboard.jsp");
                    break;
            }

        } else {
            // Invalid credentials
            response.sendRedirect(request.getContextPath() + "/pages/login.jsp?error=1");
        }
    }
}
