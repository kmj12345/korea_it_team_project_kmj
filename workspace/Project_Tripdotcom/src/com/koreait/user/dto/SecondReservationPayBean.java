package com.koreait.user.dto;

public class SecondReservationPayBean {

	private int second_reservation_id;
	private String second_reservation_lastname = "";
	private String second_reservation_firstname = "";
	private int reservation_id;
	private int user_id;
	public int getSecond_reservation_id() {
		return second_reservation_id;
	}
	public void setSecond_reservation_id(int second_reservation_id) {
		this.second_reservation_id = second_reservation_id;
	}
	public String getSecond_reservation_lastname() {
		return second_reservation_lastname;
	}
	public void setSecond_reservation_lastname(String second_reservation_lastname) {
		this.second_reservation_lastname = second_reservation_lastname;
	}
	public String getSecond_reservation_firstname() {
		return second_reservation_firstname;
	}
	public void setSecond_reservation_firstname(String second_reservation_firstname) {
		this.second_reservation_firstname = second_reservation_firstname;
	}
	public int getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
}
