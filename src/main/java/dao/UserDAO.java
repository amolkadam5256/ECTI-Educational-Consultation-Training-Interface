package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;
import db.DBConnection;

public class UserDAO {

    // Register new user with role + created_by
    public boolean registerUser(User user) {
        boolean result = false;

        String sql = "INSERT INTO users (full_name, email, contact_number, password, role, created_by) "
                   + "VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, user.getFullName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getContactNumber());

            // hash password here if needed
            ps.setString(4, user.getPassword());

            // role: default student if null
            if (user.getRole() == null || user.getRole().isEmpty()) {
                ps.setString(5, "student");
            } else {
                ps.setString(5, user.getRole());
            }

            // created_by can be null
            if (user.getCreatedBy() != null) {
                ps.setInt(6, user.getCreatedBy());
            } else {
                ps.setNull(6, java.sql.Types.INTEGER);
            }

            int rowsAffected = ps.executeUpdate();
            result = rowsAffected > 0;

        } catch (SQLException e) {
            System.out.println("Error registering user: " + e.getMessage());
            e.printStackTrace();
        }

        return result;
    }

    // Login user
    public User loginUser(String email, String password) {
        User user = null;
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setFullName(rs.getString("full_name"));
                user.setEmail(rs.getString("email"));
                user.setContactNumber(rs.getString("contact_number"));
                user.setRole(rs.getString("role")); // include role
                // Do NOT store password in session
            }

        } catch (SQLException e) {
            System.out.println("Error logging in user: " + e.getMessage());
            e.printStackTrace();
        }

        return user; // null if login fails
    }

    // Optional: check if email already exists
    public boolean emailExists(String email) {
        String sql = "SELECT id FROM users WHERE email = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
