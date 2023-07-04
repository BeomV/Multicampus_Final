<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=  , initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/style_min.css">
    <link rel="stylesheet" href="resources/css/min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">


$(function(){
	console.log("onload....");
});

function idCheck(){
	console.log("idCheck....",$('#user_id').val());
	
	$.ajax({
		url : "json_u_idCheck.do",
		data:{id:$('#user_id').val()},
		method:'GET',
		dataType:'json',
		success : function(obj) {
			console.log('ajax...success:', obj);
			console.log('ajax...success:', obj.result);
			let msg = '';
			if(obj.result==='OK'){
				msg = '사용가능한 아이디입니다.';
			}else{
				msg = '사용중인 아이디입니다.';
			}
			$('#demo').text(msg);
		},
		error:function(xhr,status,error){
			console.log('xhr.status:', xhr.status);
		}
	});//end $.ajax()...
	
}//end idCheck()...

</script>
</head>

<body>
	<jsp:include page="../top_menu.jsp"></jsp:include>
    <div class="register_section">
        <form action="u_insertOK.do" method="post" enctype="multipart/form-data">
                   <labal for="user_id">아이디</labal>
                    <br>
                    <input type="text" placeholder="아이디를 입력하세요." name="user_id" id="user_id" value="tester"> 
                    <br>
                    <label for="user_pw">비밀번호</label>
                    <br>
                    <input type="password" placeholder="비밀번호를 입력하세요." name="pw" id="user_pw" value="hi111"> 
                    <br>
                    <label for="user_pw">비밀번호 확인</label>
                    <br>
                    <input type="password" placeholder="비밀번호를 입력하세요." name="pw_check" id="pw_check" value="hi111">
                    <br>
                    <label for="user_name">이름</label>
                    <br>
                    <input type="text" placeholder="이름를 입력하세요." id="name" name="name" value="kim12"> 
                    <br>
                    <div class="birth_gender" >
                    <span>
                        <label>
                            생년월일
                        </label>
                        <br>
                        <select name="birthday_year">
                            <option value="2000">2000</option>
                            <option value="2001">2001</option>
                            <option value="2002">2002</option>
                        </select>
                        
                        <select name="birthday_month">
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                        </select>
                        
                        <select name="birthday_day">
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                        </select>
                    </span>
                    
                    <span>
                        <label>
                            성별
                        </label>
                        <br>
                        <select>
                            <option>남자</option>
                            <option>여자</option>
                        </select>                    
                    </span>
                </div>
                <label for="user_profile">프로필 사진</label>
                <br>
                <input type="file" name="file" id="file" value="">
                <br>
                <label for="user_email">이메일</label>
                <br>
                <div class="register_input_flex">
                    <input type="email" placeholder="이메일을 입력하세요" name="email" id="email" value="ddjsjdf@naver.com">
                <button type="button">인증번호</button>
                </div>
                <br>
                <div class="register_input_flex">
                    <input type="text" placeholder="인증번호 입력" name="email_token" id="email_token" value="">
                    <button>확인</button>
                </div>
                <br>
<%-- 
                <label for="user_tel">휴대폰 번호</label>
                <br>
                <input type="tel" placeholder="휴대폰 번호를 입력하세요" id="user_tel">
                <br>
                            <button id="register">회원가입</button>
    
--%>
               <input id="register" type="submit" value="회원가입"></input>
                                    

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