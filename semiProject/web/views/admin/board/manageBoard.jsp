<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.List, com.admin.board.model.vo.AdminBoard"  %>    
<%
	List<AdminBoard> adminboards=(List<AdminBoard>)request.getAttribute("adminboards");
	String pageBar=(String)request.getAttribute("pageBar");
%>
<%@ include file="/views/common/header.jsp"%>
    <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="" class="pc black">- 회원 관리</a></li>
                        <li><a href="" class="pc black">- 주문 관리</a></li>
                        <li><a href="" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">문의사항 관리</h3>
                    <div id="user_content">
                        <form id="searchPay" action="" method="post">
                            <select name="" id="">
                                <!--value: 해당 정보의 컬럼명-->
                                <option value="">제목</option>
                                <option value="">아이디</option>
                                <option value="">답변여부</option>
                            </select>
                            <input type="text" name="searchPay">
                            <input type="submit" class="whitebtn" value="검색">
                        </form>
                        <table id="output_table" class="pa" border=1>
                            <thead>
                                <tr>
                                    <th width=150>제목</th>
                                    <th width=50>아이디</th>
                                    <th width=50>작성일</th>
                                    <th width=35>답변여부</th>
                                    <th width=50>답변일</th>
                                    <th width=20>답변하기</th>
                                </tr>
                            </thead>
                            <tbody>
                              	<% if(!adminboards.isEmpty()){
                             	for (AdminBoard a:adminboards){%>
                                <tr>
                                    <td><%=a.getbTitle() %></td>
                                    <td><%=a.getUserId() %></td>
                                    <td><%=a.getbWriteDate() %></td>
                                    <td></td>
                                    <td></td>
                                    <td><button class="whitebtn">답변하기</button></td>
                                </tr>
                            <%} 
                            }%> 
                            </tbody>                           
                        </table>
                    </div>
                    <div id="pageBar" class="pageBar">
                        <%=request.getAttribute("pageBar") %>
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

			body{
				margin:0px;
			}
        </style>
        
<%@ include file="/views/common/footer.jsp"%>