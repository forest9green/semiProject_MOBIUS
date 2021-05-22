<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
	<div id="contents" class="container">
    	<div class="subTitle">
	        <h1>문의사항 작성<span></span></h1>
    </div>
    <div class="form-group">
	    <label for="ca_name">분류</label>
	     <select class="form-control form-control-sm w-auto" id="ca_name" name="ca_name" required>
	            <option value="">선택하세요</option>
	            <option value="교환/환불">교환/환불</option>
	            <option value="배송">배송</option>
	            <option value="상품">상품</option>
	            <option value="기타문의사항">기타문의사항</option>
	    </select>
    </div>
    <div class="form-group">
    	<form id="bdfrm" method="post" action="" >
	        <label for="wr_subject">제목</label>
	        <input class="title" type="text" name="wr_subject" value="" id="wr_subject" required size="100" maxlength="200" placeholder="제목">
    	</form>
    	
    </div>
    <div class="form-group d-cke-none">
        <textarea id="wr_content" name="wr_content" class="smarteditor2" maxlength="5000" style="width:100%; height: 200px;"
        placeholder="내용을 입력해주세요">
            </textarea>
        </div>

        <div class="form-group">
        </div>
        

    
        <div class="btn-box">
            <ul>
                <li>          
                    <div class="cancel-btn pb" id="cancel" onclick="location.replace('<%=request.getContextPath()%>/views/board/boardlistView.jsp')">
                        <a href>취소</a>
                    </div> 
                </li>
                <li>    
                    <div class="complete-btn pb" id="complete" onclick="location.replace('<%=request.getContextPath()%>/views/board/boardlistView.jsp')">
                        <a href>작성완료</a>
                    </div>
                </li>
            </ul>
        </div>
	</div>
</section>

<style>
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