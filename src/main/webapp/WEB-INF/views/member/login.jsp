<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/min.css">
</head>
<body>
    <div class="header">
        <div class="gnb">
            <div class="logo">
                <img src="resources/img/logo.png">
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
                <a href="/login.html">로그인</a>
                <a>로그아웃</a>
            </div>

        </div>

    </div>

    <div class="login_section">

        <form>
            
            <labal for="user_id">아이디</labal>
            <br>
            <input type="text" placeholder="아이디를 입력하세요." id="user_id"> 
            
            <br>

            <label for="user_pw">비밀번호</label>
            
            <br>
            <input type="password" placeholder="비밀번호를 입력하세요." id="user_pw"> 
            <br>
            <div class="sub_login">
                <label><input type="checkbox" id="auto_login">자동로그인</label>
                <span>
                <a>아이디/비밀번호 찾기</a>
                <a>회원가입</a>
                </span>
            </div>
            
            <button id="login_btn">로그인</button>
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