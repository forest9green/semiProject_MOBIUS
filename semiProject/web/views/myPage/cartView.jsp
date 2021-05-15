<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="cart_box" class="box">
        <p><h2 class="pe">CART</h2></p>
            <div id="cart_table_box">
                <table id="cart_table" class="pa" border=1>
                    <thead>
                        <tr>
                            <th width=50><input type="checkbox"></th>
                            <th width=145>이미지</th>
                            <th>상품명</th>
                            <th width=85>가격</th>
                            <th width=80>수량</th>
                            <th width=85>적립금</th>
                            <th width=85>배송비</th>
                            <th width=85>합계</th><!--가격+배송비-->
                            <th width=120>선택</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--
                            값이 없으면 <tr>보유하고 계신 위시리스트 내역이 없습니다.</tr> 추가
                            값이 있으면 tr 추가하며 출력
                        -->
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <form action="">
                                    <input type="number" max="100" min="1" step="1" value=""><br>
                                    <input class="whitebtn" type="submit" value=전송><!--데이터는 String으로 넘어감-->
                                </form>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <ul id="cart_detail_btn">
                                    <li><button>주문하기</button></li>
                                    <li><button>삭제</button></li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="cart_btn1">
                <button type="button" class="pb">삭제</button>
            </div>
            <div id="price_box">
                <table id="price_table" class="pa" border>
                    <tr>
                        <th>총 상품금액</th>
                        <th>배송비</th>
                        <th>결제 예정 금액</th>
                    </tr>
                    <tr>
                        <td>000,000원</td>
                        <td>+ 00,000원</td>
                        <td>000,000원</td>
                    </tr>
                </table>
            </div>
            <div id="cart_btn2">
                <button type="button" class="pb blackbtn">선택 상품 주문</button>
                <button type="button" class="pb blackbtn">전체 상품 주문</button>
            </div>
    </div>
</section>

<style>
    #cart_box{
        width:1000px;
        height:800px;
        margin:50px auto;
    }
    #cart_box>p+h2{
        font-size: 30px;
    }
    #cart_table{
        margin:30px 0 10px 0;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #cart_table tr{
        height:40px;
    }
    #cart_detail_btn{
        list-style-type: none;
        padding:0;
        margin:6px 0 6px 0;
    }
    .whitebtn{
        border: 1px gray solid;
        text-align: center;
        background-color: white;
    }
    #cart_detail_btn>li>button{
        border: 1px gray solid;
        margin: 4px 0 4px 0;
        width:100px;
        height:27px;
        text-align: center;
        background-color: white;
    }
    #cart_btn1 button:first-child{
        border: 1px gray solid;
        width:50px;
        height:30px;
        text-align: center;
        background-color: white;
    }
    .blackbtn{
        position: relative;
        left:754px;
        border: 1px gray solid;
        width:120px;
        height:40px;
        text-align: center;
        color:white;
        background-color: black;
    }
    #price_table{
        margin:30px 0 10px 0;
        width:1000px;
        height:140px;
        text-align: center;
        border-collapse: collapse;
        margin-bottom: 10px;
    }
    #price_table th{
        font-size: 18px;
    }
    #price_table td{
        font-size: 16px;
    }
    #cart_box>p+h2{
        font-size: 30px;
    }
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>