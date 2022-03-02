package com.koreait.user.dto;

public class BookmarkBean {
	private int bookmark_id;
	private String last_check_hotel ="";
	private String like_click_hotel="";
	private int hotel_id;
	private int user_id;
	
	public int getBookmark_id() {
		return bookmark_id;
	}
	public void setBookmark_id(int bookmark_id) {
		this.bookmark_id = bookmark_id;
	}
	public String getLast_check_hotel() {
		return last_check_hotel;
	}
	public void setLast_check_hotel(String last_check_hotel) {
		this.last_check_hotel = last_check_hotel;
	}
	public String getLike_click_hotel() {
		return like_click_hotel;
	}
	public void setLike_click_hotel(String like_click_hotel) {
		this.like_click_hotel = like_click_hotel;
	}
	public int getHotel_id() {
		return hotel_id;
	}
	public void setHotel_id(int hotel_id) {
		this.hotel_id = hotel_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
}
