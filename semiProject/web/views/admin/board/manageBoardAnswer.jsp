<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>
    
        <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/views/admin/adminMain.jsp" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/views/admin/user/manageUserMain.jsp" class="pc black">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail.jsp" class="pc black">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/admin/board/manageBoard" class="pc choice">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/admin/manageProductMain" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%= request.getContextPath()%>/admin/notice/manageNotice" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">문의사항 관리</h3>
                    <div id="user_content">
                        <form action="">
                            <div>
                                <table id="output_table" class="pa" style="text-align: left;">
                                    <colgroup>
                                        <col width=50>
                                        <col width=150>
                                        <col width=50>
                                        <col width=200>
                                    </colgroup>
                                    <tr>
                                        <th>제목 </th>
                                        <td><!-- 갑입력-->제목</td>
                                        <th>분류</th>
                                        <td><!-- 갑입력-->분류</td>
                                    </tr>
                                    <tr>
                                        <th>아이디</th>
                                        <td><!-- 갑입력-->아이디</td>
                                        <th>작성일</th>
                                        <td><!-- 갑입력-->작성일</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="pb">
                                <h3>내용</h3>
                                <div id="qbox">
                                    사용자가 입력한 값 불러오기(입력불가)
                                </div>
                                <div id="abox">
                                    <h3>답변</h3>
                                    <textarea name="" id="" cols="118" rows="10"></textarea>
                                </div>
                            </div>
                            <div id="btn">
                                <input type="reset" class="blackbtn" value="취소">
                                <input type="submit" class="blackbtn" value="확인">
                            </div>
                            
                        </form>
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
            #output_table{
                border-collapse: collapse;
                width:880px;
                margin:20px 0 10px 0;
            }
            #qbox{
                border: 1px gray solid;
                padding:20px;
                width:830px;
            }
            #btn{
                position:relative;
                left:753px;
                margin-top: 10px;
            }
            .blackbtn{
                border:1px black solid;
                background-color: black;
                color:white;
                height: 35px;
                width:60px;
            }
            body{
				margin:0px;
			}
        </style>
 
    
    
    
    
    
    
    
<%@ include file="/views/common/footer.jsp"%>