<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
	
	 <section>
            <div class="location_wrap">
                <div class="location_cont">
                    <em class="pd">
                        <a href="" class="local_home">HOME</a>
                        > 비밀번호 확인
                    </em>
                </div>
            </div>

            <div class="contents">    
                <div class="content-box">
                    <div class="member_tit">
                        <h2 class="pf">비밀번호 확인</h2>
                    </div>
                    <div class="member_cont">
                        <form action="" id="formFindId" method="post" novalidate>
                            <div class="box6">
                                <div class="input_box pd">
                                    <label id="lb_new_pw" for="neww_pw"> 비밀번호</label>
                                    <input type="password" id="new_pw" name="new_pw" class="input_txt" >
                                </div>
                                
                                
                            </div>
                            <div class="btn_area pf">
                                <button type="button" class="btn_confirm pd" value="회원가입" >이전</button>
                                <button type="button" class="btn_confirm pd" value="회원가입" >확인</button>
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
            .join_base_wrap{
                position: relative;
                width: 100%;
                margin: 0 auto;
                padding: 0;
                float: none;
                max-width: 1380px;
                min-width: 1180px;
            }
            .member_tit{
                overflow: hidden;
                border-bottom: 1px solid #dbdbdbdb;
            }
            .member_tit h2{
                float: left;
                font-size: 28px;
                margin: 0 0 20px 0; 
            }
            .member_cont{
                width: 742px;
                margin: 0 auto;
                border: none;
                padding: 70px 60px;
            }
            .member_cont h3{
                padding: 0 0 17px 0;
                font-size: 18px;
                display: inline-block;
            }
            .box6{
                position: relative;
                z-index: 100;
                padding: 20px 40px;
                border: 1px solid #dbdbdb;
                height: 200px;
            }
            .n_id{
                margin: 50px 0 30px 135px;
            }
            .n_id dt{
                display: inline-block;
            }
            .input_box{
                position: relative;
                width: 350px;
                height: 34px;
                margin: 100px 226px 10px 135px;
                font-size: 20px;
                
            }
            #lb_new_pw{
                margin-right: 36px;
            }
            .ip_chk{
                margin: 50px 0 0 150px;
            }
            .btn_area{
                padding: 17px 0 15px;
                text-align: center;
                margin-top: 30px;
            }
            .btn_confirm{
                width: 200px;
                height: 60px;
                border: 1px solid black;
                background: white;
                margin-right: 50px;

            }
            .input_txt{
                height: 20px;
                width: 200px;
            }

                        
        
        
        
        </style>



<%@ include file="/views/common/footer.jsp"%>