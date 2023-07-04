<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CS_FAQ.do</title>
<link rel="stylesheet" href="resources/css/min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/CS_FAQ.do.css">
<link rel="stylesheet" href="resources/css//Bug.css">
</head>
<style>
.bug_but_position .bug_but{
width:100px;
}
</style>
<body>
	<div class="header">
		<div class="gnb">
			<div class="logo">
				<img src="/Img/logo.png">
			</div>
			<nav>
				<ul>
					<li><a>원데이</a></li>
					<li><a>소모임</a></li>
					<li><a>이벤트</a></li>
					<li><a>커뮤니티</a></li>
					<li><a>고객센터</a></li>
				</ul>
			</nav>
			<div class="main_search">
				<input type="search" placeholder="검색">
			</div>
			<div class="login">
				<a href="login.do">로그인</a> <a>로그아웃</a>
			</div>

		</div>

	</div>

	<div class="area">

		<div class="CS_FAQ_selection">
			<ul>
				<li><a href="notice.do">공지사항</a></li>
				<li><a href="cs_notice.do">자주 묻는 질문 FAQ</a></li>
				<li><a href="bug_notice_insert.do">버그 신고</a></li>

			</ul>
		</div>
	</div>
	<hr>
<body>
	<div class="bug_total">
  <div class="bug_position">
         

            <div class="bug_insert_sec">
                <span>
                    <form action="home.do">
                    <div class="area_bug_titent">
                    <div class="area_bug" >
                        <h2>감사합니다! </h2>
                        
                    </div>
                    
                        <h3 >빠른 시일내에 검토하겠습니다</h3>
                    </div>
            <div class="bug_but_position">
                <button class="bug_but" type="submit"> 제 출</button>
            </div>
                    	<input type="hidden" name="user_id" value="${user_id}" >
                </span>
                

                    
            </div>

                    </form>


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
</body>

</html>