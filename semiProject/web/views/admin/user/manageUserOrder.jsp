<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ page import="java.util.List,com.admin.user.model.vo.AdminOrder" %>
<%
	List<AdminOrder> list = (List<AdminOrder>)request.getAttribute("list");
	String userId = (String)request.getAttribute("userId");
%>


<%@ include file="/views/common/header.jsp"%>

        <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/admin/adminMain" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/admin/user/memberList" class="pc choice">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail.jsp" class="pc black">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/board/manageBoard.jsp" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/admin/manageProductMain" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%=request.getContextPath() %>/views/admin/notice/manageNotice.jsp" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">회원 관리</h3>
                    <div id="user_btn">
                        <button type="button" id="fn_move_userInfo">회원 정보</button>
                        <button type="button" id="fn_move_coupon">쿠폰</button>
                        <button type="button" id="fn_move_mileage">적립금</button>
                        <button type="button" class="choice2">구매내역</button>
                    </div>
                    <div id="user_content">
                        <table id="output_table" class="pa" border=1>
                            <thead>
                                <tr>
                                    <th width=100>날짜</th>
                                    <th width=150>주문번호</th>
                                    <th width=100>결제금액</th>
                                    <th width=100>상태</th>
                                    <th width=80>정보</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%if(list.isEmpty()){ %>
                                	<tr>
                            		<td colspan="9" align="center">
                            			검색결과가 없습니다.
                            		</td>
                            		</tr>
                                <%}else{ %>
		                            <%for(AdminOrder ao : list){ %>    
		                                <tr>
		                                    <td><%=ao.getOrderDate() %></td>
		                                    <td><%=ao.getOrderNo() %></td>
		                                    <td><%=ao.getPrice() %></td>
		                                    <td><%=ao.getoState() %></td><!--주문 내역 상세 테이블의 주문상태 출력-->
		                                    <td><button class="whitebtn" id="fn_move_orderDetail">자세히 보기</button></td><!--클릭 시 주문관리-주문접수내역의 주문서로 이동-->
		                                	<form action="<%=request.getContextPath() %>/admin/order/" method="post" id="moveOrderDetail">
												<input type="hidden" name="orderNo" value="<%=ao.getOrderNo()%>">
											</form>
		                                </tr>
		                             <%} %>
	                             <%} %>
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

<form action="<%=request.getContextPath() %>/admin/user/info" method="post" id="moveUserInfo">
	<input type="hidden" name="userId" value="<%=userId%>">
</form>
<form action="<%=request.getContextPath() %>/admin/user/coupon" method="post" id="moveCoupon">
	<input type="hidden" name="userId" value="<%=userId%>">
</form>
<form action="<%=request.getContextPath() %>/admin/user/mileage" method="post" id="moveMileage">
	<input type="hidden" name="userId" value="<%=userId%>">
</form>


	 	<script>
	 		$("#fn_move_userInfo").click(function(){
	 			$("#moveUserInfo").submit();
	 		})
	 		$("#fn_move_coupon").click(function(){
	 			$("#moveCoupon").submit();
	 		})
	 		$("#fn_move_mileage").click(function(){
	 			$("#moveMileage").submit();
	 		})
	 	</script>



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
                width:90px;
                height:40px;
                font-size: 15px;
                font-family: "Noto Sans KR";
                font-weight: 400;
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
            .whitebtn{
                border:1px gray solid;
                background-color: white;
                height:22px;
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