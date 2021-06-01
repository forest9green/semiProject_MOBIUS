<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.product.model.vo.Product, java.text.NumberFormat" %>
<%
	Product p=(Product)request.getAttribute("product");
	String category=(String)request.getAttribute("category");
%>
<%@ include file="/views/common/header.jsp"%>
<%
	String userId="";
	if(loginUser!=null){
		userId=loginUser.getUserId();
	}
	NumberFormat nf = NumberFormat.getInstance();
%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<section>
    <div class="box">
        <div id="category_top">
            <a href="<%=request.getContextPath() %>/product/productList?category=전체"><div class="pb">전체</div></a>
            <div class="pa">　>　</div>
            <a href="<%=request.getContextPath() %>/product/productList?category=<%=category%>"><div class="pb"><%=category %></div></a>
        </div>
        <div id="product">
            <div id="product_top">
                <div class="img_div">
                    <img src="<%=request.getContextPath()%>/images/product/<%=p.getCateCode()%>/<%=p.getpCode()%>-1.jpg">
                </div>
                <div class="top_info">
                    <div class="pe" style="font-size:20px;"><%=p.getpName() %></div>
                    <div class="pd" style="font-size:25px;"><%=nf.format(p.getPrice()) %>원</div><br><br><hr>
                    <div class="pc" style="font-size:16px;float:left;">크기</div>
                    <div class="pc" style="font-size:16px;margin-left:100px;margin-bottom:10px"><%=p.getSize() %></div>
                    <div class="pc" style="font-size:16px;float:left;">배송비</div>
                    <div class="pc" style="font-size:16px;margin-left:100px;"><%=nf.format(p.getDeliveryFee()) %>원</div>
                    <div class="pb" style="font-size:13px;">조건에 따라 추가비용 발생 가능 (상품 상세 정보 참고)</div><hr>
                    <div>
                        <button class="pc wish" style="width:130px;" title="<%=p.getpCode()%>">위시리스트에 추가</button>
                        <button class="pc cart" style="width:120px;" title="<%=p.getpCode()%>">장바구니에 담기</button>
                        <button class="pc orderOne" style="width:125px;" value="<%=p.getpCode() %>">바로 구매</button>
                    </div>
                </div>
            </div>
            <div id="product_bottom">
                <div class="info_menu">
                    <a href="#pInfo"><div class="pd word6">DETAIL</div></a>
                    <a href="#pReview"><div class="pd word6">REVIEW</div></a>
                    <a href="#pBoard"><div class="pd word6">Q&A</div></a>
                </div>
                <div id="pInfo">
                    <h3 class="dTitle pd" style="margin-top:0px">DETAIL</h3>
                    <div id="pInfoPhoto">
                    	<div class="pd" style="font-size:20px;"><%=p.getpName() %></div>
                    	<div class="pa"><%=p.getSize() %></div><br>
                    	<img src="<%=request.getContextPath()%>/images/product/<%=p.getCateCode()%>/<%=p.getpCode()%>-1.jpg"><br>
                    	<img src="<%=request.getContextPath()%>/images/product/<%=p.getCateCode()%>/<%=p.getpCode()%>-2.jpg"><br>
                    	<img src="<%=request.getContextPath()%>/images/product/<%=p.getCateCode()%>/<%=p.getpCode()%>-3.jpg">
                    </div>
                </div>

                <div id="pReview">
                    <h3 class="dTitle pd">REVIEW</h3>
                    <div class='RatingStar'>
                        <div class='RatingScore'>
                            <div class='outer-star'><div class='inner-star'></div></div>
                            <div class="star pd numberRating">5.0</div>
                        </div>
                    </div>
                    
                    <div class="review1">
                        <div class="review_title pd">리뷰 제목</div>
                        <div class="star_date">
                            <div class='outer-star' style="font-size:13px;float:left;"><div class='inner-star'></div></div>
                            <div class="write_date pb" style="font-size:13px;float:left;margin-left:5px;">2021.05.18</div>
                        </div><br>
                        <div class="review_img_div"><img class="review_img" src="" style="width:100px;height:100px;"></div>
                        <div class="review_content pc">리뷰 내용</div>
                        <hr>
                    </div>
                    <div id="c_pagebar" class="pagebar">
                        <span>1</span>
                        <!-- reviewPageBar -->
                    </div>
                </div>

                <div id="pBoard">
                    <h3 class="dTitle pd">Q&A</h3>
                    <div class="pc" style="font-size:14px;">
                        구매한 상품의 취소/반품은 이곳을 통해 신청 가능합니다.<br>
                        후기게시판을 통한 취소나 환불, 반품 등은 처리되지 않습니다.<br>
                        상품과 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 이동, 삭제될 수 있습니다.
                    </div><br>
                    <hr>
                    <div class="QnA_category">
                        <form id="bSelectFrm" action="">
                            <select id="bListSelect" name="bListSelect" class="pb">
                                <option value="전체">전체</option>
                                <option value="교환/환불">교환/환불</option>
                                <option value="상품">상품</option>
                                <option value="배송">배송</option>
                                <option value="기타">기타</option>
                            </select>
                        </form>
                        <button class="pd" style="width:80px;height:30px;">문의하기</button>
                    </div>
                    <table class="sub_news" border="1" cellspacing="0">
                        <thead>
                            <tr class="pd">
                                <th width=80>카테고리</th>
                                <th scope="col" width=250>제목</th>
                                <th scope="col" width=100>작성자</th>
                                <th scope="col" width=100>작성일</th>
                                <th scope="col" width=80>현황</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="pc">
                                <td class="num">배송</td>
                                <td class="title">배송관련문의</td>
                                <td class="name">user04</td>
                                <td class="date">2021/05/16</td>
                                <td class="on_answer">답변현황</td>
                            </tr>
                        </tbody>
                    </table>
                    <div id="c_pagebar" class="pagebar">
                        <span>1</span>
                        <!-- reviewPageBar -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
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
	
	$(".orderOne").click((e)=>{
		const pCode=$(e.target).val();
		location.assign('<%=request.getContextPath()%>/myPage/order?userId=<%=userId%>&pCode='+pCode);
	})
