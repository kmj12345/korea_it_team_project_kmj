<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="mainSearchBox">
	<div class="searchbox">
		<form method="post" action="hotelSearchingList.jsp">
			<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
			<div class="row">
				<div class=" col-md-3">
					<div class="form-group">
						<label>목적지/호텔 이름</label> <select class="select2"
							multiple="multiple" data-placeholder="Select a State"
							style="width: 100%;" name="bbsTitle">
							<option>서울</option>
							<option>부산</option>
							<option>강릉</option>
							<option>제주도</option>
						</select>
					</div>
				</div>
				<div class=" col-md-4">
					<label>날짜선택</label> <input type="text"
						class="form-control float-right" id="reservation"
						style="user-select: auto;" name="bbsTitle">
				</div>
				<div class=" col-md-2">
					<div class="form-group">
						<label>객실수</label> <select class="select2" style="width: 100%;"
							name="bbsTitle">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
						</select>
					</div>
				</div>
				<div class=" col-md-2">
					<div class="form-group">
						<label>인원수(성인)</label> <select class="select2"
							style="width: 100%;" name="bbsTitle">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
						</select>
					</div>
				</div>
				<div class=" col-md-1">
					<input type="submit" style="width: 100%; height: 100%;"
						class="btn btn-primary pull-right" value="찾기">
				</div>
			</div>
		</form>
	</div>
</div>