<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page session="false" %>
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
    <script src="https://kit.fontawesome.com/1652357a48.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/1652357a48.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="resources/js/board.js"></script>
</head>
<body>
    <jsp:include page="../top_menu.jsp"></jsp:include>



    <div class="board_section">
        <div class="board_category">
            <ul class="board_grid">
                <li><input type="button" value="여행" class="category_active"></li>
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

        <div class="rec_list">
            <div class="rec_list_top">
                <h1>🔥 추천 모임 리스트 🔥</h1>
                <button type="button">모임 만들기</button>
            </div>
            <ul class="rec_list_grid">
                
                <li>
                    <div class="moim_img">
                        <div class="img_box">
                            <img src="resources/img/0112.png">
                        </div>
                        <span>
                            <p class="hashtag">${vo.category}</p>
                            <h1>${vo.som_title}</h1>
                            <p class="sub_tit">소셜링 성동구 6.20(화) 오후 7:30</p>
                        </span>

                    </div>

                </li>


            </ul>

        </div>

        <div class="board_list">
            <div class="board_list_category_detail">
                <button type="button" class="list_active">전체</button>
                <button type="button" >국내여행</button>
                <button type="button">해외여행</button>
                <input type="search" placeholder="검색" id="board_search">
            </div>
            <div class="list_selectAll">
                <ul class="list_grid">
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
                                <p>수원시 멤버 12명</p>
                            </span>
                        </div>
                    </li>
                    <li>
                        <div class="list_box">
                            <img src="resources/img/0112.png">
                            <span>
                                <h1>title</h1>
                                <p>모임개설일: </p>
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