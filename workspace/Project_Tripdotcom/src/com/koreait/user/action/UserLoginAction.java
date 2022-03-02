package com.koreait.user.action;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.ReservationPaymentsBean;
import com.koreait.user.dto.UserBean;

public class UserLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDao udao = new UserDao();
		UserBean user = new UserBean();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		
		
		//로그인하기위한 파라미터값세팅
		user.setUser_email(request.getParameter("user_email"));
		user.setUser_pw(request.getParameter("user_pw"));
		
		user = udao.loginUser(user);
//		request.setAttribute("reservationList", udao.getReservation(user.getUser_id()));
		session.setAttribute("user", user);
		//토탈예약
		if(user != null) {
		int totalCnt = udao.getReservationCount(user.getUser_id()); 
		//페이징 처리
		//현재 넘겨받은 페이지
		String temp = request.getParameter("page");
		int page = 0;
		//삼항연산자
		page = temp == null ? 1: Integer.parseInt(temp);
		//페이징 처리 사이즈
		int pageSize = 10;
		// 1페이지 endRow = 10, 4페이지 endRow = 40 
		int endRow = page * 10;
		//1페이지 startRow = 1, 4페이지 startRow = 31
		int startRow = endRow-9;
		// [1][2]...[10] 에서의 스타트페이지= [1] /  [21],[22],...[30] 에서의 스타트페이지 = [21]
		int startPage = (page-1)/pageSize*pageSize +1;
		// [1][2]...[10] 에서의 앤드페이지= [10] /  [21],[22],...[30] 에서의 앤드페이지 = [30]
		int endPage = startPage + pageSize -1;
		
		int totalPage = (totalCnt - 1)/pageSize +1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage", endPage);
		
		
		request.setAttribute("getBoardCount",totalCnt);
		request.setAttribute("resList", udao.getResList(startRow,endRow,user.getUser_id()));
		}
		
		
		
		if(user != null) {
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"app/admin/user/reservationAll.jsp");
		}else {
			forward.setRedirect(true);
			forward.setPath(request.getContextPath()+"app/admin/user/login_view.jsp?loginTest=false");
		}
		return forward;
	}
}
