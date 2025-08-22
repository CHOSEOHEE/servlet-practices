package com.bit2025.guestbook01.vo;

import java.sql.Timestamp;

public class GuestbookVo {
	private Long id;
	private String name;
	private String password;
	private String message;
	private Timestamp reg_date;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Timestamp getReg_date() {
		return reg_date;
	}

	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "GuestbookVo [id=" + id + ", name=" + name + ", password=" + password + ", message=" + message
				+ ", reg_date=" + reg_date + "]";
	}

}