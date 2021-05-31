<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ include file="/views/common/header.jsp"%>
 	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
  	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<meta name ="google-signin-client_id" content="323356811623-vstddj93n1j846mj6tseqm6pifja5dgp.apps.googleusercontent.com">
	
<section>
    <div>    
        <div id="contents">
            <div class="location_wrap">
                <div class="location_cont">
                    <em>
                        <a class="local_home" href="<%=request.getContextPath() %>/index.jsp">HOME</a>
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
                                        <input placeholder="아이디" type="text" id="userId" name="userId"> 
                                        <input placeholder="비밀번호" type="password" id="password" name="password">
                                	</div>
                                    <button type="submit"><h2>로그인</h2></button>
                                    <div class="id_chk">
                                            <input type="checkbox" value="y" name="saveId" id="saveId"
                                            <%=saveId!=null?"checked":"" %>>
                                            <label for="saveId">아이디 저장</label>
                                      
                                    </div>
                                  </div>
                        </form>    
                        <div class="member_sns_login">
                                <ul>
                                       <!--  <li onclick="kakaoLogin();">
									      <a href="javascript:void(0)">
									          <span>카카오 로그인</span>
									      </a>
										</li> -->
                                        <li>
                                        	<div id="naver_id_login"></div>
                                        </li>
                                        <li id="GgCustomLogin">
										  <a href="javascript:void(0)">
										   <span>구글 로그인</span>
										  </a>
										 </li>
                                    </ul>
                               	
                     	</div>    
                    </div>
                  
                            <div class="btn_login_box">
                                <ul>
                                    <li>
                                        <button id="btn_find_member" onclick="location.replace('<%=request.getContextPath()%>/views/member/findMember.jsp')">아아디/비밀번호 찾기</button>
                                    </li>
                                    <li>
                                        <button id="btn_member_join" onclick="location.replace('<%=request.getContextPath()%>/user/memberenrll')">회원가입</button>
                                    </li>
                                </ul>
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
		
		}
		
		
		
		
	</script>


	<script src="https://developers.kakao.com/sdk/js/kakao.js">
            Kakao.init('9cc0f57624cb30b7399ffa3aa1114e94');
            console.log(Kakao.isInitialized());
            function kakaoLogin() {
                Kakao.Auth.login({
                success: function (response) {
                    Kakao.API.request({
                    url: '/v2/user/me',
                    success: function (response) {
                        console.log(response)
                    },
                    fail: function (error) {
                        console.log(error)
                    },
                    })
                },
                fail: function (error) {
                    console.log(error)
                },
                })
                
                function kakaoLogout() {
                    if (Kakao.Auth.getAccessToken()) {
                      Kakao.API.request({
                        url: '/v1/user/unlink',
                        success: function (response) {
                        	console.log(response)
                        },
                        fail: function (error) {
                          console.log(error)
                        },
                      })
                      Kakao.Auth.setAccessToken(undefined)
                    }
                  }  
            }
        </script>

		<script type="text/javascript">
		  	var naver_id_login = new naver_id_login("yYSzxUmZK7XCoK773w8D", "http://localhost:9090/semiProject/");
		  	var state = naver_id_login.getUniqState();
		  	naver_id_login.setButton("white", 2,40);
		  	naver_id_login.setDomain("http://localhost:9090/semiProject/views/member/loginPage.jsp");
		  	naver_id_login.setState(state);
		  	naver_id_login.setPopup();
		  	naver_id_login.init_naver_id_login();
		 </script>
		<script>
			function init(){
				gapi.load('auth2', function() {
					gapi.auth2.init();
					options = new gapi.auth2.SigninOptionsBuilder();
					options.setPrompt('select_account');
			        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
					options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
			        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
			        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
					gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
				})
			}
			function onSignIn(googleUser) {
				var access_token = googleUser.getAuthResponse().access_token
				$.ajax({
			    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
					url: 'https://people.googleapis.com/v1/people/me'
			        // key에 자신의 API 키를 넣습니다.
					, data: {personFields:'birthdays', key:'AIzaSyAM0StZxdtcoG_meBMW9dGnu2f5Aizn90M', 'access_token': access_token}
					, method:'GET'
				})
				.done(function(e){
			        //프로필을 가져온다.
					var profile = googleUser.getBasicProfile();
					console.log(profile)
				})
				.fail(function(e){
					console.log(e);
				})
			}
			function onSignInFailure(t){		
				console.log(t);
			}
		</script>
		<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>


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
        height: 300px;
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
    .login_input_sec #userId,#password{
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
        margin: 20px 0 0 60px;
        padding: 40px 10px 0 10px;
        
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
    #naver_id_login{
    	width: 500px;
    }
    body{
    	margin:0px;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>