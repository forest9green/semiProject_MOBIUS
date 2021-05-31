<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.wish.model.vo.WishProduct, java.text.NumberFormat" %>
<%
	List<WishProduct> wishs=(List<WishProduct>)request.getAttribute("wishs");
	NumberFormat nf = NumberFormat.getInstance();
%>
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="wish_box" class="box">
        <p><h2 class="pe">WISH LIST</h2></p>
            <div id="wish_table_box">
                <table id="wish_table" class="pa" border=1>
                    <thead>
                        <tr>
                            <th width=50><input type="checkbox" id="checkall"></th>
                            <th width=250>이미지</th>
                            <th width=400>상품명</th>
                            <th width=120>가격</th>
                            <th width=170>선택</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--
                            값이 없으면 <tr>보유하고 계신 위시리스트 내역이 없습니다.</tr> 추가
                            값이 있으면 출력하되, 튜플이 10개 이상일 경우 페이징처리 되도록 처리해야 함
                        -->c
                        <tr>
                            <td><input type="checkbox" name="chk"></td>
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
                <span>1</span>
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

<script>
	$(document).ready(function(){
	    $("#checkall").click(function(){
	        //상단의 체크박스 클릭 여부에 따라 전체체크/해제 로직
	        if($("#checkall").prop("checked")){
	            $("input[name=chk]").prop("checked",true);
	        }else{
	            $("input[name=chk]").prop("checked",false);
	        }
	    })
	});
</script>

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
    /*pageBar 디자인*/
    .pagebar{
        margin: 50px auto;
        display:flex;
        justify-content: center;
    }
    .pagebar>span, .pagebar>a{
        margin:0 6px 0 6px;
    }
    .pagebar>a{
        text-decoration: none;
        color:black;
    }
    .pagebar>span{
        color:rgba(123, 209, 159);
    }
    .pagebar>a:hover{
        color:rgba(123, 209, 159);
    }
    body{
		margin:0px;
	}
</style>

<%@ include file="/views/common/footer.jsp"%>