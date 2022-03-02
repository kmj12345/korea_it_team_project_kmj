package com.koreait.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.ActionForward;
import com.koreait.user.action.GoReservationAction;
import com.koreait.user.action.InsertReviewAction;
import com.koreait.user.action.UpdateReviewAction;
import com.koreait.user.action.UserAccountUpdateAction;
import com.koreait.user.action.UserInfoUpdateAction;

import com.koreait.user.action.UserJoinAction;
import com.koreait.user.action.UserLoginAction;
import com.koreait.user.dto.UserBean;
import com.koreait.user.action.BookmarkDeleteAction;
import com.koreait.user.action.DeleteReviewAction;
import com.koreait.user.action.GoMyTripCoinAction;
import com.koreait.user.action.GoMyFavoriteAction;

@WebServlet("*.do")
public class UserFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		switch(requestURI) {
			//회원가입 db 인서트
			case "/joinUser.do":
				forward = new UserJoinAction().execute(req, resp);
				break;
			//로그인 db조회
			case "/userLogin.do":
				forward = new UserLoginAction().execute(req, resp);
				break;
			case "/goUserLogin.do":
				//로그인화면으로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/login_view.jsp");
				break;
			case "/goUserJoin.do":
				//로그인화면으로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/joinUser_view.jsp");
				break;
			case "/goReservationAll.do":
				//내 예약 페이지로 이동
				forward = new GoReservationAction().execute(req, resp);
				break;
			case "/goMyFavorite.do":
				//즐겨찾기 페이지로 이동
				forward = new GoMyFavoriteAction().execute(req, resp);
				break;
			case "/goMyTripcoin.do":
				//트립코인 페이지로 이동
				forward = new GoMyTripCoinAction().execute(req, resp);
				break;
			case "/goMyInformation.do":
				//내정보 페이지로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/myInformation.jsp");
				break;
			case "/goMyAccount.do":
				//계정및비밀번호 페이지로 이동
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath(req.getContextPath()+"/app/admin/user/myAccount.jsp");
				break;
			case "/bookmarkDelete.do":
				//즐겨찾기 삭제
				forward = new BookmarkDeleteAction().execute(req, resp);
				break;
			case "/userInfoUpdate.do":
				//내 정보 수정
				forward = new UserInfoUpdateAction().execute(req, resp);
				break;
			case "/userAccountUpdate.do":
				//내 계정 수정
				forward = new UserAccountUpdateAction().execute(req, resp);
				break;
			case "/reviewInsert.do":
				//리뷰작성
				forward = new InsertReviewAction().execute(req, resp);
				break;
			case "/reviewUpdate.do":
				//리뷰작성
				forward = new UpdateReviewAction().execute(req, resp);
				break;
			case "/replyDelete.do":
				//리뷰작성
				forward = new DeleteReviewAction().execute(req, resp);
				break;
			case "/index.do" :
				forward = new ActionForward();
				 forward.setRedirect(true);
				 forward.setPath(req.getContextPath()+"/app/index/seo/index.jsp");
				 break;
			case "/userLogout.do" :
				forward = new ActionForward();
				HttpSession session = req.getSession();
				session.removeAttribute("user");
				forward.setRedirect(true);
				forward.setPath(req.getContextPath()+"/app/index/seo/index.jsp");
				break;
			}
		
		
		
		
		
		
		
		
		// 일괄처리
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// redirect 방식
				resp.sendRedirect(forward.getPath());
			} else {
				// forward방식
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}else {
			System.out.println("forward가 null");
		}
		
	}
}
