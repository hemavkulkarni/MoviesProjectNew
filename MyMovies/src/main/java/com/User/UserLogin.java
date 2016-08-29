package com.User;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.beans.factory.annotation.Required;

@Entity
@Table
public class UserLogin {
	/*@Column
	@GeneratedValue(strategy = GenerationType.AUTO)	
	int userid;
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}*/
	@Id
	@Column
	@NotEmpty(message = "Please enter your user name.")
	@Size(min=5, max=20, message="Your name should be between 5 - 20 characters.")
	String uname;
	
	@Column
	@NotNull
	@NotEmpty(message = "Please enter your password.")
	@Length(min=5, max=20, message="Password should be between 5 - 20 charactes")
	String password;

	@NotNull
	transient String rpassword;
	
	
	@Column
	@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	String emailid;

	 private boolean enabled;
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRpassword() {
		return rpassword;
	}
	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
}
