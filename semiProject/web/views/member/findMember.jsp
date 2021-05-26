<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String key = (String)request.getAttribute("key");
	String key2 =(String)request.getAttribute("key2");
	User u = (User)request.getAttribute("u");
%>
    
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
                
                    <div class="find_id_box">
                        <div class="find_id_sec">
                            <h3 class="pd">본인확인 이메일 인증</h3>
                            <div class="login_input pc">
                               <form action="<%=request.getContextPath() %>/user/findId" id="formFindId" name="formFindId" method="post" > 
                                <table>
                                    <input type="text" id="userName" name="userName" placeholder="이름" value="<%=u!=null&&u.getUserName()!=null?u.getUserName():"" %>">
                                    <input type="text" id="userEmail" name="userEmail" class="input_email" placeholder="가입메일주소" value="<%=u!=null&&u.getEmail()!=null?u.getEmail():""%>">
                                    <button id="submit" onclick="fn_submit();">인증번호받기</button>
  
                                </table> 
                               </form>    
                               <input type="text" id="numCer" name="numCer" placeholder="인증번호 6자리 입력">
                            </div>
                            
                        </div>
                        
                        <div class="btn_member_sec">
                            <button type="button" class="btn_member_white pe" id="next_btn"  >다음</button>
                        </div>
                    </div>
                
            </div>
        </div>      
        <div class="content-box pf">
            <div class="member_tit">
                <h2>비밀번호 찾기</h2>
            </div>
            <div class="member_cont">
               
                    <div class="find_id_box">
                        <div class="find_id_sec">
                            <h3 class="pd">본인확인 이메일 인증</h3>
                            <div class="login_input pc">
                            <form action="<%=request.getContextPath() %>/user/findPassword" id="formFindPw" name="formFindPw" method="post" >
                                <table>
	                                <input type="text" id="finduserId" name="finduserId" placeholder="아이디" value="<%=u!=null&&u.getUserId()!=null?u.getUserId():"" %>">
	                                <input type="text" id="finduserName" name="finduserName" placeholder="이름" value="<%=u!=null&&u.getUserName()!=null?u.getUserName() :""%>">
	                                <input type="text" id="userEmail2" name="userEmail2" class="input_email" id="numCer2"  placeholder="가입메일주소" value="<%=u!=null&&u.getEmail()!=null?u.getEmail():""%>">
	                                <button id="submit2" onclick="fn_submit2();">인증번호받기</button>
                             	</table>
                             </form>
                                <input type="text" id="numCer2" name="numCer2" placeholder="인증번호 6자리 입력">	
                            </div>
                            
                            
                        </div>
                        <div class="btn_member_sec">
                            <button type="button" class="btn_member_white pe" id="submit_btn">다음</button>
                        </div>
                    </div>
                
            </div>
        </div>    
    </div>    
</section>
<form method="post" id="userIdForm" action="<%=request.getContextPath() %>/views/member/findId.jsp"> 
	<input type="hidden" name="userId" value="<%=u!=null&&u.getUserId()!=null?u.getUserId():"" %>"> 
</form>  
<form method="post" id="userPwForm" action="<%=request.getContextPath() %>/views/member/findPassword.jsp"> 
	<input type="hidden" name="userId" value="<%=u!=null&&u.getUserId()!=null?u.getUserId():"" %>"> 
</form>


<script>
	
	const fn_submit=()=>{
		alert("메일이 전송되었습니다. 메일이 없을 경우 입력한 정보를 확인해주세요");
		
	}
	const fn_submit2=()=>{
		alter("메일이 전송되었습니다. 메일이 없을 경우 입력한 정보를 확인해주세요")
	}
	
	$("#next_btn").click(function(){
		const numCer = $("#numCer").val();
		const loginForm=$("#userIdForm");
		
		if(numCer=="<%=key%>"){
			loginForm.submit();
			
			
		}
	})
	
	$("#submit_btn").click(function(){
		const numCer2 = $("#numCer2").val();
		const loginForm=$("#userPwForm");
		if(numCer2=="<%=key2%>"){
			loginForm.submit();
		}
	})
	
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
    #submit{
    	margin-left:5px;
    }
    #submit2{
    	margin-left:5px;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>