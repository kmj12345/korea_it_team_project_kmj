package com.koreait.user.dto;

public class ReviewBean {

	private int review_id;
	private int reservation_id;
	private int review_clean;
	private int review_location;
	private int review_facilities;
	private int review_service;
	private String review_trip_member = "";
	private String review_content = "";
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public int getReservation_id() {
		return reservation_id;
	}
	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}
	public int getReview_clean() {
		return review_clean;
	}
	public void setReview_clean(int review_clean) {
		this.review_clean = review_clean;
	}
	public int getReview_location() {
		return review_location;
	}
	public void setReview_location(int review_location) {
		this.review_location = review_location;
	}
	public int getReview_facilities() {
		return review_facilities;
	}
	public void setReview_facilities(int review_facilities) {
		this.review_facilities = review_facilities;
	}
	public int getReview_service() {
		return review_service;
	}
	public void setReview_service(int review_service) {
		this.review_service = review_service;
	}
	public String getReview_trip_member() {
		return review_trip_member;
	}
	public void setReview_trip_member(String review_trip_member) {
		this.review_trip_member = review_trip_member;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	
}
