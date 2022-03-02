/**
 * 회원가입 폼 validation 체크
 */

function reviewUpdate(reservation_id){
	let frm = document.getElementById("reviewVal");
	document.getElementById('reservation_id').value = reservation_id;
	document.getElementById('content_modal' ).value = document.getElementById('review_content'+reservation_id ).value;
	document.getElementById('clean_modal' ).value = document.getElementById('review_clean'+reservation_id ).value;
	document.getElementById('location_modal' ).value = document.getElementById('review_location'+reservation_id ).value;
	document.getElementById('facilities_modal' ).value = document.getElementById('review_facilities'+reservation_id ).value;
	document.getElementById('service_modal' ).value = document.getElementById('review_service'+reservation_id ).value;
	document.getElementById('member_modal' ).value = document.getElementById('review_trip_member'+reservation_id ).value;

	
	//비밀번호 길이확인
	if(document.getElementById('review_content'+reservation_id ).value.length > 300){
		alert("리뷰는 300자 이내로 작성해주세요!"); 
		review_content.focus();
		return false;
	}
	
	frm.submit();
	
}

function reviewInsert(reservation_id){
	let frm = document.getElementById("reviewVal");
	

	document.getElementById('reservation_id').value = reservation_id;
	document.getElementById('content_modal' ).value = document.getElementById('review_content'+reservation_id ).value;
	document.getElementById('clean_modal' ).value = document.getElementById('review_clean'+reservation_id ).value;
	document.getElementById('location_modal' ).value = document.getElementById('review_location'+reservation_id ).value;
	document.getElementById('facilities_modal' ).value = document.getElementById('review_facilities'+reservation_id ).value;
	document.getElementById('service_modal' ).value = document.getElementById('review_service'+reservation_id ).value;
	document.getElementById('member_modal' ).value = document.getElementById('review_trip_member'+reservation_id ).value;

	//비밀번호 길이확인
	if(document.getElementById('review_content'+reservation_id ).value.length > 300){
		alert("리뷰는 300자 이내로 작성해주세요!"); 
		review_content.focus();
		return false;
	}
	
	frm.submit();
	
}














