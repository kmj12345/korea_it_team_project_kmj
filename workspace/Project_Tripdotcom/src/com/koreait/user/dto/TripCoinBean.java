package com.koreait.user.dto;

import java.sql.Date;

public class TripCoinBean {

	private int coin_id;
	private Date coin_charge_date;
	private int coin_charge_money;
	private Date coin_use_date;
	private int coin_use_money;
	private int user_id;
	
	public int getCoin_id() {
		return coin_id;
	}
	public void setCoin_id(int coin_id) {
		this.coin_id = coin_id;
	}
	public Date getCoin_charge_date() {
		return coin_charge_date;
	}
	public void setCoin_charge_date(Date coin_charge_date) {
		this.coin_charge_date = coin_charge_date;
	}
	public int getCoin_charge_money() {
		return coin_charge_money;
	}
	public void setCoin_charge_money(int coin_charge_money) {
		this.coin_charge_money = coin_charge_money;
	}
	public Date getCoin_use_date() {
		return coin_use_date;
	}
	public void setCoin_use_date(Date coin_use_date) {
		this.coin_use_date = coin_use_date;
	}
	public int getCoin_use_money() {
		return coin_use_money;
	}
	public void setCoin_use_money(int coin_use_money) {
		this.coin_use_money = coin_use_money;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
