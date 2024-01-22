package entity;

import java.io.Serializable;

public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private int Role_Id;
	private String User_Id, Staff_Name, Username, Email, katalaluan, Access_Level;
	
	public User() {
		super();
	}

	public User(int role_Id, String user_Id, String staff_Name, String username, String email, String katalaluan,
			String access_Level) {
		super();
		Role_Id = role_Id;
		User_Id = user_Id;
		Staff_Name = staff_Name;
		Username = username;
		Email = email;
		this.katalaluan = katalaluan;
		Access_Level = access_Level;
	}

	public int getRole_Id() {
		return Role_Id;
	}

	public void setRole_Id(int role_Id) {
		Role_Id = role_Id;
	}

	public String getUser_Id() {
		return User_Id;
	}

	public void setUser_Id(String user_Id) {
		User_Id = user_Id;
	}

	public String getStaff_Name() {
		return Staff_Name;
	}

	public void setStaff_Name(String staff_Name) {
		Staff_Name = staff_Name;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getKatalaluan() {
		return katalaluan;
	}

	public void setKatalaluan(String katalaluan) {
		this.katalaluan = katalaluan;
	}

	public String getAccess_Level() {
		return Access_Level;
	}

	public void setAccess_Level(String access_Level) {
		Access_Level = access_Level;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	

}