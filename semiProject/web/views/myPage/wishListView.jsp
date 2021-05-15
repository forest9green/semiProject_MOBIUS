<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="wish_box" class="box">
        <p><h2 class="pe">WISH LIST</h2></p>
            <div id="wish_table_box">
                <table id="wish_table" class="pa" border=1>
                    <thead>
                        <tr>
                            <th width=50><input type="checkbox"></th>
                            <th width=250>이미지</th>
                            <th width=400>상품명</th>
                            <th width=120>판매가</th>
                            <th width=170>선택</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--
                            값이 없으면 <tr>보유하고 계신 위시리스트 내역이 없습니다.</tr> 추가
                            값이 있으면 출력하되, 튜플이 10개 이상일 경우 페이징처리 되도록 처리해야 함
                        -->
                        <tr>
                            <td><input type="checkbox"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <ul id="wish_detail_btn">
                                    <li><button>주문하기</button></li>
                                    <li><button>장바구니 담기</button></li>
                                    <li><button>삭제</button></li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="w_pagebar" class="pagebar">
                <span><a href="">1</a></span>
                <!--페이징 처리 할지말지 고민-->
                <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
            </div>
            <div id="wish_btn">
                <button type="button" class="pb">삭제</button>
                <button type="button" class="pb blackbtn">선택 상품 주문</button>
                <button type="button" class="pb blackbtn">전체 상품 주문</button>
            </div>
    </div>
</section>

<style>
    #wish_box{
        width:1000px;
        height:800px;
        margin:50px auto;
    }
    #wish_box>p+h2{
        font-size: 30px;
    }
    #wish_table_box{
        min-height: 180px;
    }
    #wish_table{
        margin:30px 0 10px 0;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #wish_table tr{
        height:40px;
    }
    #wish_detail_btn{
        list-style-type: none;
        padding:0;
        margin:6px 0 6px 0;
    }
    #wish_detail_btn>li>button{
        border: 1px gray solid;
        margin: 4px 0 4px 0;
        width:100px;
        height:27px;
        text-align: center;
        background-color: white;
    }
    #wish_btn button:first-child{
        border: 1px gray solid;
        width:50px;
        height:30px;
        text-align: center;
        background-color: white;
    }
    .blackbtn{
        position: relative;
        left:698px;
        border: 1px gray solid;
        width:120px;
        height:40px;
        text-align: center;
        color:white;
        background-color: black;
    }
    #wish_box>p+h2{
        font-size: 30px;
    }
    .pagebar{
        width: 100px;
        margin: 10px auto;
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