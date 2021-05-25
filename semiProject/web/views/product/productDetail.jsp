<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.product.model.vo.Product" %>
<%
	Product p=(Product)request.getAttribute("product");
%>
<%@ include file="/views/common/header.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<section>
    <div class="box">
        <div id="category_top">
            <a href="<%=request.getContextPath() %>/product/productList"><div class="pb">전체</div></a>
            <div class="pa">　>　</div>
            <a href=""><div class="pb">소파</div></a>
        </div>
        <div id="product">
            <div id="product_top">
                <div class="img_div">
                    <img src="">
                </div>
                <div class="top_info">
                    <div class="pe" style="font-size:20px;">Mobius 기본 흰색 소파</div>
                    <div class="pd" style="font-size:25px;">300,000원</div>
                    <br><hr>
                    <div class="pc" style="font-size:16px;float:left;">크기</div>
                    <div class="pc" style="font-size:16px;margin-left:240px;">000*000*000</div>
                    <div class="pc" style="font-size:16px;float:left;">배송비</div>
                    <div class="pc" style="font-size:16px;margin-left:240px;">59,000원</div>
                    <div class="pb" style="font-size:13px;">조건에 따라 추가비용 발생 가능 (상품 상세 정보 참고)</div>
                    <hr>
                    <div>
                        <button id="buy_now pc" style="width:130px;">위시리스트에 추가</button>
                        <button id="basket pc" style="width:120px;">장바구니에 담기</button>
                        <button id="buy_now pc" style="width:125px;">바로 구매</button>
                    </div>
                </div>
            </div>
            <div id="product_bottom">
                <table class="info_menu">
                    <tr>
                        <td class="pd">상품</td>
                        <td class="pd">리뷰</td>
                        <td class="pd">문의</td>
                    </tr>
                </table>
                <div id="pInfo">
                    <h3 class="dTitle pd" style="margin-top:0px">상품 정보</h3>
                    <div id="pInfoPhoto">상품 사진 넣기</div>
                </div>

                <div id="pReview">
                    <h3 class="dTitle pd">상품 리뷰</h3>
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
                    <h3 class="dTitle pd">문의사항</h3>
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
                        <button class="buy_now pd" style="width:80px;height:30px;">문의하기</button>
                    </div>
                    <table class="sub_news" border="1" cellspacing="0">
                        <thead>
                            <tr class="pd">
                                <th width=100>카테고리</th>
                                <th scope="col" width=250>제목</th>
                                <th scope="col">작성자</th>
                                <th scope="col">작성일</th>
                                <th scope="col" width=100>현황</th>
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
    }
    .info_menu{
        width:836.25px;
        height:60px;
        background-color:rgb(193, 233, 210);;
        text-align:center;
    }
    .img_div>img{
        width:300px;
        height:300px;
    }
    .top_info{
        margin-left: 150px;;
    }
    .top_info button{
        height:45px;
        margin-top:65px;
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
totalRating = 5;table = document.querySelector('.RatingStar');function rateIt() {for (rating in ratings) {ratingPercentage = ratings[rating] / totalRating * 100;ratingRounded = Math.round(ratingPercentage / 10) * 10 + '%';star = table.querySelector(`.${rating} .inner-star`);numberRating = table.querySelector(`.${rating} .numberRating`);star.style.width = ratingRounded;numberRating.innerText = ratings[rating];}}rateIt()</script>

<%@ include file="/views/common/footer.jsp"%>