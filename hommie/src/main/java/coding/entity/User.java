package coding.entity;

public class User {
	private int id;
	private String firstName; 
	private String lastName;
	private String phoneNumber;
	private String email;
	private String password;
	private String role;
	
	
public User() {
	
}


public User(String firstName, String lastName) {
	super();
	this.firstName = firstName;
	this.lastName = lastName;
}


public User(int id, String firstName, String lastName, String role) {
	super();
	this.id = id;
	this.firstName = firstName;
	this.lastName = lastName;
	this.role = role;
}


public User(String firstName, String lastName, String phoneNumber, String email, String password, String role) {
	super();
	this.firstName = firstName;
	this.lastName = lastName;
	this.phoneNumber = phoneNumber;
	this.email = email;
	this.password = password;
	this.role = role;
}


public User(int id, String firstName, String lastName, String phoneNumber, String email, String password,
		String role ) {
	super();
	this.id = id;
	this.firstName = firstName;
	this.lastName = lastName;
	this.phoneNumber = phoneNumber;
	this.email = email;
	this.password = password;
	this.role = role;
}



public User(int id, String firstName, String lastName, String phoneNumber, String email) {
	super();
	this.id = id;
	this.firstName = firstName;
	this.lastName = lastName;
	this.phoneNumber = phoneNumber;
	this.email = email;
}


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getFirstName() {
	return firstName;
}


public void setFirstName(String firstName) {
	this.firstName = firstName;
}


public String getLastName() {
	return lastName;
}


public void setLastName(String lastName) {
	this.lastName = lastName;
}


public String getPhoneNumber() {
	return phoneNumber;
}


public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}


public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getPassword() {
	return password;
}


public void setPassword(String password) {
	this.password = password;
}


public String getRole() {
	return role;
}


public void setRole(String role) {
	this.role = role;
}



	
	
	
	
	
	
}
