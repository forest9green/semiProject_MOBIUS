<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, com.cart.model.vo.CartProduct, java.text.NumberFormat, com.address.model.vo.Address, com.coupon.model.vo.Coupon" %>
<%
	List<CartProduct> cartProducts=(List<CartProduct>)request.getAttribute("cartProducts");
	int totalPrice=0;
	int totalDeliveryFee=10000;
	if(!cartProducts.isEmpty()) {
		for(CartProduct cp:cartProducts){
			totalPrice+=cp.getPrice()*cp.getAmount();
		}
		for(CartProduct cp:cartProducts){
			if(cp.getDeliveryFee()==59000){
				totalDeliveryFee=59000;
			}
		}
	}
	NumberFormat nf = NumberFormat.getInstance();
	int num=0;
	List<Address> addresses=(List<Address>)request.getAttribute("addresses");
	List<Coupon> coupons=(List<Coupon>)request.getAttribute("coupons");
	String path=(String)request.getAttribute("path");
%>
<%@ include file="/views/common/header.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<section>
    <div id="order_box">
        <h2 class="pe mgbt0" style="font-size:30px;" >ORDER FORM</h2><br>
        <span class="pb"><h3>주문 상품</h3></span>
        <form method="post" action="<%=request.getContextPath()%>/myPage/orderEnd?userId=<%=loginUser.getUserId()%>">
	        <table id="pTable" class="pb" border="1">
	            <thead>
	                <tr>
	                    <th width=50>번호</th>
	                    <th width=130>이미지</th>
	                    <th width=200>상품명</th>
	                    <th width=50>수량</th>
	                    <th width=130>상품금액</th>
	                    <th width=130>배송비</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<% if(!cartProducts.isEmpty()) {
	            		for(CartProduct cp:cartProducts) {
	            			++num;%>
			                <tr>  
			                    <td><%=num %></td>                           
			                    <td>
			                        <img class="pImg" src="<%=request.getContextPath() %>/images/product/<%=cp.getpCode().substring(0,2)%>/<%=cp.getpCode()%>-1.jpg">   
			                    </td>
			                    <td><%=cp.getpName() %></td>
			                    <input type="hidden" name="pCode" value="<%=cp.getpCode() %>">
			                    <td><%=cp.getAmount() %></td>
			                    <input type="hidden" name="amount" value="<%=cp.getAmount() %>">
			                    <td><%=nf.format(cp.getPrice()*cp.getAmount()) %>원</td>
			                    <td><%=nf.format(cp.getDeliveryFee()) %>원</td>
			                </tr>
		                <%}
	            	}%>
	            </tbody>    
	        </table> 
            <div id="orderDelivery">
                <div>
                    <span class="pb"><h3>주문 정보</h3></span>
                    <span class="pa" id="span2">* 필수 입력 사항입니다.</span>
                    <table id="orderTable" class="pc">
                        <tr>
                            <td>이름 <span style="color:red;">*</span></td>
                            <td><input type="text" name="orderName" size=40 required></td>
                        </tr>
                        <tr>
                            <td>휴대전화 <span style="color:red;">*</span></td>
                            <td><input type="text" name="orderCellPhone" size=40 required placeholder="'-' 제외"></td>
                        </tr>
                        <tr>
                            <td>일반전화</td>
                            <td><input type="text" name="orderPhone" size=40 placeholder="'-' 제외"></td>
                        </tr>
                    </table>
                </div>
                <div>
                    <span class="pb"><h3>배송 정보</h3></span>
                    <span class="pa" id="span2">* 필수 입력 사항입니다.</span>
                    <table id="DeliveryTable" class="pc">
                        <tr>
                            <td>배송지 선택</td>
                            <td>
                                <select class="selectAdd po" name="selectAdd">
                                    <option value=null>배송지 선택</option>
                                    <%if(!addresses.isEmpty()) {
                                    	for(Address a:addresses) {%>
                                    		<option value="<%=a.getAddrNo()%>"><%=a.getAddName() %></option>
                                    	<%}
                                   	}%>
                                </select>
                            </td>
                            <!--배송지 선택했을 경우 수령인, 주소, 일반전화, 휴대전화 값이 자동으로 입력되게 함-->
                        </tr>
                        <tr>
                            <td>수령인 <span style="color:red;">*</span></td>
                            <td><input type="text" name="receiverName" size=40 required></td>
                        </tr>
                        <tr>
                            <td>주소 <span style="color:red;">*</span></td>
                            <td>
                                <div class="address_postcode">
                                    <input type="text" name="zonecode" id="sample6_postcode" placeholder="우편번호" readonly>
                                    <input type="button" id="btnPostcode" class="btn_post_search po" value="우편번호 찾기" onclick="sample6_execDaumPostcode()">
                                </div>
                                <div class="address_input">
                                    <input type="text" name="address" id="sample6_address" size=40 placeholder="주소" readonly><br>
                                    <input type="text" name="addressSub" id="sample6_detailAddress" size=40 placeholder="상세주소" required>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>휴대전화 <span style="color:red;">*</span></td>
                            <td><input type="text" name="deliveryCellPhone" required size=40 placeholder="'-' 제외" maxlength="11"></td>
                        </tr>
                        <tr>
                            <td>일반전화</td>
                            <td><input type="text" name="deliveryPhone" size=40 placeholder="'-' 제외"></td>
                        </tr>
                        <tr>
                        	<td>배송 요청 사항</td>
                        	<td><input type="text" name="orderMemo" size=40></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="payInfo">
                <span class="pb"><h3>결제 정보</h3></span>
                <table id="payTable"  class="pb" border="1">
                	<input type="hidden" name="oPPrice" value="<%=totalPrice %>">
                	<input type="hidden" name="oDeliveryFee" value="<%=totalDeliveryFee %>">
                	<input type="hidden" name="oDC">
                    <thead>
                        <tr style="height:35px">
                            <th>상품 금액</th>
                            <th>배송비</th>
                            <th>할인 금액</th>
                            <th>총 결제 금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr style="height:55px">
                            <td><%=nf.format(totalPrice) %>원</td>
                            <td>+ <%=nf.format(totalDeliveryFee) %>원</td>
                            <td id="discount">- 0원</td>
                            <td id="totalPay">= <%=nf.format(totalPrice+totalDeliveryFee) %>원</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <table id="discountTable">
                                    <tr>
                                        <td>적립 예정 금액</td>
                                        <td><%=nf.format(totalPrice*0.01) %>원</td>
                                    </tr>
                                    <tr>
                                        <td>적립금 사용</td>
                                        <td>
                                            <input type="number" id="mileage" name="useMileage" min="0" max="<%=loginUser.getMileage() %>"> 
                                            <span style="font-size: small;margin-left: 10px;">(총 사용 가능한 적립금: <b><%=nf.format(loginUser.getMileage()) %></b>원)</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>쿠폰</td>
                                        <td>
                                            <select class="selectCoupon po" name="useCoupon">
                                                <option value=null>쿠폰 선택</option>
                                                <%if(!coupons.isEmpty()) {
			                                    	for(Coupon c:coupons) {%>
			                                    		<option value="<%=c.getcNo()%>"><%=c.getcName() %></option>
			                                    	<%}
			                                   	}%>
                                            </select>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </tbody>    
                </table> 
            </div>
            <div class="payInfo">
                <span class="pb"><h3>결제 수단</h3></span>
                <table id="paymentTable"  class="pb">
                    <tr>
                        <td><label class="po"><input type="radio" name="payWay" value="무통장입금" class="po" required> 무통장 입금</label></td>
                        <td><label><input type="radio" name="payWay" value="네이버페이" disabled> 네이버 페이</label></td>
                        <td><label><input type="radio" name="payWay" value="카카오페이" disabled> 카카오 페이</label></td>
                        <td><label><input type="radio" name="payWay" value="무통장입금" disabled> 신용카드</label></td>
                    </tr>
                </table>
            </div>
            <div id="orderBtn">
                <div>
                    <input type="submit" value="결제하기" class="pc po">
                    <input type="button" class="returnPage" value="취소" class="pc po">
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
	
	$(".selectAdd").change((e)=>{
		const addrNo=$(e.target).val();
		$.ajax({
			url:'<%=request.getContextPath()%>/myPage/searchAddressAjax',
			data:{"addrNo":addrNo},
			success:data=>{
				$("input[name=receiverName]").val(data["receiverName"]);
				$("#sample6_postcode").val(data["postCode"]);
				$("#sample6_address").val(data["addr"].substring(0,data["addr"].indexOf("-")));
				$("#sample6_detailAddress").val(data["addr"].substring(data["addr"].indexOf("-")+1));
				$("input[name=deliveryCellPhone]").val(data["addCellPhone"]);
				$("input[name=deliveryPhone]").val(data["addPhone"]);
				$("input[name=receiverName]").attr("readonly",true);
				$("#sample6_postcode").attr("readonly",true);
				$("#sample6_address").attr("readonly",true);
				$("#sample6_detailAddress").attr("readonly",true);
				$("input[name=deliveryCellPhone]").attr("readonly",true);
				$("input[name=deliveryPhone]").attr("readonly",true);
				$("#btnPostcode").attr("disabled",true);
			}
		})
	})
	
	let mileage=0;
	let couponDC=0;
	const totalPrice=<%=totalPrice%>;
	const pad=<%=totalPrice+totalDeliveryFee%>;
	let totalDC=0;
	$("#mileage").change((e)=>{
		mileage=$(e.target).val();
		totalDC=Number(mileage)+totalPrice*couponDC;
		$("#discount").html(- totalDC+"원");
		$("#totalPay").html("= "+(pad-totalDC)+"원");
		$("input[name=oDC]").val(totalDC);
		$("input[name=oTotalPrice]").val(pad-totalDC);
	})
	
	$(".selectCoupon").change((e)=>{
		const cNo=$(e.target).val();
		$.ajax({
			url:'<%=request.getContextPath()%>/myPage/searchCouponAjax',
			data:{"cNo":cNo},
			success:data=>{
				couponDC=data["cDiscount"];
				totalDC=Number(mileage)+totalPrice*couponDC;
				$("#discount").html(- totalDC+"원");
				$("#totalPay").html("= "+(pad-totalDC)+"원");
				$("input[name=oDC]").val(totalDC);
				$("input[name=oTotalPrice]").val(pad-totalDC);
			}
		})
	})
	
	$(".returnPage").click((e)=>{
		location.replace("<%=request.getContextPath()+path%>");
	})
