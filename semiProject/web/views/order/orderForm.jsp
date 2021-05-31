<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="order_box">
        <h2 class="pe mgbt0" style="font-size:30px;" >ORDER FORM</h2><br>
        <span class="pb"><h3>주문 상품</h3></span>
        <table id="pTable" class="pb" border="1">
            <thead>
                <tr>
                    <th width=50>번호</th>
                    <th width=130>이미지</th>
                    <th widht=200>상품명</th>
                    <th width=50>수량</th>
                    <th width=130>상품금액</th>
                    <th width=130>배송비</th>
                </tr>
            </thead>
            <tbody>
                <tr>  
                    <td><!-- 넘버링 --></td>                           
                    <td>
                        <img class="pImg" src="">   
                    </td>
                    <td></td>
                    <td>1</td>
                    <td>100,000</td>
                    <td>1,000</td>
                </tr>
            </tbody>    
        </table> 
        <form>
            <div id="orderDelivery">
                <div>
                    <!--주문자-->
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
                    <!--배송지 정보-->
                    <span class="pb"><h3>배송 정보</h3></span>
                    <span class="pa" id="span2">* 필수 입력 사항입니다.</span>
                    <table id="DeliveryTable" class="pc">
                        <tr>
                            <td>배송지 선택</td>
                            <td>
                                <select class="selectAdd">
                                    <option selected>배송지 선택</option>
                                    <option>배송지1</option>
                                    <option>배송지2</option>
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
                                    <input type="button" id="btnPostcode" class="btn_post_search pointer" value="우편번호 찾기" onclick="sample6_execDaumPostcode()">
                                </div>
                                <div class="address_input">
                                    <input type="text" name="address" id="sample6_address" size=40 placeholder="주소" readonly><br>
                                    <input type="text" name="addressSub" id="sample6_detailAddress" size=40 placeholder="상세주소" required>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>휴대전화 <span style="color:red;">*</span></td>
                            <td><input type="text" name="addCellPhone" required size=40 placeholder="'-' 제외" maxlength="11"></td>
                        </tr>
                        <tr>
                            <td>일반전화</td>
                            <td><input type="text" name="delieveryPhone" size=40 placeholder="'-' 제외"></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="payInfo">
                <span class="pb"><h3>결제 정보</h3></span>
                <table id="payTable"  class="pb" border="1">
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
                            <td>00</td>
                            <td>00</td>
                            <td>00</td>
                            <td>00</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <table id="discountTable">
                                    <tr>
                                        <td>적립 예정 금액</td>
                                        <td>00</td>
                                    </tr>
                                    <tr>
                                        <td>적립금</td>
                                        <td>
                                            <input type="number" id="mileage"> <span style="font-size: small;margin-left: 10px;">(총 사용 가능한 적립금 :<b>0000</b>원)</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>쿠폰</td>
                                        <td>
                                            <select class="selectCoupon">
                                                <option selected>쿠폰 선택</option>
                                                <option>쿠폰1</option>
                                                <option>쿠폰2</option>
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
                        <td><label><input type="radio">무통장 입금</label></td>
                        <td><label><input type="radio" disabled>네이버 페이</label></td>
                        <td><label><input type="radio" disabled>카카오 페이</label></td>
                        <td><label><input type="radio" disabled>신용카드</label></td>
                    </tr>
                </table>
            </div>
            <div id="orderBtn">
                <div>
                    <input type="submit" value="결제하기" class="pc">
                    <input type="reset" value="취소" class="pc">
                </div>
            </div>
        </form>
    </div>
</section>
<!--section에 적용될 style, script 내용 넣어주세요-->
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
        width:100px;
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
        height:20px;
        width:200px;
    }
    #paymentTable{
        width:700px;
        margin-bottom: 70px;
    }
    #addrEnroll_table input:not(input[type=button]){
        height:20px;
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
    #orderBtn>div>input[type=reset]{
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
</style>

<%@ include file="/views/common/footer.jsp"%>