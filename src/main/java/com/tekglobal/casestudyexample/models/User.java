package com.tekglobal.casestudyexample.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;



@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userId;
	@Size(min = 2, max = 25)
	private String username;
	@NotEmpty
	private String email;
	@NotEmpty
	private String password;
	@OneToMany(targetEntity = Entry.class)
	 private List<Entry> entries;
	
	public User(){}
	
	

	public User(Integer userId, @Size(min = 2, max = 25) String username, @NotEmpty String email,
			@NotEmpty String password) {
		super();
		this.userId = userId;
		this.username = username;
		this.email = email;
		this.password = password;
	}
	
	
	public User(Integer userId, @Size(min = 2, max = 25) String username, @NotEmpty String email,
			@NotEmpty String password, List<Entry> sCourses) {
		super();
		this.userId = userId;
		this.username = username;
		this.email = email;
		this.password = password;
		this.entries = sCourses;
	}



	public User(String username, String email, String password) {
		super();
		
		this.username = username;
		this.email = email;
		this.password = password;
	}
	

	public List<Entry> getEntries() {
		return entries;
	}



	public void setEntries(List<Entry> entries) {
		this.entries = entries;
	}



	public Integer getUserId() {
		return userId;
	}


	public void setUserId(Integer userId) {
		this.userId = userId;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
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



	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", email=" + email + ", password=" + password
				+ "]";
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((entries == null) ? 0 : entries.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (entries == null) {
			if (other.entries != null)
				return false;
		} else if (!entries.equals(other.entries))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}
	
	
	
	
}