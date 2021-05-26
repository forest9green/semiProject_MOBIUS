<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<%@ page import= "com.board.model.vo.Board" %>
<%
	Board b=(Board)request.getAttribute("b");
%>
        <section>
            <div class="boatitle">  
                <h1 class="mooni">문의사항</h1>                
            </div>  
       	<form action="<%=request.getContextPath() %>/myPage/board/boardupdateEnd" method="post">
            <div>
                <h2 id="bo_title">
                    <span class="bo_badge bo_badge-light bo_badge-lg font-weight-light">배송문의</span>
                    언제 상품 도착하나요?
                </h2>
            </div>
            
            <div id="bo_v_info">
                <span class="bo_name">양호준</span>
                <span class="bo_time">21-05-06</span>
            </div>
            <div class="card-header text-left">
                <span class="bo_cttitle">양호준님의 문의글</span>
            </div>
 
            <div class="bo_v_con">
                <textarea rows="30" cols="50" type="text"  name ="bd_content" class="bo_contents"><%=b.getbContent() %></textarea> --%>
            </div>
            <hr class="silsun">
                <div id="bo_v_top">
                    <div class="bo_v_left">
                        <a class="boabtn btn-light sujeong" href="" >수정</a>
                        <a class="boabtn btn-light sakje" href="" onclick="del(this.href); return false;">삭제</a>     
                    </div>
                    <div class="bo_v_right">
                        <a class="boabtn btn-secondary" href="">목록</a>
                        <!-- <a class="boabtn btn-primary" href="">문의하기</a> -->
                     </div>
                </div>    
			</form>
                     <h3>답변</h3>
                

                     <div class="container reply">
                        <p> 양호준님 안녕하세요! 해당상품 2~3주내에 수령하실수 있습니다.</p>
                     </div>   
                </div>

               

        </section>

<%@ include file="/views/common/footer.jsp"%>