<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List,com.notice.model.vo.Notice" %>

<%
	List<Notice> list=(List<Notice>)request.getAttribute("notice");

%>


<%@ include file="/views/common/header.jsp"%>

        <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/views/admin/adminMain" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/views/admin/user/manageUserMain" class="pc black">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail" class="pc black">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/board/manageBoard" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/views/admin/product/manageProduct" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%=request.getContextPath() %>/admin/notice/manageNotice" class="choice" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">공지사항 관리</h3>
                    <div id="user_content">
                        <form id="searchPay" action="" method="post">
                            <input type="text" name="search" placeholder="제목">
                            <!--포함된 단어가 있으면 출력되도록 sql짜기-->
                            <input type="submit" class="whitebtn" value="검색">
                        </form>
                        <table id="output_table" class="pa" border=1>
                        <%if(list==null||list.isEmpty()){ %>
                            <thead>
                                <tr>
                                    <th width=20><input type="checkbox" id="checkall"></th>
                                    <th width=250>제목</th>
                                    <th width=100>작성일</th>
                                    <th width=50>정보</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox" name="chk"></td>
                                    <td>공지사항 내역이 없습니다.</td>
                                    <td></td>
                                    <td><button class="whitebtn">수정</button></td>
                                </tr> 
                            </tbody>
                            <%}else{
                            	for(Notice n : list){%>
                            	<thead>
                                <tr>
                                    <th width=20><input type="checkbox" id="checkall"></th>
                                    <th width=250>제목</th>
                                    <th width=100>작성일</th>
                                    <th width=50>정보</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox" name="chk"></td>
                                    <td><%=n.getnTitle() %></td>
                                    <td><%=n.getnDate() %></td>
                                    <td><button class="whitebtn">수정</button></td>
                                </tr> 
                            </tbody>
                            <%}
                            	}%>
                        </table>
                        <div id="btn">
                            <button type="button" class="pb" style="background-color: white;">선택 삭제</button>
                            <button type="button" class="pb blackbtn">글쓰기</button>
                            <!--open()으로 작은 window창 열어서 등록 처리-->
                        </div>
                    </div>
                    <div id="admin_pagebar" class="pagebar">
                        <span><a href="">1</a></span>
                        <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
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
            #user_content{
                min-height:400px;
            }
            #searchPay{
                margin:20px 0 0 0;
                position:relative;
                left:669px;
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
                height:32px;
                text-align: center;
            }
            .blackbtn{
                position: relative;
                left:734px;
                background-color:black;
                color:white;
            }
            .pagebar{
                width: 100px;
                margin: 20px auto;
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
        </style>

<%@ include file="/views/common/footer.jsp"%>