<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/min.css">
    <link rel="stylesheet" href="resources/css/myfeed.css">
    <link rel="stylesheet" href="resources/css/mypage_myactivity.css">
    <link rel="stylesheet" href="resources/css/board.css">
    <script src="https://kit.fontawesome.com/1652357a48.js" crossorigin="anonymous"></script>
</head>
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
                <a >마이페이지</a>
                <a>로그아웃</a>
            </div>

        </div>

    </div>
</br>
    <div class="mypage_myactivity_group_menu">
        <ul>
            <li><a href="#">내가 쓴 글</a></li>
            <li><a href="#">내가 쓴 댓글</a></li>
            <li><a href="#">좋아요 표시한 사진</a></li>
            <li><a href="#">좋아요 표시한 게시글</a></li>
        </ul>
    </div>
            
        <div class="mypage_myactivity_imgbox">
            <ul class="mypage_myactivity_img_grid">
                <li>이미지 1</li>
                <li>이미지 2</li>
                <li>이미지 3</li>
                <li>이미지 4</li>
                <li>이미지 5</li>
                <li>이미지 5</li>
                <li>이미지 5</li>
                <li>이미지 5</li>
                <li>이미지 5</li>

            </ul>

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