package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import db.DBConnection; // ✅ import DBConnection
import model.Consultation;

public class ConsultationRequestDAO {

	public boolean saveConsultation(Consultation consult) {
		boolean isSaved = false;

		try (Connection conn = DBConnection.getConnection()) {

			// Check if email already exists
			String checkEmailSql = "SELECT COUNT(*) FROM career_consultations WHERE email = ?";
			try (PreparedStatement checkEmailStmt = conn.prepareStatement(checkEmailSql)) {
				checkEmailStmt.setString(1, consult.getEmail());

				ResultSet rs = checkEmailStmt.executeQuery();
				if (rs.next() && rs.getInt(1) > 0) {
					System.out.println("Email already exists in the database.");
					return false;
				}
			}

			// Insert new consultation
			String sql = "INSERT INTO career_consultations (full_name, email, country_code, contact_number) VALUES (?, ?, ?, ?)";
			try (PreparedStatement ps = conn.prepareStatement(sql)) {
				ps.setString(1, consult.getFullName());
				ps.setString(2, consult.getEmail());
				ps.setString(3, consult.getCountryCode());
				ps.setString(4, consult.getContactNumber());

				int rows = ps.executeUpdate();

				if (rows > 0) {
					isSaved = true;
					System.out.println("Consultation saved. Reindexing...");
					reindexConsultations(conn);
				} else {
					System.out.println("No rows affected during insert.");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSaved;
	}

	// Reindex method
	private void reindexConsultations(Connection conn) {
		try (Statement stmt = conn.createStatement()) {
			stmt.executeUpdate("SET @count = 0;");
			stmt.executeUpdate("UPDATE career_consultations SET id = (@count:=@count+1);");
			stmt.executeUpdate("ALTER TABLE career_consultations AUTO_INCREMENT = 1;");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
