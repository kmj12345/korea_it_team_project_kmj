package com.koreait.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.user.dao.UserDao;
import com.koreait.user.dto.BookmarkBean;
import com.koreait.user.dto.UserBean;

public class GoMyFavoriteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDao udao = new UserDao();
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();
		UserBean user =(UserBean)session.getAttribute("user");
		
		int totalCnt = 0;

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
		
			totalCnt = udao.getBookmarkCount(user.getUser_id());
			request.setAttribute("bookmarkList", udao.getBookmarkList(startRow,endRow,user.getUser_id()));
			forward.setRedirect(false);
			forward.setPath(request.getContextPath()+"/app/admin/user/myFavorite.jsp");
		
		int totalPage = (totalCnt - 1)/pageSize +1;
		
		endPage = endPage > totalPage ? totalPage : endPage;
		
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowPage", page);
		request.setAttribute("startPage",startPage);
		request.setAttribute("endPage", endPage);
		
//		request.setAttribute("getBoardCount",totalCnt);
		
		
		return forward;
	}
}
