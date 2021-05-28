<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

       <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/views/admin/adminMain.jsp" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/admin/user/memberList" class="pc choice">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail.jsp" class="pc black">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/board/manageBoard.jsp" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/views/admin/product/manageProduct.jsp" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%=request.getContextPath() %>/views/admin/notice/manageNotice.jsp" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">회원 관리</h3>
                    <div id="user_btn">
                        <button type="button" class="choice2">회원 정보</button>
                        <button type="button">쿠폰</button>
                        <button type="button">적립금</button>
                        <button type="button">구매내역</button>
                    </div>
                    <div id="user_content" class="pb">
                        <div class="cBox1">
                            <ul><h4>기본 정보</h4>
                                <li>아이디 : </li>
                                <li>이름 : </li>
                                <li>이메일 : </li>
                                <li>휴대폰번호 : </li>
                                <li>일반전화번호 :</li>
                                <li>가입일 : </li>
                            </ul>
                        </div>
                        <div>
                            <div class="cBox2">
                                <h4>기본 배송지</h4>
                                배송지 입력
                            </div>
                            <div class="cBox2">
                                <h4>최근 배송지</h4>
                                배송지 입력
                            </div>
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
            .choice2{
                background-color: rgb(56, 163, 56);
                color:white;
            }
            .greenright{
                color:green;
                font-size:28px;
                margin:0;
                font-weight: bold;
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
                padding:0 0 0 30px;
            }
            #user_btn{
                margin: 30px 0 20px 0;
            }
            #user_btn>button{
                width:90px;
                height:40px;
                font-size: 15px;
                font-family: "Noto Sans KR";
                font-weight: 400;
            }
            #user_content{
                display:flex;
                background-color: rgb(220, 248, 220);
            }
            #user_content h4{
                font-family: "Noto Sans KR";
                font-weight: 500;
                font-size: large;
            }
            .cBox1{
                width:450px;
                height:400px;
                margin:10px;
                border:1px solid rgb(220, 248, 220);
                background-color: white;
            }
            .cBox1>ul{
                list-style-type: decimal;
            }
            .cBox1>ul>li{
                margin-bottom: 10px;
            }
            .cBox2{
                width:420px;
                height:194px;
                margin:10px 10px 10px 0;
                border:1px solid rgb(220, 248, 220);
                padding-left:20px;
                background-color: white;
            }
            body{
				margin:0px;
			}
        </style>



<%@ include file="/views/common/footer.jsp"%>