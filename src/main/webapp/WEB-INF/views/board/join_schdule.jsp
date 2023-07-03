<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page session="false" %>
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
    <jsp:include page="../top_menu.jsp"></jsp:include>

<div class="join_section">
    <jsp:include page="./som_top_menu.jsp"></jsp:include>

    <div class="top_func">
        <button type="button" style="padding: 5px 12px;">이미지 업로드</button>
    </div>


    <div class="top_func">
        <button type="button" style="padding: 5px 12px;">일정 만들기</button>
    </div>

    <div class="schedule_box">
        <ul class="sch_grid">
            <c:forEach items="${vos}" var="vo">
                <li>
                    <div class="sch_func">
                            <span>
                                <button type="button">참석</button>
                                <button type="button">취소</button>
                            </span>
                        <span>
                                <button type="button"><i class="fas fa-edit"></i></button>
                                <button type="button"><i class="fas fa-trash-alt"></i></button>
                            </span>

                    </div>
                    <div class="sch_content">
                        <div class="sch_info" style="text-align: left">
                            <h2>${vo.schedule_date}</h2>
                            <strong>06/17</strong>
                            <p>일시: $</p>
                            <p>장소:</p>
                            <p>회비:</p>
                            <p>06/17</p>

                        </div>
                        <div class="sch_member">
                            <h2>참석 멤버</h2>
                            <ul class="schm_grid">
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                                <li><i class="far fa-user"></i></li>
                            </ul>

                        </div>

                    </div>

                </li>
            </c:forEach>




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