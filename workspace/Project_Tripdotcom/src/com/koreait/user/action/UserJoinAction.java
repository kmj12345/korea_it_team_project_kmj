package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;

public class UserJoinAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDao udao = new UserDao();
		
		
		if(udao.joinUser(request.getParameter("user_email"), request.getParameter("user_pw"))) {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"app/admin/user/login_view.jsp");
		}else {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"app/admin/user/joinUser_view.jsp?join=false");
		}
		
		return forward;
	}
}