</script>

<style>
    .box{
        width:1000px;
        margin:0 auto;
        display:flex;
        flex-direction: column;
    }
    #category_top{
        float:left;
        display:flex;
        color:cadetblue;
        align-items: center;
    }
    #category_top>a{
        text-decoration: none;
        color:black;
        font-size: 14px;
    }
    #category_top>a:hover{
        text-decoration: underline;
    }
    #product{
        margin:50px auto;
    }
    #product_top{
        display:flex;
        margin-bottom:50px;
    	justify-content: space-between;
    }
    .info_menu{
        width:950px;
        height:60px;
        background-color:rgb(193, 233, 210);;
        text-align:center;
        display:flex;
        align-items: center;
    }
    .info_menu>a{
    	text-decoration: none;
        color:black;
        font-size:18px;
    }
    .info_menu>a:hover{
        text-decoration: underline;
    }
    .word6{
    	width:316.66px;
    }
    .img_div>img{
        width:450px;
        height:350px;
        object-fit:cover;
    }
    .top_info button{
        height:45px;
        margin-top:81px;
    }
    .dTitle{
        background-color: rgb(177, 214, 193);
        margin-top: 50px;
        text-align: center;
        color:white;
        padding:5px 0 5px 0;
    }
    .QnA_category{
        display:flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 10px;
    }
    #pInfoPhoto{
        display:flex;
        flex-direction: column;
        align-items: center;
        padding:50px;
    }
    .RatingScore{
        display:flex;
        align-items: center;
    }
    .star{
        margin-left:20px;
        font-size:25px;
        float:right;
    }
    .review1{
        margin:20px;
    }
    .answer_end{
        color:black;background-color:silver;text-align: center;
    }
    .on_answer{
        color:white; background-color: lightseagreen;
    }
    button:hover{
    	cursor:pointer;
    }

    /* 별 디자인 */
    .inner-star::before{color: #FF9600;}
	.outer-star {font-size:30px;position: relative;display: inline-block;color: #CCCCCC;}
	.inner-star {position: absolute;left: 0;top: 0;width: 0%;overflow: hidden;white-space: nowrap;}
	.outer-star::before, .inner-star::before {content: '\f005 \f005 \f005 \f005 \f005';font-family: 'Font Awesome 5 free';font-weight: 900;}

    /*문의게시판 디자인*/
    .sub_news,.sub_news th,.sub_news td{border:0}
    .sub_news a{color:#383838;text-decoration:none}
    .sub_news{width:100%;border-bottom:1px solid #999;color:#666;font-size:12px;}
    .sub_news caption{display:none}
    .sub_news th{padding:5px 0 6px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:20px;vertical-align:top}
    .sub_news td{padding:8px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
    .sub_news .date,.sub_news .num{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
    .sub_news .title{text-align:left; padding-left:10px; font-size:13px;}
    .sub_news .title .pic,.sub_news .title .new{margin:0 0 2px;vertical-align:middle}
    .sub_news .title a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}

    /*pageBar 디자인*/
    .pagebar{
        margin: 20px auto;
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
<script>ratings = {RatingScore: 4.5} 
totalRating = 5;table = document.querySelector('.RatingStar');function rateIt() {for (rating in ratings) {ratingPercentage = ratings[rating] / totalRating * 100;ratingRounded = Math.round(ratingPercentage / 10) * 10 + '%';star = table.querySelector('.'+rating+' .inner-star');numberRating = table.querySelector("."+rating+" .numberRating");star.style.width = ratingRounded;numberRating.innerText = ratings[rating];}}rateIt()
</script>

<%@ include file="/views/common/footer.jsp"%>