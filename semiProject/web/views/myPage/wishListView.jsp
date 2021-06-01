<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.wish.model.vo.WishProduct, java.text.NumberFormat" %>
<%
	List<WishProduct> wishs=(List<WishProduct>)request.getAttribute("wishs");
	String pageBar=(String)request.getAttribute("pageBar");
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
                        <%if(!wishs.isEmpty()) {
                        	for(WishProduct wp:wishs) {%>
		                        <tr>
		                            <td><input type="checkbox" name="chk" value="<%=wp.getpCode()%>"></td>
		                            <td><img src="<%=request.getContextPath() %>/images/product/<%=wp.getpCode().substring(0,2)%>/<%=wp.getpCode()%>-1.jpg"></td>
		                            <td><%=wp.getpName() %></td>
		                            <td><%=nf.format(wp.getPrice()) %></td>
		                            <td>
		                                <ul id="wish_detail_btn">
		                                    <li><button class="orderOne" value="<%=wp.getpCode() %>">주문하기</button></li>
		                                    <li><button class="cart" title="<%=wp.getpCode()%>">장바구니 담기</button></li>
		                                    <li><button class="deleteWish" value="<%=wp.getpCode()%>">삭제</button></li>
		                                </ul>
		                            </td>
		                        </tr>
	                        <%}
                       	} else {%>
                       		<tr>
                       			<td colspan="5">위시리스트 내역이 없습니다.</td>
                       		</tr>
                       	<%} %>
                    </tbody>
                </table>
            </div>
            <div>
            </div>
            <div id="wish_btn">
                <button type="button" id="deletebtn" class="pb">삭제</button>
                <button type="button" id="choiceOrder" class="pb blackbtn">선택 상품 주문</button>
                <button type="button" id="allOrder" class="pb blackbtn">전체 상품 주문</button>
            </div>
            <div id="w_pagebar" class="pagebar">
                <%=pageBar %>
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
	
	$(".cart").click((e)=>{
    	$.ajax({
	    	url:"<%=request.getContextPath()%>/myPage/addCart",
	    	data:{
	    		"userId":'<%=loginUser.getUserId()%>',
	    		"pCode":$($(e.target)[0]).attr("title")
	    		},
	  			success:data=>{
	  				if(data>0){
		  				if(confirm("장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?")){
		  					location.assign("<%=request.getContextPath()%>/myPage/cart?userId=<%=loginUser.getUserId()%>");
		  				}
	  				}
	  			}
	   	})
    });
	
	$(".deleteWish").click((e)=>{
		const pCode=$(e.target).val();
		location.replace('<%=request.getContextPath()%>/myPage/deleteWish?userId=<%=loginUser.getUserId()%>&pCode='+pCode);
	})
	
	$("#deletebtn").click((e)=>{
		const checkValue = $("input[name=chk]:checked").length;
	    let checkPCodes = new Array(checkValue);
	    for(let i=0; i<checkValue; i++){                          
	    	checkPCodes[i] = $("input[name=chk]:checked")[i].value;
	    }
	    location.replace('<%=request.getContextPath()%>/myPage/deleteWish?userId=<%=loginUser.getUserId()%>&pCodes='+checkPCodes);
	})
	
	$(".orderOne").click((e)=>{
		const pCode=$(e.target).val();
		location.assign('<%=request.getContextPath()%>/myPage/order?userId=<%=loginUser.getUserId()%>&pCode='+pCode);
	})
	
	$("#choiceOrder").click((e)=>{
		const checkValue = $("input[name=chk]:checked").length;
	    let checkPCodes = new Array(checkValue);
	    for(let i=0; i<checkValue; i++){                          
	    	checkPCodes[i] = $("input[name=chk]:checked")[i].value;
	    }
	    location.assign('<%=request.getContextPath()%>/myPage/order?userId=<%=loginUser.getUserId()%>&pCodes='+checkPCodes);
	})
	
	$("#allOrder").click((e)=>{
		location.assign('<%=request.getContextPath()%>/myPage/order?userId=<%=loginUser.getUserId()%>');
	})
</script>

<style>
    #wish_box{
        width:1000px;
        margin:0px auto;
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
    #wish_table tr>td>img{
    	width:200px;
		height:160px;
		object-fit:cover;
		vertical-align:middle;
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
	button:hover{
		cursor:pointer;
	}
</style>

<%@ include file="/views/common/footer.jsp"%>