package com.koreait.user.dto;

import java.sql.Date;

public class CancelRefundBean {
	
	private int cancel_id;
	private String cancel_reason = "";
	private String refund_state = "";
	private Date refund_date;
	private Date refund_time;
	private Date cancel_date;
	private Date cancel_time;
	int penalty;
	public int getCancel_id() {
		return cancel_id;
	}
	public void setCancel_id(int cancel_id) {
		this.cancel_id = cancel_id;
	}
	public String getCancel_reason() {
		return cancel_reason;
	}
	public void setCancel_reason(String cancel_reason) {
		this.cancel_reason = cancel_reason;
	}
	public String getRefund_state() {
		return refund_state;
	}
	public void setRefund_state(String refund_state) {
		this.refund_state = refund_state;
	}
	public Date getRefund_date() {
		return refund_date;
	}
	public void setRefund_date(Date refund_date) {
		this.refund_date = refund_date;
	}
	public Date getRefund_time() {
		return refund_time;
	}
	public void setRefund_time(Date refund_time) {
		this.refund_time = refund_time;
	}
	public Date getCancel_date() {
		return cancel_date;
	}
	public void setCancel_date(Date cancel_date) {
		this.cancel_date = cancel_date;
	}
	public Date getCancel_time() {
		return cancel_time;
	}
	public void setCancel_time(Date cancel_time) {
		this.cancel_time = cancel_time;
	}
	public int getPenalty() {
		return penalty;
	}
	public void setPenalty(int penalty) {
		this.penalty = penalty;
	}
	public int getPenalty_total_amount() {
		return penalty_total_amount;
	}
	public void setPenalty_total_amount(int penalty_total_amount) {
		this.penalty_total_amount = penalty_total_amount;
	}
	public int getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public int getUSER_id() {
		return USER_id;
	}
	public void setUSER_id(int uSER_id) {
		USER_id = uSER_id;
	}
	int penalty_total_amount;
	int reservation_id;
	int USER_id;
}
