<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.address.model.vo.Address" %>
<%
	Address a=(Address)request.getAttribute("address");
%>
    
<%@ include file="/views/common/header.jsp"%>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<section>
    <div id="addrEnroll_box">
        <h2 class="pe mgbt0" style="font-size:30px;" >ADDRESS</h2>
        <span class="pb mgbt0" style="font-size:15px;">배송지 수정</span><br>
        <span class="pa" id="span2">* 필수 입력 사항입니다.</span>
        <br><hr>
        <form method="post" action="<%=request.getContextPath() %>/myPage/modifyAddressEnd" onsubmit="return fn_address_enroll_validate();">
        	<input type="hidden" name="userId" value="<%=loginUser.getUserId()%>">
        	<input type="hidden" name="addrNo" value="<%=a.getAddrNo()%>">
	        <table id="addrEnroll_table" class="pc">
	            <tr>
	                <td>배송지명 <span style="color:red;">*</span></td>
	                <td><input type="text" name="addName" size=50 required value="<%=a.getAddName() %>" maxlength="7"></td>
	            </tr>
	            <tr>
	                <td>수령인 <span style="color:red;">*</span></td>
	                <td><input type="text" name="receiverName" size=50 required value="<%=a.getReceiverName()%>"></td>
	            </tr>
	            <tr>
	                <td>주소 <span style="color:red;">*</span></td>
	                <td>
						<div class="address_postcode">
	                        <input type="text" name="zonecode" id="sample6_postcode" placeholder="우편번호" readonly>
	                        <input type="button" id="btnPostcode" class="btn_post_search pointer" value="우편번호 찾기" onclick="sample6_execDaumPostcode()">
	                    </div>
	                    <div class="address_input">
	                        <input type="text" name="address" id="sample6_address" placeholder="주소" readonly><br>
	                        <input type="text" name="addressSub" id="sample6_detailAddress" placeholder="상세주소" required>
	                    </div>
					</td>
	            </tr>
	            <tr>
	                <td>일반전화</td>
	                <td><input type="text" name="addPhone" size=50 <%if(a.getAddPhone()!=null){%>value="<%=a.getAddPhone()%>"<%}else{%> placeholder="'-' 제외"<%}%>></td>
	            </tr>
	            <tr>
	                <td>휴대전화 <span style="color:red;">*</span></td>
	                <td><input type="text" name="addCellPhone" size=50 required value="<%=a.getAddCellPhone() %>" placeholder="'-' 제외" maxlength="11"></td>
	            </tr>
	        </table>
	        <hr>
	        <div id="addrEnroll_btn">
	            <div>
	                <input type="checkbox" id="defaultAddr" name="defaultAddr" class="pointer" <%if(a.getDefaultAddr()==1){%> checked <%}%>>
	                <label for="defaultAddr" class="pa pointer">기본 배송지로 설정</label><br>
	            </div><br>
	            <div>
	                <input type="submit" value="등록" class="pc pointer">
	                <input type="reset" value="취소" class="pc pointer" onclick="fn_returnAddressView();">
	            </div>
	        </div>
        </form>
    </div>
</section>

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
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("sample6_address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
	}
	
	const fn_address_enroll_validate=()=>{
		if($("#sample6_postcode").val().length==0||$("sample6_address").val().length==0){
			alert("필수 입력 사항입니다.");
			$("#sample6_postcode").focus();
			return false;
		}
	}
	
	const fn_returnAddressView=()=>{
		location.replace("<%=request.getContextPath()%>/myPage/addressView?userId=<%=loginUser.getUserId() %>");
	}
</script>

<style>
    #addrEnroll_box{
        width:1000px;
        margin:0px auto;
    }
    .mgbt0{
        margin-bottom: 0;
        margin-top:0px;
    }
    #span2{
        font-size: 15px;
        color:red;
        float:right;
    }
    #addrEnroll_table{
        margin: 0 0 0 20px;
        width:600px;
        height:300px;
    }
    #addrEnroll_table input:not(input[type=button]){
        height:20px;
    }
    #addrEnroll_btn{
        display:flex;
        flex-direction: column;
        align-items: flex-end;
    }
    #addrEnroll_btn>div{
        margin: 0 0 10px 0;
    }
    #addrEnroll_btn>div>input[type=submit]{
        border: 1px gray solid;
        width:100px;
        height:40px;
        text-align: center;
        background-color: black;
        color:white;
        font-size: 17px;
        margin-right:5px
    }
    #addrEnroll_btn>div>input[type=reset]{
        border: 1px gray solid;
        width:100px;
        height:40px;
        text-align: center;
        font-size: 17px;
        background-color: white;
    }
    .address_input>input{
		width:348.8px;
		margin-top:4px;
	}
	.btn_post_search{
		border: 1px gray solid;
		height:31px;
		text-align: center;
		background-color: whiteoat;
		position:relative;
		top:1px;
	}
	.pointer:hover{
		cursor:pointer;
	}
</style>

<%@ include file="/views/common/footer.jsp"%>