<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="UTP-8">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/min.css">
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/board_min.css">
<script src="https://kit.fontawesome.com/1652357a48.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="resources/js/board.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script type="text/javascript">
$(document).on('submit', '#searchForm', function(e) {
	  e.preventDefault();  // 폼 제출 이벤트 기본 동작 방지
	  
	  var keyword = $('#keywordInput').val();  // 입력한 키워드 가져오기
	  
	  // 위치 키워드로 검색하는 함수 호출
	  searchLocation(keyword);
	});
	
function searchLocation(keyword) {
	  var geocoder = new kakao.maps.services.Geocoder();

	  geocoder.addressSearch(keyword, function(result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	      var map = new kakao.maps.Map(document.getElementById('map'), {
	        center: new kakao.maps.LatLng(result[0].y, result[0].x),
	        level: 10
	      });

	      var marker = new kakao.maps.Marker({
	        position: new kakao.maps.LatLng(result[0].y, result[0].x),
	        map: map
	      });
	    } else {
	      alert('검색 결과가 없습니다.');
	    }
	  });
	}
	
</script>
</head>
<body>
	<jsp:include page="../top_menu.jsp"></jsp:include>


	<div class="board_section">
		<div class="board_category">

			<ul class="board_grid">
				<li><input type="button" value="전체" class="category_active"></li>
				<li><input type="button" value="운동"></li>
				<li><input type="button" value="야구관람"></li>
				<li><input type="button" value="게임/오락"></li>
				<li><input type="button" value="아웃도어"></li>
				<li><input type="button" value="반려동물"></li>
				<li><input type="button" value="문화/공연"></li>
				<li><input type="button" value="카페/맛집"></li>
				<li><input type="button" value="공예"></li>
				<li><input type="button" value="도서"></li>
				<li><input type="button" value="사진/영상"></li>
				<li><input type="button" value="사교/인맥"></li>
				<li><input type="button" value="음악/악기"></li>
				<li><input type="button" value="업종/직무"></li>
				<li><input type="button" value="해외/언어"></li>
				<li><input type="button" value="요리"></li>
				<li><input type="button" value="배이커리"></li>
				<li><input type="button" value="자유주제"></li>


			</ul>
		</div>
		<div class="category_more">
			<a>카테고리 더보기</a>
		</div>
		<div class="moim_insert">
			<h1>지역</h1>
			<button type="button" id="moim_location" name="area">
				<i class="fas fa-map-marker-alt"></i>지역설정
			</button>
			<div id="map" style="width: 500px; height: 400px; margin-top: 20px;"></div>
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=152f28bcc3a0f27b287899d4ea4ee37e"></script>
			<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
			<form id="searchForm">
				<input type="text" id="keywordInput" placeholder="위치를 입력하세요"
					style="margin-top: 10px;">
				<button type="submit">검색</button>
			</form>

			<h1>모임 이름</h1>
			<input type="text" placeholder="모임 이름" id="som_title"
				name="som_title">
			<h1>모임 소개</h1>
			<input type="text" placeholder="모임 내용" id="moim_content"
				name="som_content"> <span>
				<h1>모임 정원</h1>
				<input type="text" placeholder="모임 최대 정원을 입력하세요" id="moim_max" name="max_member">
				<h1>카테고리</h1>
				
				<select name="category" id="category">
					<option value="baseball">야구</option>
					<option value="book">독서</option>
					<option value="cook">요리</option>
					<option value="운동">운동</option>
					<option value="게임/오락">게임/오락</option>
					<option value="아웃도어">아웃도어</option>
					<option value="반려동물">반려동물</option>
					<option value="문화/공연">문화/공연</option>
					<option value="키페/맛집">키페/맛집</option>
					<option value="공예">공예</option>
					<option value="사진/영상">사진/영상</option>
					<option value="사교/인맥">사교/인맥</option>
					<option value="음악/악기">음악/악기</option>
					<option value="업종/직무">업종/직무</option>
					<option value="해외/언어">해외/언어</option>
					<option value="베이커리">베이커리</option>
				</select>
				<h1>대표 사진</h1> <input type="file" id="moim_profile">
			</span>
			<button type="button" id="moim_btn" onclick="som_insertOK.do">모임 만들기</button>


		</div>
	</div>





	<div class="footer">
		<div>
			<strong>온앤오프</strong>
			<ul>
				<li>공지사항</li>
				<li>이벤트</li>
				<li>자주 믿는 질문</li>
			</ul>
		</div>
		<div>
			<strong>소셜 미디어</strong>
			<ul>
				<li>인스타그램</li>
				<li>네이버 블로그</li>

			</ul>
		</div>
		<div class="footer_company">
			<strong>온앤오프</strong>
			<ul>
				<li>대표: 팀404 개인정보관리책임자: 팀404</li>
				<li>이메일: Team404@Team404.com 대표번호: 123-1234-1234</li>
				<li>주소: 서울시 강남구 태헤란로 ~~~~~</li>
			</ul>
		</div>

	</div>
</body>
</html>