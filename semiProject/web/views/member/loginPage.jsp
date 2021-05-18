<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>
<%@ page import="com.user.model.vo.User" %>
<%
	User loginUser=(User)session.getAttribute("loginUser");
	Cookie[] cookies = request.getCookies();
	String saveId=null;
	if(cookies!=null){
		for(Cookie c : cookies){
			if(c.getName().equals("saveId")){
				saveId=c.getValue();
				break;
			}
		}
	}

%>

<section>
    <div>    
        <div id="contents">
            <div class="location_wrap">
                <div class="location_cont">
                    <em>
                        <a class="local_home" href="">HOME</a>
                         &gt; 로그인
                    </em>
                </div>
            </div>
            <div class="sub_content">
                <div class="member_wrap">  
                    <div class="member_tit">
                        <h2>회원 로그인</h2>
                    </div>  
                    <div class="member_cont">
                        <form id="loginFrm" method="post" action="<%=request.getContextPath()%>/user/login" 
                        onsubmit="return fn_login_validate()">
                 
                                <div class="login_input_sec">
                                    <div>
                                        <input placeholder="아이디" type="text" id="userId"> 
                                        <input placeholder="비밀번호" type="password" id="userPw">
                                    </div>
                                    <button type="submit"><h2>로그인</h2></button>
                                    <div class="id_chk">
                                            <input type="checkbox" value="y" name="saveId" id="saveId"
                                            <%=saveId!=null?"checked":"" %>>
                                            <label for="saveId">아이디 저장</label>
                                      
                                    </div>
                        </form>        
                            </div>
                  			<div class="member_sns_login">
                                <a class="btn_kakao_login" href="">
                                    <img src="" alt="카카오 아이디 로그인">
                                </a>
                                <a class="btn_naver_login" href="">
                                    <img src="" alt="네이버 아이디 로그인">
                                </a>
                                <a class="btn_google-login" href="">
                                    <img src="" alt="구글 아이디 로그인">
                                </a>
                            </div>
                            <div class="btn_login_box">
                                <ul>
                                    <li>
                                        <button id="btn_find_member">아아디/비밀번호 찾기</button>
                                    </li>
                                    <li>
                                        <button id="btn_member_join">회원가입</button>
                                    </li>
                                </ul>
                            </div>
                        
                    </div>    
                </div>    
            </div>
        </div>
    </div>
</section>    


	<script>
		const fn_login_validate=()=>{
			const userId=$("#userId").val();
			if(userId.trim().length<4){
				alert("아이디는 4글자 이상입니다.");
				return false;
			}
		
			const pw=$("#userPw").val();
			if(pw.trim()==0){
				alert("비밀번호를 입력하세요.");
				return false;
		
		
		
		}
		
		
		
		
	</script>









<style>
    #contents{
       min-height: 400px;
       padding: 0 0 40px 0;
       margin: 0;
       display: block;
    }
    .location_wrap{
        border: 0;
        margin: 0 auto;
        max-width: 1380;
        position: relative;
        width: 100%;
        padding: 0;
    }
    .location_cont{
        text-align: right;
        padding: 20px;
    }
    .location_cont em{
        display: inline-block;
        float: none;
        padding: 12px 0 10px 0;
        color: #777777;
        text-align: right;
    }
    .sub_content{
        position: relative;
        width: 100px;
        margin: 0 auto;
        padding: 0;
        display: flex;
        align-content: center;
        justify-content: center;
    }
    .member_wrap{
        width: 593;
        margin: 20px auto 40px auto;
        padding: 0;
        display: block;
    }
    .member_cont{
        padding: 70px 60px;
        border: 1px solid #dbdbdb;
        display: block;
        width: 500px;
        height: 400px;
    }
    #formLogin{
        display: block;
        margin: 0;
        padding: 0;
    }
    .login_input_sec{
        overflow: hidden;
    }
    .login_input_sec>div{
        float: left;
    }
    .login_input_sec #userId,#userPw{
        display: block;
        width: 292px;
        height: 36px;
        margin: 15px 0 10px 0;
        padding: 0 0 0 8px;
        border: 1px solid lightgray;
    }
    .input[type="text"]{
        outline: none;
        font-size: 14px;
        line-height: 31px;
        vertical-align: middle;
    }
    .input[type="password"]{
        outline: none;
        font-size: 14px;
        line-height: 31px;
        vertical-align: middle;
    }
    .login_input_sec button{
        border: 1px solid #222;
        background: rgb(153, 149, 149);
        color: black;
        width: 158px;
        height: 91px;
        margin: 15px 0 0 0;
        font-weight: bold;
        float: right;
        vertical-align: middle; 
    }
    .id_chk{
        padding: 6px 0 26px 0;
        display: flex;
        position: relative;
        left: -300px;
    }
    .id_chk>input{
        float: left;
    }
    input[type="checkbox"]{
        height: 13px;
        vertical-align: top;
        background-color: initial;
        appearance: auto;
        box-sizing: border-box;
        border: initial;
    }
    .member_sns_login>*:first-child{
        margin-top: 0;
    }
    .member_sns_login>*{
        display: block;
        margin-top: 12px;
    }
    .member_sns_login>a{
        text-decoration: none;
    }
    .btn_login_box{
        overflow: hidden;
        margin: 20px 0 0 0;
        padding: 40px 10px 0 10px;
        border-top: 1px solid #dcdcdc;
        display: block;
    }
    .btn_login_box>ul{
        list-style: none;
        display: block;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        padding-inline-start: 25px;
    }
    .btn_login_box li:first-child{
        margin: 0;
    }
    .btn_login_box li{
        float: left;
        display: list-item;
        margin-left: 40px;
    }
    .member_sns_login img{
        border: 0 none;
        vertical-align: top;
    }
    #btn_member_join{
        width: 200px;
        height: 60px;
        margin: 0;
        color: black;
        font-size: 14px;
        border: 1px solid #666666;
        background: white;
        font-weight: bold;
        text-align: middle;
    }
    #btn_find_member{
        width: 200px;
        height: 60px;
        margin: 0;
        color:black;
        font-size: 14px;
        border: 1px solid #666666;
        background: white;
        font-weight: bold;
        text-align: middle;
    }
    button{
        appearance: auto;
        text-rendering: auto;
        display: inline-block;
        text-align: center;
        align-items: flex-start;
        box-sizing: border-box;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>