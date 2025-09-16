package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import model.User;
import dao.UserDAO;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Collect form data
        String fullName = request.getParameter("full_name");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("contact_number");
        String password = request.getParameter("user_password");

        // Optional role field only if admin form has it:
        String roleFromForm = request.getParameter("role");

        // Build user object
        User user = new User();
        user.setFullName(fullName);
        user.setEmail(email);
        user.setContactNumber(contactNumber);
        user.setPassword(password);

        // By default force role student
        String finalRole = "student";
        Integer createdBy = null;

        // Check if someone is logged in and is admin
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("currentUser") != null) {
            User currentUser = (User) session.getAttribute("currentUser");

            if ("admin".equals(currentUser.getRole())) {
                // Admin creating a user, take role from form if provided
                if (roleFromForm != null && !roleFromForm.isEmpty()) {
                    finalRole = roleFromForm; // admin decides
                }
                createdBy = currentUser.getId();
            } else {
                // Non-admin creating user: always student
                finalRole = "student";
                createdBy = currentUser.getId();
            }
        }

        // Set final role and created_by
        user.setRole(finalRole);
        user.setCreatedBy(createdBy);

        // Save to DB
        UserDAO userDAO = new UserDAO();
        boolean isRegistered = userDAO.registerUser(user);

        // Redirect appropriately
        if (isRegistered) {
            if (session != null && session.getAttribute("currentUser") != null) {
                // Admin created a user – forward internally to the JSP in WEB-INF
                request.setAttribute("created", 1); // optional to pass data
                request.getRequestDispatcher("/WEB-INF/pages/admin/users.jsp")
                       .forward(request, response);
            } else {
                // Public signup
                response.sendRedirect(request.getContextPath() + "/pages/login.jsp?success=1");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/pages/signup.jsp?error=1");
        }

    }
}
