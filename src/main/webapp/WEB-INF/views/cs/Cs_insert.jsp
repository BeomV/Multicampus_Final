<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/board.css">
    <link rel="stylesheet" href="resources/css/board_min.css">
    <script src="https://kit.fontawesome.com/1652357a48.js" crossorigin="anonymous"></script>
    <title>Document</title>
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
                <a href="login.do">로그인</a>
                <a>로그아웃</a>
            </div>

        </div>

    </div>

    <div class="join_section">
        <div class="join_gnb">
            <li><a>홈</a></li>
            <li>게시판</li>
            <li>갤러리</li>
            <li>일정</li>
            <li>채팅</li>
            <li>정산</li>
        </div>
        <div class="img_info">
            이미지
        </div>
   
        <div class="join_insert_secction">
        <form action="cs_notice_insertOK.do">
            <span>
                <h2>제목</h2>
                <input type="text" name ="title" placeholder="제목을 입력하세요">
                <h3>내용</h3>
                <input type="text" name="content" placeholder="내용을 입력하세요" id="insert_content">
                <input type="hidden" name="user_id" value="${user_id}">
            </span>
            
            <button type="submit">작성완료</button>
		</form>
                
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