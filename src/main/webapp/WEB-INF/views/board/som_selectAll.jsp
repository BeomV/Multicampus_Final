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
<script src="https://kit.fontawesome.com/1652357a48.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="resources/js/board.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		$(".button").on('click', function() {
			console.log("onload...");
				var category = $(this).val();
				console.log($(this).val());
			$.ajax({
				url : 'som_selectAll.do',
				method:'GET',
				data : {
					'category':category
				},
				success : function(data){
					console.log(data);
					
					$('body').html(data);
				},
				error : function(xhr, status, error){
					console.log('xhr.status : ', xhr.status);
				}
				
				
				
			});//end ajax
		});//end click

	});//end ready
</script>
</head>
<body>
	<jsp:include page="../top_menu.jsp"></jsp:include>



	<div class="board_section">
		<div class="board_category">
			<ul class="board_grid">
				<li><input type="button" name="button" value="여행" class="category_active"></li>
				<li><input type="button" value="운동" class="button"></li>
				<li><input type="button" value="야구관람" class="button"></li>
				<li><input type="button" value="게임/오락" class="button"></li>
				<li><input type="button" value="아웃도어" class="button"></li>
				<li><input type="button" value="반려동물" class="button"></li>
				<li><input type="button" value="문화/공연" class="button"></li>
				<li><input type="button" value="카페/맛집" class="button"></li>
				<li><input type="button" value="공예" class="button"></li>
				<li><input type="button" value="도서" class="button"></li>
				<li><input type="button" value="사진/영상" class="button"></li>
				<li><input type="button" value="사교/인맥" class="button"></li>
				<li><input type="button" value="음악/악기" class="button"></li>
				<li><input type="button" value="업종/직무" class="button"></li>
				<li><input type="button" value="해외/언어" class="button"></li>
				<li><input type="button" value="요리" class="button"></li>
				<li><input type="button" value="베이커리" class="button"></li>
				<li><input type="button" value="자유주제" class="button"></li>


			</ul>
		</div>
		<div class="category_more">
			<a>카테고리 더보기</a>
		</div>

		<div class="rec_list">
			<div class="rec_list_top">
				<h1>🔥 추천 모임 리스트 🔥</h1>
				<a href="som_insert.do"><button type="button" id="som_insert-btn">모임 만들기</button></a>
			</div>
			
			<ul class="rec_list_grid">
				<c:forEach var="vo" items="${vos}" end="3">
					<li>
					<a href="som_selectOne.do?num=${vo.num}">
						<input type="hidden" value="${vo.num}">
						<input type="hidden" value="${vo.create_date}">
							<div class="moim_img">
								<div class="img_box">
								<img src="resources/img/${vo.save_name}"></div>
								<span>
									<p class="hashtag">${vo.category}</p>
									<h1>${vo.som_title}</h1>
									<p class="sub_tit">소셜링 ${vo.area} ${vo.create_date }</p>
								</span>

							</div>
					</a>
					</li>
				</c:forEach>


			</ul>

		</div>

		<div class="board_list">
			<div class="board_list_category_detail">
				<button type="button" class="list_active">전체</button>
				<button type="button">국내여행</button>
				<button type="button">해외여행</button>
				<input type="search" placeholder="검색" id="board_search"> <input
					type="button" value="검색" onclick="som_searchList">
			</div>
			<div class="list_selectAll">
				<ul class="list_grid">
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>
					<li>
						<div class="list_box">
							<img src="resources/img/0112.png"> <span>
								<h1>title</h1>
								<p>모임개설일:</p>
								<p>수원시 멤버 12명</p>
							</span>
						</div>
					</li>




				</ul>

			</div>

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