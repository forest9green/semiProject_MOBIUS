<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.product.model.vo.Product" %>
<%
	String category=(String)request.getAttribute("category");
	List<Product> products=(List<Product>)request.getAttribute("products");
	String pageBar=(String)request.getAttribute("pageBar");
%>
<%@ include file="/views/common/header.jsp"%>

<section>
   <h1 id="pTitle" class="pe"><%=category %></h1>
   <div id="wh_sp_v_top">
       <select id="pListSelect" class="pb">
           <option value="P_ENROLL_DATE DESC">최신순</option>
           <option value="R_STAR DESC">인기순</option>
           <option value="PRICE">낮은 가격순</option>
           <option value="PRICE DESC">높은 가격순</option>
       </select>
    </div>

    <div id="sproducts">
    	<%if(!products.isEmpty()) {
    		for(Product p:products) {%>
		        <div class="pro_box">
		            <img src="">
		            <div class="sp_container">
		                <div class="pro_btn">
		                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="wish" viewBox="0 0 16 16">
		                        <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"></path>
		                    </svg>
		                </div>
		                <div class="sp_name_price">
		                    <a href="">
		                        <div class="sprodcuts-dt">
		                            <p class="pb pName"><%=p.getpName() %></p>
		                        </div>
		                    </a>
		                    <div class="pPrice">
		                        <p1 class="pb"><%=p.getPrice() %>원</p1>
		                    </div>
		                </div>
		                <div class="pro_btn">
		                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="cart" viewBox="0 0 16 16">
		                        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
		                      </svg>
		                </div>
		            </div> 
		        </div>
        	<%}
        } else{ %>
        	<div class="noP">상품이 없습니다.</div>
        <%} %>
    </div>
    <div id="c_pagebar" class="pagebar">
           <%=pageBar %>
    </div>

</section>
<style>
 #pTitle{
     font-size: 35px;
 }
 #pListSelect{
     height:30px;
     font-size: 16px;
     width:120px;
 }
 .sp_name_price{
     display:flex;
     flex-direction: column;
 }
 .sp_name_price>a{
     text-decoration:none;
     color:black;
     height:40px;
 }
 .sp_container{
     display:flex;
    justify-content: center;
    align-items: center;
 }
 .pPrice{
     text-align: center;
 }
 .pName{
     text-align: center;
     text-decoration: none;
 }
 .pro_btn{
     margin:13px 40px 0 40px;
 }     
 #sproducts{
     display:flex;
     justify-content: space-between;
     margin-top:50px;
 }
 .spbtn-spsecondary {
     color: black;
     text-decoration: none;
     font-family: "Noto Sans KR";
     font-size: 15px;
 }
 #wh_sp_v_top{
   display: flex;
   margin-right: 20px;
   justify-content: flex-end;
 }
 .pro_box>img {
     margin-left: 12px;
     margin-right: 5px;
     padding-left: 25px;
     padding-right: 25px;
     width: 300px;
     height: 300px;
     text-align: center;
     }   
 .noP{
 	display:flex;
 	justify-content: center;
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
</style>

<script>
    $(".wish").click((e)=>{
        alert("위시리스트에 추가되었습니다.")
    })
    $(".cart").click((e)=>{
        alert("장바구니에 추가되었습니다.")
    })
    $(".sproductsbtn").hover((e)=>{
                $(e.target).css("background-color","rgb(233, 248, 240)");
            },(e)=>{
                $(e.target).css({"background-color":"white","font-size":"15px"});
            })
</script>

<%@ include file="/views/common/footer.jsp"%>  