package com.landers.airline.dto;

public class UserDto {
	
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_phone;
	private String user_address;
	private int user_role;
	
	public UserDto() {
		
	}
	
	public UserDto(String user_id, String user_pw, String user_name, String user_phone, String user_address, int user_role) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_address = user_address;
		this.user_role = user_role;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public int getUser_role() {
		return user_role;
	}

	public void setUser_role(int user_role) {
		this.user_role = user_role;
	}

	@Override
	public String toString() {
		return "UserDto [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_phone="
				+ user_phone + ", user_address=" + user_address + ", user_role=" + user_role + "]";
	}

	
	
	
	
}
