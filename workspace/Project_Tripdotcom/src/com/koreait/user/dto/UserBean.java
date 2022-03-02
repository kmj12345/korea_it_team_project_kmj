package com.koreait.user.dto;

import java.util.Date;

public class UserBean {
	private int user_id;
	private String user_email ;
	private String user_pw ;
	private String user_lastname;
	private String user_firstname;
	private String user_birth;
	private String user_gender ;
	private String user_joindate;
	private int user_coin ;
	private String join_code;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_lastname() {
		return user_lastname;
	}
	public void setUser_lastname(String user_lastname) {
		this.user_lastname = user_lastname;
	}
	public String getUser_firstname() {
		return user_firstname;
	}
	public void setUser_firstname(String user_firstname) {
		this.user_firstname = user_firstname;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_joindate() {
		return user_joindate;
	}
	public void setUser_joindate(String user_joindate) {
		this.user_joindate = user_joindate;
	}
	public int getUser_coin() {
		return user_coin;
	}
	public void setUser_coin(int user_coin) {
		this.user_coin = user_coin;
	}
	public String getJoin_code() {
		return join_code;
	}
	public void setJoin_code(String join_code) {
		this.join_code = join_code;
	}
	
}

