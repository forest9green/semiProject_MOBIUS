<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

       <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/admin/adminMain" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/admin/user/memberList" class="pc black">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail.jsp" class="pc choice">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/admin/board/manageBoard" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/admin/manageProductMain" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%= request.getContextPath()%>/admin/notice/manageNotice" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">주문 관리</h3>
                    <div id="user_btn">
                        <button type="button" class="choice2">결제 내역</button>
                        <button type="button">주문 접수 내역</button>
                    </div>
                    <div id="user_content">
                        <form id="searchPay" action="" method="post">
                            <select name="" id="">
                                <!--value: 해당 정보의 컬럼명-->
                                <option value="">주문날짜</option>
                                <option value="">주문번호</option>
                                <option value="">아이디</option>
                                <option value="">결제수단</option>
                            </select>
                            <input type="text" name="searchPay">
                            <input type="submit" class="whitebtn" value="검색">
                        </form>
                        <table id="output_table" class="pa" border=1>
                            <thead>
                                <tr>
                                    <th width=100>주문날짜</th>
                                    <th width=100>주문번호</th>
                                    <th width=100>아이디</th>
                                    <th width=100>결제수단</th>
                                    <th width=100>결제상태</th>
                                    <th width=80>정보</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!--
                                    값이 없으면 <tr>결제 내역이 없습니다.</tr> 추가
                                    값이 있으면 출력하되, 튜플이 10개 이상일 경우 페이징처리 되도록 처리해야 함
                                -->
                                <tr>
                                    <td>날짜</td>
                                    <td>00000000-0</td>
                                    <td>user01</td>
                                    <td>신용카드</td>
                                    <td>배송완료</td><!--주문 내역 상세 테이블의 주문상태 출력-->
                                    <td><button class="whitebtn">자세히 보기</button></td><!--클릭 시 결제세부정보(manageOrderPayCard.jsp/manageOrderPayNoBook.jsp) 화면으로 이동-->
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="admin_pagebar" class="pagebar">
                        <span><a href="">1</a></span>
                        <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
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
            .black:hover{
                text-decoration: underline;
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
            #user_content{
                min-height:400px;
            }
            #user_btn{
                margin: 30px 0 20px 0;
            }
            #user_btn>button{
                width:110px;
                height:40px;
                font-size: 15px;
                font-family: "Noto Sans KR";
                font-weight: 400;
            }
            #searchPay{
                margin:20px 0 0 0;
                position:relative;
                left:585px;
            }
            .whitebtn{
                border:1px gray solid;
                background-color: white;
                position:relative;
                top: 1px;
                height:22px;
            }
            #output_table{
                margin:10px 0 10px 0;
                width:880px;
                text-align: center;
                border-collapse: collapse;
                border-left: none;
                border-right: none;
            }
            #output_table tr{
                height:40px;
            }
            .idHover:hover{
                text-decoration: underline;
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
            body{
				margin:0px;
			}
        </style>


<%@ include file="/views/common/footer.jsp"%>