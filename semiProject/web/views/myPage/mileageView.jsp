<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="mile_box">
        <p><h2 class="pe">MILEAGE</h2></p>
        <div id="mile_table_box">
            <div id="total_mile">
                <div>
                    <span class="pd">사용 가능한 적립금</span>
                    <span class="pa">0000원</span>
                </div>
            </div>
            <table id="mile_table" class="pa" border>
                <thead>
                    <tr>
                        <th width=225>주문 번호</th>
                        <th width=180>주문 날짜</th>
                        <th width=145>적립금</th>
                        <th width=450>내용</th>
                    </tr>
                </thead>
                <tbody>
                    <!--
                        값이 없으면 <tr>보유하고 계신 적립금 내역이 없습니다.</tr> 추가
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
    #mile_box{
        width:1000px;
        height:800px;
        margin:50px auto;
    }
    #mile_table_box{
        min-height: 270px;
    }
    #total_mile{
        margin-top: 30px;
        width:1000px;
        height:70px;
        border:rgb(36, 36, 36) solid 1px;
    }
    #total_mile>div{
        display:flex;
        justify-content: center;
        margin: 23.4px 0 23.4px 0;
    }
    #total_mile>div>span{
        margin:0 15px 0 15px;
        font-size: 18px;
    }
    #mile_table{
        margin-top: 10px;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #mile_table tr{
        height:40px;
    }
    #mile_box>p+h2{
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