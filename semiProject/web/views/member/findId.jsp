<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div>    
        <div id="contents">
            <div class="location_wrap">
                <div class="location_cont">
                    <em class="pd">
                        <a class="local_home pd" href="">HOME </a>
                         >아이디/비밀번호 찾기>아이디 찾기
                    </em>
                </div>
            </div>
            <div class="sub_content">
                <div class="member_wrap">  
                    <div class="member_tit">
                        <h2 class="pc">아이디 찾기</h2>
                    </div>  
                    <div class="member_cont">
                        <div class="login_input_sec">
                            <h4 pc>고객님의 정보와 일치하는 아이디 : <%=loginUser.getUserId() %></h4>  
                        </div>
                        <div class="btn_login_box">
                            <ul>
                                <li>
                                    <button id="btn_find_member" class="pd">비밀번호 찾기</button>
                                </li>
                                <li>
                                    <button id="btn_member_join" class="pd">로그인</button>
                                </li>
                            </ul>
                        </div>
                        
                    </div>    
                </div>    
            </div>
        </div>
    </div>
</section>
    
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
        padding: 20px 60px 100px 60px;
        border: 1px solid #dbdbdb;
        display: block;
        width: 500px;
        height: 200px;
    }      
    .login_input_sec{
        width: 500px;
        height: 20px;
        margin-bottom: 150px;
        align-items: center;
    }
    .login_input_sec h4{
       margin: 130px 0;
    }

    .btn_login_box{
        overflow: hidden;
        padding: 0 10px 0 10px;
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
    #btn_member_join{
        width: 200px;
        height: 60px;
        margin: 0;
        color: black;
        font-size: 14px;
        border: 1px solid #666666;
        background: white;
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