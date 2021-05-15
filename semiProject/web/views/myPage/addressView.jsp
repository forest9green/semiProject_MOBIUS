<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="addr_box" class="box">
        <p><h2 class="pe">ADDRESS</h2></p>
        <div id="addr_table_box">
            <table id="addr_table" class="pb" border>
                <thead>
                    <tr>
                        <th><input type="checkbox"></th><!--일괄 체크 처리-->
                        <th>기본 배송지</th>
                        <th>배송지명</th>
                        <th>수령인</th>
                        <th>일반전화</th>
                        <th>휴대전화</th>
                        <th>우편번호</th>
                        <th width=420>주소</th>
                    </tr>
                </thead>
                <tbody>
                    <!--회원가입할 때 입력한 배송지-->
                    <tr>
                        <td><input type="checkbox"></td>
                        <td><button type="button">지정</button></td><!-- 클릭 시 기본 배송지로 지정하시겠습니까? 메세지, 확인 누르면 누르면 클래스 blackback이 추가되고, 기본 배송지로 지정됨(기본 배송지는 1개만 되니까 다른 기본 배송지가 있을 경우 해제됨)-->
                        <td>미지정</td>
                        <td>이름</td>
                        <td>000-</td>
                        <td>01000000000</td>
                        <td>우편번호</td>
                        <td>주소</td>
                    </tr>
                    <!--
                        추가로 등록된 배송지가 있을 경우 tr이 추가되며,
                        10개 단위로 페이징 처리함
                    -->
                </tbody>
            </table>
            <div id="addr_btn">
                <button type="button" class="pb">삭제</button>
                <button type="button" class="pb">배송지 등록</button>
            </div>
        </div>
        <div id="a_pagebar" class="pagebar">
            <span><a href="">1</a></span>
            <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
        </div>
        <div id="addr_warn">
            <p class="pb">
                *배송지 유의사항*<br>
                1. 기본 배송지는 1개만 저장됩니다. 
            </p>
        </div>
    </div>
</section>

<style>
    #addr_box{
        width:1000px;
        height:800px;
        margin:50px auto;
    }
    #addr_table_box{
        min-height: 200px;
    }
    #addr_table{
        margin:30px 0 10px 0;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #addr_table tr{
        height:40px;
    }
    #addr_table>tbody button[type=button]{
        border: 1px gray solid;
    }
    .blackback{
        background-color: black;
        color:white;
    }
    #addr_btn button:first-child{
        border: 1px gray solid;
        width:50px;
        height:30px;
        text-align: center;
        background-color: white;
    }
    #addr_btn button:last-child{
        position: relative;
        left:853px;
        border: 1px gray solid;
        width:90px;
        height:40px;
        text-align: center;
        color:white;
        background-color: black;
    }
    #addr_box>p+h2{
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
    #addr_warn{
        width:945px;
        border: black 1px dotted;
        padding:15px 20px 15px 20px;
    }
    #addr_warn>p{
        margin:0px;
    }
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>