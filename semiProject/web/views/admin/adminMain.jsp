<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.admin.main.model.vo.AdminMainInfo,com.order.model.vo.Order,com.board.model.vo.Board" %>    
<%
	List<AdminMainInfo> plist = (List<AdminMainInfo>)request.getAttribute("plist");
	List<Order> olist = (List<Order>)request.getAttribute("olist");
	List<Board> blist = (List<Board>)request.getAttribute("blist");
%>


<%@ include file="/views/common/header.jsp"%>

<section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/admin/adminMain" class="choice">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/admin/user/memberList"  class="pc black">- 회원 관리</a></li>
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
                    <div class="content_box">
                        <div class="main2 pd" >판매율 top5</div>
                            <div class="rank pc">
                                <!--해당하는 상품에 모두 링크되어야 합니다!-->
                               <%if(plist.isEmpty()){ %>
                            	<tr>
                            		<td colspan="9" align="center">
                            			검색결과가 없습니다.
                            		</td>
                            	</tr>
	                            <%}else{ %>
	                            	<%for(AdminMainInfo info : plist){ %>		                       
			                            <tr>
			                                <td><%=info.getCategory()%> / </td>
			                                <td><%=info.getpCode() %> / </td>
			                                <td><%=info.getpName() %></td>
			                                <br>
			                            </tr>
			                        <%} %>
	                            <%} %>
                            </div>  
                          
                    </div>
                    <div class="content_box pc">
                        <img src="https://ppss.kr/wp-content/uploads/2014/11/%EC%B0%A8%ED%8A%B8%ED%94%BC%EC%B3%90-001.png" alt="" style="width: 350px;height: 210px;">
                    </div><!--구글 Chart 중 colume chart 활용-->
                    <div class="content_box">
                        <div class="order_tit pd">오늘 들어온 주문</div>
                        <div class="order_info pc">
                            <!--해당 주문의 주문내역서가 링크되어야 합니다-->
                            <%if(olist.isEmpty()){ %>
                            	<tr>
                            		<td colspan="9" align="center">
                            			아직 들어온 주문이 없습니다.
                            		</td>
                            	</tr>
	                            <%}else{ %>
	                            	<%for(Order o : olist){ %>		                       
			                            <tr>
			                                <td><%=o.getOrderNo()%> / </td>
			                                <td><%=o.getUserId()%></td>
			                                <br>
			                            </tr>
			                        <%} %>
	                            <%} %>
                        </div>
                    </div>
                    <div class="content_box">
                        <div class="qna_tit pd">오늘 들어온 문의사항</div>
                        <div class="qna_info pc">
                            <!--문의 게시물에 링크되어야 합니다!-->
                            <%if(blist.isEmpty()){ %>
                            	<tr>
                            		<td colspan="9" align="center">
                            			오늘 작성된 문의사항이없습니다.
                            		</td>
                            	</tr>
	                            <%}else{ %>
	                            	<%for(Board b : blist){ %>		                       
			                            <tr>
			                                <td><%=b.getbTitle()%> / </td>
			                                <td><%=b.getUserId()%></td>
			                                <br>
			                            </tr>
			                        <%} %>
	                            <%} %>
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
            body{
				margin:0px;
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