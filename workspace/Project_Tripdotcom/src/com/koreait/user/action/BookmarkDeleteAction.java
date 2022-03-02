package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;

public class BookmarkDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDao udao = new UserDao();
		int bookmarkId = Integer.parseInt(request.getParameter("bookmarkId"));
		ActionForward forward = new ActionForward();

		udao.bookmarkDelete(bookmarkId);
		
		forward.setRedirect(false);
		forward.setPath(request.getContextPath()+"/goMyFavorite.do");
		
		return forward;
	}
}
