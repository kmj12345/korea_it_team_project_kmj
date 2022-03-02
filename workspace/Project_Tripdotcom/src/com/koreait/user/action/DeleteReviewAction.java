package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;

public class DeleteReviewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDao udao = new UserDao();
		
		if(udao.deleteReview(Integer.parseInt(request.getParameter("review_id")))) {
			forward.setPath("/goReservationAll.do?page=1&tab=five&delete=true");
			forward.setRedirect(true);
		}
		
		return forward;
	}
}
