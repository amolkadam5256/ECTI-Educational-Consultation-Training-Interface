package model;

public class Consultation {
	private String fullName;
	private String email;
	private String countryCode;
	private String contactNumber;

	public Consultation() {}

	public Consultation(String fullName, String email, String countryCode, String contactNumber) {
		this.fullName = fullName;
		this.email = email;
		this.countryCode = countryCode;
		this.contactNumber = contactNumber;
	}

	// Getters and Setters
	public String getFullName() { return fullName; }
	public void setFullName(String fullName) { this.fullName = fullName; }

	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }

	public String getCountryCode() { return countryCode; }
	public void setCountryCode(String countryCode) { this.countryCode = countryCode; }

	public String getContactNumber() { return contactNumber; }
	public void setContactNumber(String contactNumber) { this.contactNumber = contactNumber; }
}
