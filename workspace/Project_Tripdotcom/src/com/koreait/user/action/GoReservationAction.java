package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.ReservationPaymentsBean;
import com.koreait.user.dto.UserBean;

public class GoReservationAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDao udao = new UserDao();
		ReservationPaymentsBean res = new ReservationPaymentsBean();
		HttpSession session = request.getSession();
		UserBean user =(UserBean)session.getAttribute("user");
		int totalCnt = 0;
		request.setAttribute("tab",request.getParameter("tab"));
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
		
		if(request.getParameter("tab") == null) {
			System.out.println("탭널임");
			totalCnt = udao.getReservationCount(user.getUser_id());
			request.setAttribute("resList", udao.getResList(startRow,endRow,user.getUser_id()));
		}else {
			switch(request.getParameter("tab")){
			case "one":
				totalCnt = udao.getReservationCount(user.getUser_id());
				request.setAttribute("resList", udao.getResList(startRow,endRow,user.getUser_id()));
				break;
			case "two":
				totalCnt = udao.getYetPaidCount(user.getUser_id());
				request.setAttribute("resList", udao.getYetPaidList(startRow,endRow,user.getUser_id()));
				break;
			case "three":
				totalCnt = udao.getPaidCount(user.getUser_id());
				request.setAttribute("resList", udao.getPaidList(startRow,endRow,user.getUser_id()));
				break;
			case "four":
				totalCnt = udao.getCanReviewCount(user.getUser_id());
				request.setAttribute("resList", udao.getCanReviewList(startRow,endRow,user.getUser_id()));
				break;
			case "five":
				totalCnt = udao.getCanUpdateReviewCount(user.getUser_id());
				request.setAttribute("reviewList", udao.getCanUpdateReviewList(startRow,endRow,user.getUser_id()));
				break;
			}
		}
		
		int totalPage = (totalCnt - 1)/pageSize +1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage", endPage);
		
		
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
