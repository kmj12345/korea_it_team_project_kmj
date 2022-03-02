package com.koreait.user.dao;

import java.util.HashMap;
import java.util.List;
import javax.websocket.Session;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.SqlMapConfig;
import com.koreait.user.dto.BookmarkBean;
import com.koreait.user.dto.ReservationPaymentsBean;
import com.koreait.user.dto.ReviewBean;
import com.koreait.user.dto.TripCoinBean;
import com.koreait.user.dto.UserBean;

public class UserDao {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDao() {
		sqlsession = factory.openSession(true);
	}
	
	
	public boolean joinUser(String user_email, String user_pw) {
		boolean result = false;
		UserBean userbean = new UserBean();
		userbean.setUser_email(user_email);
		userbean.setUser_pw(user_pw);
		
		if(sqlsession.insert("User.join", userbean) == 1) {
			
			result = true;
		}else {
			result = false;
		}
		return result;	
	}


	public UserBean loginUser(UserBean user) {
		
		UserBean result = sqlsession.selectOne("User.login", user);
		
		return result;
	}


	public List<ReservationPaymentsBean> getReservation(int user_id) {
		List<ReservationPaymentsBean> reservationList = sqlsession.selectList("User.getReservation", user_id);
		
		return reservationList;
	}


	public int getReservationCount(int user_id) {
		return sqlsession.selectOne("User.resAllCount", user_id);
	}

	public int getYetPaidCount(int user_id) {
		return sqlsession.selectOne("User.yetPaidCount", user_id);
	}


	public int getPaidCount(int user_id) {
		return sqlsession.selectOne("User.PaidCount", user_id);
	}
	
	public int getBookmarkCount(int user_id) {
		return sqlsession.selectOne("User.bookmarkCount", user_id);
	}

	public List<ReservationPaymentsBean> getResList(int startRow, int endRow, int user_id) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("user_id", user_id);
		List<ReservationPaymentsBean> resList = sqlsession.selectList("User.getResList",datas);
		return resList;
	}

	public List<ReservationPaymentsBean> getYetPaidList(int startRow, int endRow, int user_id) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("user_id", user_id);
		List<ReservationPaymentsBean> resList = sqlsession.selectList("User.getYetPaidList",datas);
		return resList;	}


	public List<ReservationPaymentsBean> getPaidList(int startRow, int endRow, int user_id) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("user_id", user_id);
		List<ReservationPaymentsBean> resList = sqlsession.selectList("User.getPaidList",datas);
		return resList;
	}


	public List<BookmarkBean> getBookmarkList(int startRow, int endRow, int user_id) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("user_id", user_id);
		List<BookmarkBean> bookmarkList = sqlsession.selectList("User.getBookmarkList",datas);
		return bookmarkList;
	}


	public void bookmarkDelete(int bookmarkId) {
		sqlsession.selectOne("User.bookmarkDelete",bookmarkId);
	}


	public void userInfoUpdate(UserBean user) {
		System.out.println("1번구역");
		sqlsession.update("User.userInfoUpdate", user);
		System.out.println("2번구역");
	}


	public void userAccountUpdate(UserBean user) {
		sqlsession.update("User.userAccountUpdate", user);
	}


	public List<TripCoinBean> getUseCoinList(int startRow, int endRow, int user_id) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("user_id", user_id);
		List<TripCoinBean> tripCoin = sqlsession.selectList("User.getUseCoinList", datas);
		return tripCoin;
	}


	public List<TripCoinBean> getChargeCoinList(int startRow, int endRow, int user_id) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("user_id", user_id);
		List<TripCoinBean> tripCoin = sqlsession.selectList("User.getChargeCoinList", datas);
		return tripCoin;
	}


	public int getCanReviewCount(int user_id) {
		return sqlsession.selectOne("User.getCanReviewCount", user_id);
	}


	public List<ReservationPaymentsBean> getCanReviewList(int startRow, int endRow, int user_id) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("user_id", user_id);
		List<ReservationPaymentsBean> reviewList = sqlsession.selectList("User.getCanReviewList", datas);
		return reviewList;
	}


	public boolean insertReview(ReviewBean review) {
		boolean result = false;
		if(sqlsession.insert("User.insertReview", review) == 1) {
			result = true;
		}
		return result;
	}


	public int getCanUpdateReviewCount(int user_id) {
		return sqlsession.selectOne("User.getCanUpdateReviewCount", user_id);
	}


	public List<ReviewBean> getCanUpdateReviewList(int startRow, int endRow, int user_id) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		datas.put("user_id", user_id);
		List<ReviewBean> reviewList = sqlsession.selectList("User.getCanUpdateReviewList", datas);
		return reviewList;
	}


	public boolean updateReview(ReviewBean review) {
		boolean result = false;
		if(sqlsession.update("User.updateReview", review) == 1) {
			result = true;
		}
		return result;
	}


	public int getUseCoinCount(int user_id) {
		return sqlsession.selectOne("User.getUseCoinCount", user_id);
	}


	public int getChargeCoinCount(int user_id) {
		return sqlsession.selectOne("User.getChargeCoinCount", user_id);
	}


	public boolean deleteReview(int review_id) {
		boolean result = false;
		if(sqlsession.delete("User.deleteReview", review_id)==1) {
			result = true;
		}
		return result;
	}
	
	
	
}
