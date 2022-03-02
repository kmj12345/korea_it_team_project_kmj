package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.ReviewBean;

public class UpdateReviewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		ReviewBean review = new ReviewBean();
		UserDao udao = new UserDao();
		
		
		review.setReview_clean(Integer.parseInt(request.getParameter("clean_modal")));
		review.setReview_facilities(Integer.parseInt(request.getParameter("facilities_modal")));
		review.setReview_location(Integer.parseInt(request.getParameter("location_modal")));
		review.setReview_service(Integer.parseInt(request.getParameter("service_modal")));
		review.setReview_trip_member(request.getParameter("member_modal"));
		review.setReview_content(request.getParameter("content_modal"));
		review.setReservation_id(Integer.parseInt(request.getParameter("reservation_id")));
		
		
		if(udao.updateReview(review)) {
			forward.setPath("/goReservationAll.do?page=1&tab=five&update=true");
			forward.setRedirect(true);
		}else {
			
		}
		
		
		return forward;
	}
}
