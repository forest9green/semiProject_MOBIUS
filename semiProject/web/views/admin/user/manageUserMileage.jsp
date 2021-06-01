<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.admin.user.model.vo.AdminMileage" %>
<%
	List<AdminMileage> list = (List<AdminMileage>)request.getAttribute("list");
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
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp"" class="pc black">- 취소/교환/환불 처리</a></li>
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
                    <h3 class="pd greenright">회원 관리</h3>
                    <div id="user_btn">
                        <button type="button" id="fn_move_userInfo">회원 정보</button>
                        <button type="button" id="fn_move_coupon">쿠폰</button>
                        <button type="button" class="choice2">적립금</button>
                        <button type="button" id="fn_move_order">구매내역</button>
                    </div>
                    <div id="user_content">
                        <table id="output_table" class="pa" border=1>
                            <thead>
                                <tr>
                                    <th width=100>날짜</th>
                                    <th width=300>내용</th>
                                    <th width=110>적립금액</th><!--null이면 0출력-->
                                    <th width=110>차감금액</th><!--null이면 0출력-->
                                    <th width=110>합계</th><!--0이면 "미사용", 1이면 "사용" 으로 출력-->
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
                               		<%for(AdminMileage m : list){ %>
		                                <tr>
		                                    <td><%=m.getOrderDate() %></td>
		                                    <td><%=m.getmContent() %></td>
		                                    <td><%=m.getmPlus() %></td>
		                                    <td><%=m.getmMinus() %></td>
		                                    <td></td>
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


<form action="<%=request.getContextPath()%>/admin/member/info" id="moveInfo">
	<input type="hidden" value="<%=userId %>" name="userId">
</form>
<form action="<%=request.getContextPath() %>/admin/user/coupon" method="post" id="moveCoupon">
	<input type="hidden" name="userId" value="<%=userId%>">
</form>	
<form action="<%=request.getContextPath() %>/admin/user/order" method="post" id="moveOrder">
	<input type="hidden" name="userId" value="<%=userId%>">
</form>

		<script>
			$("#fn_move_coupon").click(function(){
				$("#moveCoupon").submit();
			})
			 $("#fn_move_userInfo").click(function(){
            	$("#moveInfo").submit();
            })
            $("#fn_move_order").click(function(){
			$("#moveOrder").submit();
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
            .idHover:hover{
                text-decoration: underline;
            }
            #btn>button{
                border: 1px gray solid;
                width:70px;
                height:32px;
                text-align: center;
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