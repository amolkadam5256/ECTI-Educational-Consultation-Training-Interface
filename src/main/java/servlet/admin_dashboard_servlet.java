package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.UserDAO;
import model.User;

@WebServlet("/admin/admin_dashboard")
public class admin_dashboard_servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Get current user from session
        User currentUser = (User) request.getSession().getAttribute("currentUser");
        if (currentUser == null) {
            response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
            return;
        }

        // 2. Get total users
        UserDAO userDAO = new UserDAO();
        int totalUsers = userDAO.getTotalUsers();

        // 3. Set attributes for JSP
        request.setAttribute("currentUser", currentUser);
        request.setAttribute("totalUsers", totalUsers);

        // 4. Forward to JSP
        request.getRequestDispatcher("/pages/admin/admin_dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
