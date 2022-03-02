package com.koreait.user.dto;

import java.sql.Date;

public class ReservationPaymentsBean {
	
	private int reservation_id;
	private String reservation_lastname = "";
	private String reservation_firstname = "";
	private String reservation_email = "";
	private int reservation_phone;
	private Date reservation_date;
	private Date Reservation_pay_date;
	private String reservation_state = "";
	private String payments_process = "";
	private Date checkin_date;
	private Date checkout_date;
	private String cancel_rule = "";
	private String coupon_code = "";
	private int total_amount = 0;
	private int room_charge = 0;
	private int user_id;
	public int getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public String getReservation_lastname() {
		return reservation_lastname;
	}
	public void setReservation_lastname(String reservation_lastname) {
		this.reservation_lastname = reservation_lastname;
	}
	public String getReservation_firstname() {
		return reservation_firstname;
	}
	public void setReservation_firstname(String reservation_firstname) {
		this.reservation_firstname = reservation_firstname;
	}
	public String getReservation_email() {
		return reservation_email;
	}
	public void setReservation_email(String reservation_email) {
		this.reservation_email = reservation_email;
	}
	public int getReservation_phone() {
		return reservation_phone;
	}
	public void setReservation_phone(int reservation_phone) {
		this.reservation_phone = reservation_phone;
	}
	public Date getReservation_date() {
		return reservation_date;
	}
	public void setReservation_date(Date reservation_date) {
		this.reservation_date = reservation_date;
	}
	public Date getReservation_pay_date() {
		return Reservation_pay_date;
	}
	public void setReservation_pay_date(Date reservation_pay_date) {
		Reservation_pay_date = reservation_pay_date;
	}
	public String getReservation_state() {
		return reservation_state;
	}
	public void setReservation_state(String reservation_state) {
		this.reservation_state = reservation_state;
	}
	public String getPayments_process() {
		return payments_process;
	}
	public void setPayments_process(String payments_process) {
		this.payments_process = payments_process;
	}
	public Date getCheckin_date() {
		return checkin_date;
	}
	public void setCheckin_date(Date checkin_date) {
		this.checkin_date = checkin_date;
	}
	public Date getCheckout_date() {
		return checkout_date;
	}
	public void setCheckout_date(Date checkout_date) {
		this.checkout_date = checkout_date;
	}
	public String getCancel_rule() {
		return cancel_rule;
	}
	public void setCancel_rule(String cancel_rule) {
		this.cancel_rule = cancel_rule;
	}
	public String getCoupon_code() {
		return coupon_code;
	}
	public void setCoupon_code(String coupon_code) {
		this.coupon_code = coupon_code;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public int getRoom_charge() {
		return room_charge;
	}
	public void setRoom_charge(int room_charge) {
		this.room_charge = room_charge;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	

}
