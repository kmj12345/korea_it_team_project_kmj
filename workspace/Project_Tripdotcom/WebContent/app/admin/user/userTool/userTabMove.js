/**
 * 
 */

//내 예약 전체탭
function tabOneAction(){
	location.href="/goReservationAll.do?page=1&tab=one";
}
//내 예약 결제대기탭
function tabTwoAction(){
	location.href="/goReservationAll.do?page=1&tab=two";
}
//내 예약 결제완료탭
function tabThreeAction(){
	location.href="/goReservationAll.do?page=1&tab=three";
}
//내 예약 리뷰작성탭  
function tabFourAction(){
	location.href="/goReservationAll.do?page=1&tab=four";
}
//내 예약 리뷰수정탭  
function tabFiveAction(){
	location.href="/goReservationAll.do?page=1&tab=five";
}


//function getParameterByName(name)
//{ name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
//var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex.exec(location.search);
//return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " ")); }
//
//
//function test(){
//	alert(getParameterByName('tab'))
//}


//트립코인 이용내역 탭
function coinTabOneAction(){
	location.href="/goMyTripcoin.do?page=1&tab=one";
}
//트립코인 충전내역 탭
function coinTabTwoAction(){
	location.href="/goMyTripcoin.do?page=1&tab=two";
}


function getResNum(){
	alert(document.getElementById("reviewResNum").value);
	
	
}






