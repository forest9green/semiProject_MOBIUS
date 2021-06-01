<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.admin.user.model.vo.TotalInfo" %>
<%
	List<TotalInfo> users = (List<TotalInfo>)request.getAttribute("users");


%>       

<%@ include file="/views/common/header.jsp"%>

        <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/admin/adminMain" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/admin/user/memberList" class="pc choice">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/admin/order/manageOrderInfoDetail" class="pc black">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/admin/cer/manageCERcancel" class="pc black">- 취소/교환/환불 처리</a></li>
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
                    <form id="searchId" action="<%=request.getContextPath() %>/admin/user/searchId" method="post">
                        <input type="search" name="searchId" placeholder="아이디">
                        <input type="submit" class="whitebtn" value="검색">
                    </form>
                    <table id="output_table" class="pa" border=1>
                        <thead>
                            <tr>
                                <th width=100>아이디</th>
                                <th width=100>총 구매액</th>
                                <th width=100>회원가입일</th>
                                <th width=80>정보</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%if(users.isEmpty()){ %>
                            	<tr>
                            		<td colspan="9" align="center">
                            			검색결과가 없습니다.
                            		</td>
                            	</tr>
                         
                            <%}else{ %>
                            	<%for(TotalInfo info : users){ %>
		                        <form action="<%=request.getContextPath() %>/admin/member/info" method="post">    
		                            <tr>
		                                <td> <input type="hidden" name="userId" value="<%=info.getUserId()%>"><%=info.getUserId() %></td>
		                                <td><%=info.getSum() %></td>
		                                <td><%=info.getJoinDate() %></td>
		                                <td><button type="submit" class="whitebtn">자세히 보기</button></td><!--클릭 시 회원관리-회원정보(manageUserMain.jsp) 화면으로 이동-->
		                            </tr>
		                        </form>    
	                            <%} %>
                            <%} %>
                        </tbody>
                    </table>
                   
                    <div id="admin_pagebar" class="pagebar">
                        <%=request.getAttribute("pageBar") %>
                    </div>
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
            })
        </script>


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
            #searchId{
                margin:20px 0 0 0;
                position:relative;
                left:668px;
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
            #btn>button{
                border: 1px gray solid;
                width:70px;
                height:30px;
                text-align: center;
                background-color: white;
            }
            .pagebar{
                margin: 10px auto;
                text-align:center;
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