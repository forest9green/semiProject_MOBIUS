<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = (String)request.getParameter("userId");
%>    
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div class="location_wrap">
        <div class="location_cont">
            <em class="pd">
                <a href="" class="local_home">HOME</a>
                > 아이디/비밀번호 찾기>비밀번호 찾기
            </em>
        </div>
    </div>

    <div class="contents">    
        <div class="content-box">
            <div class="member_tit">
                <h2 class="pf">비밀번호 찾기</h2>
            </div>
            <div class="member_cont">
                <form action="<%=request.getContextPath() %>/user/updatePassword" id=changePw method="post" >
                    <div class="box6">
                        <dl class="n_id pd">
                            <dt >내 아이디 : </dt>
                            <p id="userId"><%=userId %></p>
                        </dl>
                        <div class="input_box pd">
                            <input type="hidden" name="userId" value="<%=userId %>">
                            <label id="lb_new_pw" for="neww_pw">새 비밀번호</label>
                            <input type="password" id="new_pw" name="password" class="input_txt" >
                        </div>
                        <div id="idv_new_conf_pw" class="input_box pd">
                            <label for="new_conf_pw" id="lb_new_conf_pw" class="input_txt">새 비밀번호 확인</label>
                            <input type="password" id="new_conf_pw" name="password_new">
                        </div>
                        <div class="ip_chk pd">
                            <input type="checkbox" id="chkBlockIp" name="chkBlockIp" class="input_chk">
                            <label for="chkBlockIp">정말로 비밀번호를 변경하시겠습니까?</label>
                        </div>
                    </div>
                    <div class="btn_area pf">
                        <button type="button" id="btn_submit" class="btn_confirm pd"  >확인</button>
                    </div>
                </form>
            </div>
        </div>           
    </div>    
</section>
    
    
    
    
    <script>
    	$("#btn_submit").click(function(){
    		const password = $("#new_pw").val();
    		const password_new = $("#new_conf_pw").val();
    		const check = $("#chkBlockIp").val();
    		const changePw=$("#changePw");
    		if(password==password_new){
    			if(check!=null){
    				changePw.submit();
    			}else{
    				alert("비밀번호를 변경하려면 체크해주세요");
    			}
    		}else{
    			alert("비밀번호가 일치하지않습니다.");
    		}
    	});
    </script>
    
    
    
    
    
    
    
    
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
        height: 300px;
    }
    .n_id{
        margin: 50px 0 30px 135px;
    }
    #userId{
    	display : inline-block;
    	margin-left : 80px;
    }
    .n_id dt{
        display: inline-block;
    }
    .input_box{
        position: relative;
        width: 299px;
        height: 34px;
        margin: 0 226px 10px 135px;
    }
    #lb_new_pw{
        margin-right: 36px;
    }
    .ip_chk{
        margin: 50px 0 0 150px;
    }
    .btn_area{
        padding: 17px 0 15px ;
        text-align: center;
    }
    .btn_confirm{
        width: 200px;
        height: 60px;
        border: 1px solid black;
        background: white;
    }
    #new_conf_pw{
    	margin-left : 3px;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>