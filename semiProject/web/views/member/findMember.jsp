<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section> 
    <div class="location_wrap">
        <div class="location_cont">
            <em class="pd">
                <a href="<%=request.getContextPath() %>/index.jsp" class="local_home">HOME</a>
                > 아이디/비밀번호 찾기
            </em>
        </div>
    </div>

    <div class="contents">    
        <div class="content-box">
            <div class="member_tit pf">
                <h2>아이디 찾기</h2>
            </div>
            <div class="member_cont">
                <form action="" id="formFindId" method="post" novalidate>
                    <div class="find_id_box">
                        <div class="find_id_sec">
                            <h3 class="pd">본인확인 이메일 인증</h3>
                            <div class="login_input pc">
                                <table>
                                    <input type="text" id="userName" name="userName" placeholder="이름">
                                    <input type="text" id="userEmail" name="userEmail" class="input_email" placeholder="가입메일주소">
                                    <button id="button">인증번호받기</button>
                                    <input type="text" id="numCer" name="numCer" placeholder="인증번호 6자리 입력">
                                    
                                    
                                </table>    
                            </div>
                            
                        </div>
                        <div class="btn_member_sec">
                            <button class="btn_member_white pe" id="next_btn" >다음</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="content-box pf">
            <div class="member_tit">
                <h2>비밀번호 찾기</h2>
            </div>
            <div class="member_cont">
                <form action="" id="formFindId" method="post" novalidate>
                    <div class="find_id_box">
                        <div class="find_id_sec">
                            <h3 class="pd">본인확인 이메일 인증</h3>
                            <div class="login_input pc">
                                <input type="text" id="userId" name="userId" placeholder="아이디">
                                <input type="text" id="userName" name="userName" placeholder="이름">
                                <input type="text" id="userEmail2" name="userEmail" class="input_email" id="numCer2"  placeholder="가입메일주소">
                                <button>인증번호받기</button>
                                <input type="text" id="" name="numCer" placeholder="인증번호 6자리 입력">
                            </div>
                            
                        </div>
                        <div class="btn_member_sec">
                            <button class="btn_member_white pe" >다음</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>    
    </div>    
</section>

<style>
    .location_wrap{
        border: 0;
        margin: 0 auto;
        max-width: 1380px;
        position: relative;
        width: 100%;
    }
    .location_cont{
        text-align: right;
        padding: 20px;
    }
    .location_cont em{
        display: inline-block;
        float: none;
        padding: 12px 0 10px 0;
    }
    .contents{
        position: relative;
        /*width: 50%; */
        margin: 0 auto;
    }
    .content-box{
        float: none;
        margin: 0 auto;
        display: inline-block;
        align-items: center;
        margin-left: 25px;
    }
    .member_tit h2{
        margin: 0 0 20px 0;
    }
    .member_cont{
        padding: 10px 60px 70px 60px;
        border: 1px solid #dbdbdbdb;
        width: 400px;
        height: 400px;
    }
    .login_input{
        overflow: hidden;
        border-top: none 0;
    }
    #userEmail{
        display: inline-block;
    }
    #userEmail2{
        display: inline-block;
    }
    .login_input input{
        display: block;
        width: 292px;
        height: 36px;
        margin: 15px 0 10px 0;
        padding: 0 0 0 8px;
    }
    input[type="text"]{
        outline: none;
        line-height: 31px;
        box-sizing: border-box;
    }
    .btn_member_id{
        float: right;
        width: 158px;
        height: 91px;
        margin: 15px 0 0 0;
    }
    #button{
        margin-left: 5px;
    }
    .btn_member_sec{
        margin: 40px 0 0 90px;

    }
    .btn_member_white{
        width: 200px;
        height: 60px;
        margin: 0;
        color:black;
        border: 1px solid #666666;
        background: white;
        text-align: center;
    }
    #next_btn{
        margin-top: 50px;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>