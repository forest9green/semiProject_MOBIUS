<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

<section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="" class="choice">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="" class="pc black">- 회원 관리</a></li>
                        <li><a href="" class="pc black">- 주문 관리</a></li>
                        <li><a href="" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>



                <div class="main"> 
                    <div class="content_box">
                        <div class="main2 pd" >판매율 top5</div>
                            <div class="rank pc">
                                <!--해당하는 상품에 모두 링크되어야 합니다!-->
                                1. 상품카테고리/상품코드/상품명<br>
                                2. 상품카테고리/상품코드/상품명<br>
                                3. 상품카테고리/상품코드/상품명<br>
                                4. 상품카테고리/상품코드/상품명<br>
                                5. 상품카테고리/상품코드/상품명
                            </div>  
                    </div>
                    <div class="content_box pc">
                        <img src="https://ppss.kr/wp-content/uploads/2014/11/%EC%B0%A8%ED%8A%B8%ED%94%BC%EC%B3%90-001.png" alt="" style="width: 350px;height: 210px;">
                    </div><!--구글 Chart 중 colume chart 활용-->
                    <div class="content_box">
                        <div class="order_tit pd">오늘 들어온 주문</div>
                        <div class="order_info pc">
                            <!--해당 주문의 주문내역서가 링크되어야 합니다-->
                            <li>주문번호 / 주문아이디</li>
                            <li>주문번호 / 주문아이디</li>
                            <li>주문번호 / 주문아이디</li>
                            <li>주문번호 / 주문아이디</li>
                        </div>
                    </div>
                    <div class="content_box">
                        <div class="qna_tit pd">오늘 들어온 문의사항</div>
                        <div class="qna_info pc">
                            <!--문의 게시물에 링크되어야 합니다!-->
                            <li>제목 / 작성자아이디</li>
                            <li>제목 / 작성자아이디</li>
                            <li>제목 / 작성자아이디</li>
                            <li>제목 / 작성자아이디</li>
                        </div>
                    </div>
                </div>
            </div>    
        </section>


        <style>
            .choice{
                color:green;
                text-decoration: underline;
                font-weight: bold;
            }
            .greenright{
                color:green;
                font-size:28px;
                margin:0;
                font-weight: bold;
                /* float:right; */
            }
            .title{
                font-size:35px;
                margin:5px 0 40px 40px;
            }
            .category{
                width: 200px;
                border-right: 1px solid black;
                display: inline-block;
            }
            .category>ul{
                font-size:larger;
                list-style-type: none;
                margin:15px 0 15px 0;
            }
            .category>ul>li{
                font-size:80%;
            }
            .black{
                color:black;
                text-decoration: none;
            }
            .category a:first-child{
                margin-top: 10px;
            }
            .category a:hover{
                color:rgb(3, 177, 3);
                text-decoration: underline;
            }
            .main{
                width: 900px;
                display:flex;
                flex-wrap: wrap;
                flex-direction: row;
                justify-content: space-around;
            }
            .content_box{
                width:350px;
                height:300px;
                margin:0 20px 0 20px;
            }
            .main2{
                border: 1px solid black;
                height: 30px;
                text-align: center;
                padding-top: 5px ;
                background-color: #dbdbdbdb;
            }
            .rank{
                border: 1px solid black;
                height: 150px;
                text-align: center;
                padding-top: 20px ;
            }
            
            .order_tit{
                border: 1px solid black;
                text-align: center;
                height: 30px;
                padding-top: 5px ;
                background-color: #dbdbdbdb;
            }
            .order_info{
                border: 1px solid black;
                height: 130px;
                padding-top: 30px;
                text-align: center;
            }
            .qna_tit{
                border: 1px solid black;
                text-align: center;
                height: 30px;
                padding-top: 5px ;
                background-color: #dbdbdbdb;
            }
            .qna_info{
                border: 1px solid black;
                height: 130px;
                padding-top: 30px;
                text-align: center;
            }
        </style>
	<script>
	    $("#item-category>li").hover((e)=>{
	        $(e.target).siblings().css("visibility","visible");
	        $(e.target).siblings().children().css("color","gray");
	    });
	    $("#item-category a").hover((e)=>{
	        $(e.target).css("color","black");
	    }, (e)=>{
	        $(e.target).css("color","gray");
	    });
	</script>
	
	
	
	<%@ include file="/views/common/footer.jsp"%>