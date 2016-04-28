package com.ibm.devworks.examples.java.lll;
public class User {
   
   private String name;
   private String username;
   private String password;
   private String phone;
   private String email;
   private String position;
   private String dob;

   public User(String username, String password, String name, String email, String phone, String dob, String position ) {
		  this.name = name;
		  this.username = username;
		  this.password = password;
		  this.email = email;
		  this.phone = phone;
		  this.position = position;
		  this.dob = dob;
	}
   public String getUsername() {
		return username;
	}

	public void setusername(String username) {
		this.username = username;
	}
   public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getDob() {
		return dob;
	}

	public void setdob(String dob) {
		this.dob = dob;
	}

	public String getPosition() {
		return position;
	}

	public void setposition(String position) {
		this.position = position;
	}

	public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getPhone() {
      return phone;
   }

   public void setPhone(String phone) {
      this.phone = phone;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

  
}
