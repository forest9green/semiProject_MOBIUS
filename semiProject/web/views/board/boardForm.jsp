<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.board.model.vo.Board" %>  
<%@ include file="/views/common/header.jsp"%>
<%
	Board b= (Board)request.getAttribute("board");
%>
<section>
	<div id="contents" class="container"></div>
    	<div class="subTitle">
	        <h1>문의사항 작성<span></span></h1>
    	</div>
	<form name="insertFrm" action='<%=request.getContextPath()%>/myPage/board/boardinsertend' method="post" >	
		<input type='hidden' name="userId" value="<%=loginUser.getUserId() %>">
		<div class="qalist">
	             <label for="ca_name">분류</label>
	                 <select class="form-control form-control-sm w-auto" id="ca_name" name="bCategory" required>
	                         <option value="">선택하세요</option>
	                         <option value="교환환불">교환환불</option>
	                         <option value="반품" >반품</option>
	                         <option value="상품" >상품</option>
	                         <option value="배송" >배송</option>
	                         <option value="기타" >기타문의사항</option>
	                 </select>
	       </div>          
	       <div class="bfi">
	             <!-- 제목 -->
		        <label for="wr_subject">제목</label>
		        <input class="title" type="text" name="bTitle" id="wr_subject" required size="100" maxlength="200" placeholder="제목" >
		        <!-- 내용 -->
		        <textarea id="wr_content" name="bContent" class="smarteditor2" maxlength="5000" style="width:100%; height: 200px;"
		        placeholder="내용을 입력해주세요" ></textarea>
			</div>        
	 </form> 
	        <div class="btn-box">
	            <ul>
	                <li>          
	                    <div class="" id="cancel">
	                    	<button class="btn-bf-cancel" onclick="location.assign('<%=request.getContextPath()%>/myPage/board/boardlist?userId=<%=loginUser.getUserId()%>')">
	                    	취소</button>
             			</div> 
	                </li>
	                <li>    
	                    <div class="" id="complete" >
                       	<button class="btn-bf-submit" onclick="fn_insertBoard()">작성완료</button>
                       	</div>
	                </li>
	            </ul>
        	</div>
       			
</section>
<script>
	function fn_insertBoard(){
		document.insertFrm.submit();
	}
</script>
<style>
	.btn-bf-cancel{
		font-size:15px;
	}
	.btn-bf-submit{
		font-size:15px;
	}
    .form-group{
        font-family: "Noto Sans KR";
        font-weight: 300;
        margin: 4px;
    }
    h1{
        font-family: "Noto Sans KR";
        font-weight: 500;
    }
    label{
        font-family: "Noto Sans KR";
        font-weight: 300;
        padding:3px;
    }
    option{
        font-family: "Noto Sans KR";
        font-weight: 300;
    }
    button{
        display:flex;
        align-items: center;
        justify-content: center;                
        appearance: auto;
        text-rendering: auto;
        display: inline-block;
        text-align: center;
        align-items: flex-start;
        box-sizing: border-box;
    }
    .btn-box>ul{
        list-style:none;
    }
    .btn-box>ul>li{
        float:left;
        margin: 5px;
    }
    .btn-box{
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 10px;
        border-radius: 50%;
    }
    .pb{
        font-family: "Noto Sans KR";
        font-weight: 300;
    }
    .cancel-btn>a{
        text-decoration: none;
    }
    .complete-btn>a{
        text-decoration: none;
    }
    .cancel-btn{
        width:50px;
        height:30px;
        border: 1px solid gray;
        text-align: center;
        font-size: 20px;
    }
    .complete-btn{
        width:100px;
        height:30px;
        border: 1px solid gray;
        text-align: center;
        font-size: 20px;
    }
    #wr_content{
        margin-top: 10px;
    }
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>