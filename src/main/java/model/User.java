package model;

public class User {
    private int id;
    private String fullName;
    private String email;
    private String contactNumber;
    private String password;
    private String role;        // student, teacher, manager, admin
    private Integer createdBy;  // ID of the user who created this account (nullable)

    public User() {}

    // Constructor without role (default student)
    public User(String fullName, String email, String contactNumber, String password) {
        this.fullName = fullName;
        this.email = email;
        this.contactNumber = contactNumber;
        this.password = password;
        this.role = "student"; // default
        this.createdBy = null;
    }

    // Full constructor (for admin creating any user)
    public User(String fullName, String email, String contactNumber, String password, String role, Integer createdBy) {
        this.fullName = fullName;
        this.email = email;
        this.contactNumber = contactNumber;
        this.password = password;
        this.role = role;
        this.createdBy = createdBy;
    }

    // Getters and setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getContactNumber() { return contactNumber; }
    public void setContactNumber(String contactNumber) { this.contactNumber = contactNumber; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public Integer getCreatedBy() { return createdBy; }
    public void setCreatedBy(Integer createdBy) { this.createdBy = createdBy; }
}
