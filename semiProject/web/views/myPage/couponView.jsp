<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="coupon_box" class="box">
        <p><h2 class="pe">COUPON LIST</h2></p>
        <div id="coupon_table_box">
            <table id="coupon_table" class="pa" border>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th width=450>쿠폰명</th>
                        <th>구매금액</th>
                        <th>결제수단</th>
                        <th>할인율</th>
                        <th>유효기간</th>
                    </tr>
                </thead>
                <tbody>
                    <!--
                        값이 없으면 <tr>보유하고 계신 쿠폰 내역이 없습니다.</tr> 추가
                        값이 있으면 출력하되, 튜플이 10개 이상일 경우 페이징처리 되도록 js 처리해야 함
                    -->
                </tbody>
            </table>
        </div>
        <div id="c_pagebar" class="pagebar">
            <span><a href="">1</a></span>
            <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
        </div>
    </div>
</section>

<style>
    #coupon_box{
        width:1000px;
        height:800px;
        margin:50px auto;
    }
    #coupon_table_box{
        min-height: 200px;
    }
    #coupon_table{
        margin-top: 30px;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #coupon_table tr{
        height:40px;
    }
    #coupon_box>p+h2{
        font-size: 30px;
    }
    .pagebar{
        width: 100px;
        margin: 50px auto;
    }
    .pagebar>span{
        margin:0 6px 0 6px;
    }
    .pagebar>span a{
        text-decoration: none;
    }
    .pagebar span>a:hover{
        color:rgba(123, 209, 159, 0.856);
        
    }
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>