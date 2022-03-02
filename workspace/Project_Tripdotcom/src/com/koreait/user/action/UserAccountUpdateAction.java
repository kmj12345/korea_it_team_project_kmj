package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.UserBean;

public class UserAccountUpdateAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDao udao = new UserDao();
		HttpSession session = request.getSession();
		UserBean user =(UserBean)session.getAttribute("user");
		
		user.setUser_email(request.getParameter("user_email"));
		user.setUser_pw(request.getParameter("user_pw"));
		
		udao.userAccountUpdate(user);
		
		forward.setRedirect(true);
		forward.setPath(request.getContextPath()+"/goMyAccount.do");
		
		return forward;
		
	}
}