</script>

<style>
    #order_box{
        width:1000px;
        margin:0px auto;
    }
    .mgbt0{
        margin: 0;
    }
    #span2{
        font-size: 15px;
        color:red;
        float:right;
    }
    #pTable{
        width:100%;
        border-collapse:collapse;
        text-align: center;
        border:1px solid whitesmoke;
    }
    #pTable>thead>tr{
        background-color: gainsboro;
    }
    #pTable .pImg{
        width:100px;
        height:80px;
        object-fit:cover;
        vertical-align:middle;
    }
    #orderDelivery{
        display: flex;
        justify-content: space-between;
        margin-top: 80px;
    }
    #orderDelivery table>tbody>tr>td:first-child{
        width:130px;
    }
    #orderDelivery input{
        margin-top:10px;
        height:25px;
    }
    .selectAdd{
        margin-top:10px;
        height:30px;
        width:200px;
    }
    .payInfo{
        margin-top: 80px;
    }
    #payTable{
        width: 100%;
        border-collapse: collapse;
        border:1px solid whitesmoke;
    }
    #payTable>thead>tr{
        background-color: gainsboro;
    }
    #payTable>tbody>tr{
        text-align: center;
    }
    #discountTable{
        text-align: start;
        padding:10px 10px 10px 20px;
        width:600px;
        height:80px;
    }
    .selectCoupon{
        height:22px;
        width:200px;
    }
    #paymentTable{
        width:700px;
        margin-bottom: 70px;
    }
    #orderBtn{
        display:flex;
        flex-direction: column;
        align-items: center;
    }
    #orderBtn{
        margin: 0 0 10px 0;
    }
    #orderBtn>div>input[type=submit]{
        border: 1px gray solid;
        width:160px;
        height:50px;
        text-align: center;
        background-color: black;
        color:white;
        font-size: 17px;
        margin-right:15px
    }
    #orderBtn>div>input[type=button]{
        border: 1px gray solid;
        width:160px;
        height:50px;
        text-align: center;
        font-size: 17px;
        background-color: white;
    }
    body{
        margin:0px;
    }
    .po{
    	cursor:pointer;
    }
</style>


<%@ include file="/views/common/footer.jsp"%>