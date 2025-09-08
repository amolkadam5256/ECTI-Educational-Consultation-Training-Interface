package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import dao.ConsultationRequestDAO;
import model.Consultation;

@WebServlet("/inquireConsult")
public class InquireConsultServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String fullName = request.getParameter("name") != null ? request.getParameter("name").trim() : "";
		String email = request.getParameter("email") != null ? request.getParameter("email").trim() : "";
		String countryCode = request.getParameter("countryCode");
		String contactNumber = request.getParameter("contact") != null ? request.getParameter("contact").trim() : "";

		if (countryCode == null || countryCode.trim().isEmpty()) {
			countryCode = "+91";
		}

		if (!fullName.isEmpty() && !email.isEmpty() && !contactNumber.isEmpty()) {

			Consultation consult = new Consultation(fullName, email, countryCode, contactNumber);
			ConsultationRequestDAO dao = new ConsultationRequestDAO();
			boolean saved = dao.saveConsultation(consult);

			if (saved) {
				out.println("<script type='text/javascript'>");
				out.println("alert('Data saved successfully!');");
				out.println("window.location = 'index.jsp';"); // Redirect after success
				out.println("</script>");
			} else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Failed to save data. Email might already exist.');");
				out.println("window.history.back();");
				out.println("</script>");
			}
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Please fill in all required fields.');");
			out.println("window.history.back();");
			out.println("</script>");
		}
	}
}
