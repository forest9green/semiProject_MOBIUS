<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	       
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode2').value = data.zonecode;
	                document.getElementById("sample6_address2").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress2").focus();
	            }
	        }).open();
	    }
	</script>


<section>
    <div>
        <div class="location_wrap">
            <div class="location_cont">
                <em class="pd">
                    <a href="" class="local_home">HOME</a>
                    > 회원정보수정 
                </em>
            </div>
        </div>
        <div class="join_base_wrap">
            <div class="member_tit">
                <h2 class="pf">계정관리</h2>
            </div>
            <div class="member_cont">
                <form id="formJoin" name="formJoin" action="<%=request.getContextPath() %>/myPage/user/updateMember" method="post" >
                    <div class="base_info_box">
                        <h3 class="pd">회원정보 수정</h3>
                        
                        <div class="base_info_sec pc">
                            <table border="0" cellpadding="0" callspacing="0">
                                <colgroup>
                                    <col width="25%">
                                    <col width="75%">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th class="380">
                                            <span class="important">아이디</span>
                                        </th>
                                        <td>
                                            <div class="member_warning">
                                                <input type="text" id="memId" name="memId" data-pattern="gdMemberId" value="<%=loginUser.getUserId() %>" readonly>
                                               
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="380">
                                            <span class="important">비밀번호</span>
                                        </th>
                                        <td class="member_password">
                                            <div class="member_warning">
                                                <input type="password" id="memPw" name="password" autocomplete="off" class="ignore">
                                                <div></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="380">  
                                        <th>
                                            <span class="important">비밀번호 확인</span>
                                        </th>
                                        <td>
                                            <div class="member_warning">
                                                <input type="password" class="check_id ignore" name="password_new" autocomplete="off" id="memPwRe">
                                                <span id="newPwck-container"></span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="380">
                                        <th>
                                            <span class="important">이름</span>
                                            
                                        </th>
                                        <td>
                                            <div class="member_warning">
                                                <input type="text" name="newUserName" id="newUserName" data-pattern="gdMemberNmglobal" maxlength="30">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <span class="important">이메일</span>
                                        </th>
                                        <td class="member_email">
                                            <div class="member_warning">
                                                <input type="text" name="newEmail" id="newEmail" tabindex="-1" value="<%=loginUser.getEmail()%>" readonly>
                                                <!-- <select name="emailDomail" id="emailDomain">
                                                    <option value="직접입력">직접입력</option>
                                                    <option value="naver.com">@naver.com</option>
                                                    <option value="nate.com">@nate.com</option>
                                                    <option value="gmail.com">@gmail.com</option>
                                                    <option value="hanmail.com">@hanmail.com</option>
                                                    <option value="daum.net">@daum.net</option>
                                                    
                                                </select> -->

                                            <div class="member_warning_ js_email"></div>
                                            <div class="form_element">
                                                <input type="checkbox" id="maillingFl" name="maillingFl" >
                                                <label for="maillingFl">정보/이벤트 메일 수신에 동의합니다.</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="380">
                                        <th>
                                            <span class="important">휴대폰번호</span>
                                        </th>
                                        <td class="member_address">
                                            <div class="addresss_postcode">
                                                <input type="text" id="newCellPhone" name="newCellPhone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value>
                                            </div>
                                            <div class="form_element">
                                                <input type="checkbox" id="smsFl" name="smsFl"  >
                                                <label for="smsFl" class="check_s">정보/이벤트 SMS 수신에 동의합니다.</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="380">
                                        <th>
                                            <span>전화번호</span>
                                        </th>
                                        <td>
                                            <div>
                                                <input type="text" id="newPhone" name="newPhone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <span class="important">주소</span>
                                        </th>
                                        <td class="member_address">
                                            <div class="address_postcode">
                                                <input type="text" name="zonecode" id="sample6_postcode2" readonly>
                                                <input type="button" id="btnPostcode2" class="btn_post_search" value="우편번호 찾기"
                                                onclick="sample6_execDaumPostcode()">
                                            </div>
                                            <div class="address_input">
                                                <div class="member_warning">
                                                    <input type="text" name="address" id="sample6_address2" readonly
                                                    class="form-element2">
                                                </div>
                                                <div class="member_warning">
                                                    <input type="text" id="sample6_detailAddress2" name="addressSub" class="form-element2">
                                                    <div class="form-element2">
                                                   		<input type="checkbox" id="saveAdd2" name="saveAdd" >
                                                        <label for="saveAdd2" class="check_s">기본배송지</label>
                                                	</div>
                                                </div>
                                            </div>
                                            
                                        </td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="btn_center_box">
                        <input type="submit" id="btnCancel" class="btn_member_cancel pd" value="수정" >
                        <button type="button" class="btn_confirm pd" value="회원가입" >탈퇴</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script>
	$(function(){
		$("#memPwRe").blur((e)=>{
			const pwck=$(e.target).val();
			const pw=$("#memPw").val();
			if(pwck!=pw){
				$("#newPwck-container").html("비밀번호가 다릅니다").css("color","red");
				$("#newPassword").focus();
			}else{
				$("#newPwck-container").html("비밀번호가 일치합니다.").css("color","lightgreen");
				$("#newUserName").focus();
			}
		});
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
        width: 1100px;
        border-bottom: 1px solid #dbdbdb;
    }
    .member_tit h2{
        float: left;
        font-size: 28px;
        margin: 0 0 20px 0; 
    }
    .member_cont{
        width: 742px;
        margin: 0 188px 0 130px;
        border: none;
        padding: 70px 60px;
    }
    .member_cont h3{

       font-size: 22px;
        display: inline-block;
        margin-bottom: 10px;
    }
    .base_info_box>span{
        float: right;
        padding: 0 0 0 10px;
        line-height: 40px;
        color: #ab3e55;
    }
    /* .important{

    } */
    .base_info_sec{
        border-top: 1px solid #999999;
        border-bottom: 1px solid #999999;
    }
    .base_info_sec table{
        width: 100%;
    }
    .base_info_sec th:first-child{
        border-left: none;
    }
    .base_info_sec th{
        text-align: left;
        border-bottom: 1px solid #dcdcdcdc;
        background: #fbfbfbfb;
        padding: 10px 25px;
    }
    .base_info_sec td{
        padding: 15px 0 15px 15px;
        
    }
    .member_warning{
        display: inline;
        position: relative;
    }
    
    input[type="text"],input[type="password"]{
        padding: 0 10px;
        outline: none;
        font-size: 14px;
        height: 31px;
        border: 1px solid #d6d6d6d6;
        line-height: 31px;
        box-sizing: border-box;
    }
   
    .join_base_wrap table th span{
        padding: 0 0 0 10px;
        margin: 0 0 0 -10px;
    }
    .base_info_sec table th{
        text-align: left;
        border-bottom: 1px solid #fbfbfb;
    }
    .join_base_wrap table th{
        padding: 10px 25px;
    }
    .member_email input[type="text"]{
        width:300px;
    }
    .member_email select{
        width: 120px;
        height: 31px;
        vertical-align: top;
        outline: none;
    }
    option{
        white-space: nowrap;
        min-height: 1.2em;
        padding: 0px 2px 1px;
    }
    .chosen-container{
        vertical-align: top;
        text-align: left;
        position: relative;
        display: inline-block;
    }
    .chosen-single{
        height: 31px;
        display: block;
        overflow: hidden;
        border-radius: 0px;
        text-decoration: none;
        line-height: 24px;
    }
    .chosen-single div{
        position: absolute;
        top: 0;
        right: 0;
        display: block;
        width: 18px;
        height: 100%;
    }
    .chosen-single div b{
        display: block;
        width: 100%;
        height: 100%;
    }
    .chosen-drop{
        border: 1px solid #cccccc;
        border-top: none 0;
        margin-top: -1px;
        border-radius: 0 0 4px 4px;
        background-clip: padding-box;
        position: absolute;
        top: 100%;
        left: -9999px;
        z-index: 1010;
        width: 100%;
    }
    .form_element{
        display: block;
        margin-top: 5px;
        overflow: hidden;
        position: relative;
    }
    /* .form_element input{
        position: absolute;
        top: 3px;
        left: 1px;
        width: 0;
        z-index: -1;
        visibility: hidden;
    } */
    input[type=checkbox]{
        height: 13px;
        vertical-align: top;
    }
    .check_s{
        min-width: 13px;
    }
    #sample6_postcode2{
        float: left;
        width: 190px;
    }
    .address_input{
        float: left;
        width: 72%;
    }
    .address_input input{
        margin: 10px 0 0 0 ;
    }
    .address_postcode input{
        width: 190;
    }
    .btn_center_box{
        margin: 35px 0 0 0;
        text-align: center;
        font-size: 16px;
    }
    .btn_center_box button{
        margin-left: 30px;
        vertical-align: middle;
    }
    .btn_member_cancel{
        width: 200px;
        height: 60px;
        border: 1px solid black;
        background-color: white;
    }
    .btn_center_box button{
        margin-left: 50px;
        vertical-align: middle;
    }
    .btn_confirm{
        width: 200px;
        height: 60px;
        border: 1px solid black;
        background-color: white;
    }
   #zonecode{
       width: 220px;
   }
   .btn_post_search{
       margin-left: 16px;
   }
   .form-element2{
       width: 300px;
   }
</style>

<%@ include file="/views/common/footer.jsp"%>