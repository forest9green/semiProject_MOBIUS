<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.product.model.vo.Product, java.text.NumberFormat" %>
<%
	String category=(String)request.getAttribute("category");
	List<Product> products=(List<Product>)request.getAttribute("products");
	String pageBar=(String)request.getAttribute("pageBar");
	String orderBy=request.getParameter("pListSelect")==null?"":request.getParameter("pListSelect");
%>
<%@ include file="/views/common/header.jsp"%>
<%
	String userId="";
	if(loginUser!=null){
		userId=loginUser.getUserId();
	}
	NumberFormat nf = NumberFormat.getInstance();
%>

<section>
	<h1 id="pTitle" class="pe"><%=category %></h1>
	<div id="wh_sp_v_top">
		<form id="pSelectFrm" action="" method="post">
			<select id="pListSelect" name="pListSelect" class="pb">
			    <option value="P_ENROLL_DATE DESC" <%=orderBy.equals("P_ENROLL_DATE DESC")?"selected":"" %>>최신순</option>
			    <option value="R_STAR DESC" <%=orderBy.equals("R_STAR DESC")?"selected":"" %>>인기순</option>
			    <option value="PRICE" <%=orderBy.equals("PRICE")?"selected":"" %>>낮은 가격순</option>
			    <option value="PRICE DESC" <%=orderBy.equals("PRICE DESC")?"selected":"" %>>높은 가격순</option>
			</select>
		</form>
	   </div>
	
		<div id="sproducts">
		   	<%if(products!=null){
		    	if(!products.isEmpty()) {
		    		for(Product p:products) {%>
				        <div class="pro_box">
				        	<a href="<%=request.getContextPath()%>/product/productDetail?pCode=<%=p.getpCode()%>">
					            <img src="<%=request.getContextPath()%>/images/product/<%=p.getCateCode()%>/<%=p.getpCode()%>-1.jpg">
				        	</a>
				            <div class="sp_container">
				                <div class="pro_btn">
				                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="wish" viewBox="0 0 16 16" title="<%=p.getpCode()%>">
				                        <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"></path>
				                    </svg>
				                </div>
				                <div class="sp_name_price">
				                    <a href="<%=request.getContextPath()%>/product/productDetail?pCode=<%=p.getpCode()%>">
				                        <div class="sprodcuts-dt">
				                            <p class="pb pName"><%=p.getpName() %></p>
				                        </div>
				                    </a>
				                    <div class="pPrice">
				                        <p1 class="pb"><%=nf.format(p.getPrice()) %>원</p1>
				                    </div>
				                </div>
				                <div class="pro_btn">
				                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="cart" viewBox="0 0 16 16" title="<%=p.getpCode()%>">
				                        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
				                      </svg>
				                </div>
				            </div> 
				        </div>
		        	<%}
		        } else{ %>
		        	<div class="noP">상품이 없습니다.</div>
		        <%}
	     	}else{%>
	     		<div class="noP">세일 상품이 없습니다.</div>
	     	<%} %>
	   </div>
	   <div id="c_pagebar" class="pagebar">
	          <%=pageBar %>
	   </div>
</section>

<script>
	$("#pSelectFrm").change((e)=>{
		$("#pSelectFrm").attr("action","<%=request.getContextPath()%>/product/productList");
		$("#pSelectFrm").append($("<input>").attr({
			type:"hidden",name:"cPage",value:"<%=request.getParameter("cPage")%>"
		}));
		$("#pSelectFrm").append($("<input>").attr({
			type:"hidden",name:"category",value:"<%=category %>"
		}));
		$("#pSelectFrm").submit();
	});
	
    $(".wish").click((e)=>{
    	if(<%=loginUser==null%>){
    		location.assign("<%=request.getContextPath()%>/views/member/loginPage.jsp");
    		
    	}else{
		   	$.ajax({
		    	url:"<%=request.getContextPath()%>/myPage/addWishList",
		    	data:{
		    		"userId":'<%=userId%>',
		    		"pCode":$($(e.target)[0]).attr("title")
		    		},
		  			success:data=>{
		  				if(data>0){
			  				if(confirm("위시리스트에 추가되었습니다. 위시리스트로 이동하시겠습니까?")){
			  					location.assign("<%=request.getContextPath()%>/myPage/wishList?userId=<%=userId%>");
			  				}
		  				}else{
		  					alert("이미 위시리스트에 추가된 상품입니다.");
		  				}
		  			}
		   	})
    	}
    });
	
    $(".cart").click((e)=>{
    	if(<%=loginUser==null%>){
    		location.assign("<%=request.getContextPath()%>/views/member/loginPage.jsp");
    		
    	}else{
		   	$.ajax({
		    	url:"<%=request.getContextPath()%>/myPage/addCart",
		    	data:{
		    		"userId":'<%=userId%>',
		    		"pCode":$($(e.target)[0]).attr("title")
		    		},
		  			success:data=>{
		  				if(data>0){
			  				if(confirm("장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?")){
			  					location.assign("<%=request.getContextPath()%>/myPage/cart?userId=<%=userId%>");
			  				}
		  				}
		  			}
		   	})
    	}
    });
</script>

<style>
 #pTitle{
     font-size: 35px;
     margin-top:0px;
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
 	width:300px;
     display:flex;
    align-items: center;
    justify-content: space-between;
 }
 .pPrice{
     text-align: center;
 }
 .pName{
     text-align: center;
     text-decoration: none;
 }
 .pro_btn{
 	position:relative;
 }     
 #sproducts{
     display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;
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
 .pro_box{
 	margin:50px 0 100px 0;
 	display: flex;
    flex-direction: column;
    align-items: center;
 }
 .pro_box>a>img {
 	margin:0 11px 0 11px;
 	padding:0 25px 0 25px;
     width: 300px;
     height: 300px;
     text-align: center;
     }   
 .noP{
 	margin:0 auto;
 }
 .cart:hover{
	cursor:pointer; 
}
.wish:hover{
	cursor:pointer; 
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