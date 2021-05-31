<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.board.model.vo.Board" %>
<% 
	Board b=(Board)request.getAttribute("board");
%> 
<%@ include file="/views/common/header.jsp"%>

<section>
    <div class="boatitle">  
        <h1 class="mooni">문의사항</h1>
    </div>  
    
    <div>
        <h2 id="bo_title">
            <span class="bo_badge bo_badge-light bo_badge-lg font-weight-light"><%=b.getbCategory()%><!-- 배송문의 --></span>
             <%=b.getbTitle()%><!-- 언제 상품 도착하나요? -->
       </h2>
    </div>
    
    <div id="bo_v_info">
        <span class="bo_name"><%=b.getUserId() %></span>
        <span class="bo_time"><%=b.getbWriteDate()%><!-- 21-05-06 --></span>
    </div>
    <div class="card-header text-left">
        <span class="bo_cttitle"><%=b.getUserId() %>님의 문의글</span>
    </div>
	
    <div class="bo_v_con">
        <span class="bo_contents"><%=b.getbContent()%><!-- 상품 언제 도착하나요? --></span>
    </div>
    <hr class="silsun">
        <div id="bo_v_top">
            <div class="bo_v_left">
                <a class="boabtn btn-light sujeong" onclick="location.assign('<%=request.getContextPath() %>/myPage/board/boardupdate?userId=<%=b.getUserId()%>&bNo=<%=b.getbNo()%>')">수정</a>
                <a class="boabtn btn-light sakje"  onclick="location.assign('<%=request.getContextPath() %>/myPage/board/delete?userId<%=b.getUserId()%>&bNo=<%=b.getbNo()%>')">삭제</a>
            </div>
            <div class="bo_v_right">
                <a class="boabtn btn-secondary" href="<%=request.getContextPath()%>/myPage/board/boardlist?userId=<%=loginUser.getUserId()%>">목록</a>
             </div>
        </div>    

             <h3>답변</h3>
        

             <div class="container reply">
                <p> 양호준님 안녕하세요! 해당상품 2~3주내에 수령하실수 있습니다.</p>
             </div>   
        
</section>
<script>
	
</script>
<style>
	.bo_v_left{
		display:flex;
	}
    #bo_title{
        font-family: "Noto Sans KR";
        font-weight: 400;
    }
    p{
        font-family: "Noto Sans KR";
        font-weight: 300;
    }
    .container{
        border:1px solid #bcbc;
        height:200px;

    }
    h3{
        font-family: "Noto Sans KR";
        font-weight: 500;
        font-size: 20px;               
    }
    h2:after{
        content: "";
        display: block;
        width: 100%;
        border-bottom: 1px solid #bcbc;
        margin: 3px 0px 10px;
    }
    h1:after {
        content: "";
        display: block;
        width: 0%;
        border-bottom: 1px solid #bcbc;
        margin: 3px 0px;
    }   
    .mooni{
        font-size: 40px;
    }
    .sakje{
        margin:1px;
    }
    .sujeong{
        margin:1px;
    }
    .bo_v_con{
        margin:20px;
    }
    .savecomments{
        margin: 0px;
        width: 1116px;
        height: 84px;
        font-family: "Noto Sans KR";
        font-weight: 300;
        border:1px;
        border-color: #bcbc;
    }
    .p-4 {
    padding: 1.5rem !important;
    }
    .mt-3{
    margin-top: 1rem !important;
    }
    .bg-light {
    background-color: #f8f9fa ;
    }
    .btn-primary{
        color: #fff;
        background-color: #e8180c;
        border-color: #e8180c;
        text-decoration:none;
        font-family: "Noto Sans KR";
    }
    .btn-secondary{
        color:black;
        background-color: rgb(224,224,224);;
        border-color: rgb(224,224,224);
        text-decoration: none;
        font-family: "Noto Sans KR";
    }
    .bo_v_right{
        margin:20px 0;
    }
    #bo_v_top{
        display:flex;
        justify-content: space-between;
    }
    .boabtn{
        display: inline-block;
        font-weight: 400;
        text-align: center;
        vertical-align: middle;
        line-height: 1.5;
        border: 1px solid transparent;
        padding: 0.375rem 0.75rem;
        transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }
    .btn-light{
        color: #212529;
        background-color:rgb(224,224,224);
        border-color:rgb(224,224,224);
        text-decoration: none;
        font-family: "Noto Sans KR";
    }
    .bo_v_left{
        margin:20px 0;
    }
    .bo_contents{
        margin-left:10px;
        padding:20px;
        font-family: "Noto Sans KR";
        font-weight: 300;
        padding:3px;
    }
    .card-header{
        padding: 0.75rem 1.25rem;
        margin-bottom: 0;
        margin-top:20px;
        background-color: rgb(224,224,224);
        border-bottom: 1px solid rgb(224,224,224);
    }
    .bo_name{
        font-family: "Noto Sans KR";
    }
    .bo_time{
        font-family: "Noto Sans KR";
        float:right;
    }
    .bo_badge{
        display: inline-block;
        padding: 0.25em 0.4em;
        font-size: 75%;
        font-weight: 700;
        line-height: 1;
        text-align: center;
        white-space: nowrap;
        vertical-align: baseline;
        border-radius: 0.25rem;
        transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }
    .bo_badge-light{
        color: #212529;
        background-color:rgb(224,224,224);
    }
    .bo_badge-lg {
        padding: 0.35em 0.4em;
        font-size: 85%;
    }
    .font-weight-light{
        font-weight:300 ! important;
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
    .boardqt-btn-box{
        display:flex;
        align-items: center;
        justify-content: center;   
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
    .bdcancel-btn{
        justify-content: center;
        appearance: auto;
        text-rendering: auto;
        display: inline-block;
        text-align: center;
        align-items: flex-start;
        box-sizing: border-box;
        border: 1px solid gray;
        margin: 3px;
        padding:5px;
    }
    .bdcomplete-btn{
        justify-content: center;
        appearance: auto;
        text-rendering: auto;
        display: inline-block;
        text-align: center;
        align-items: flex-start;
        box-sizing: border-box;
        border: 1px solid gray;
        margin:3px;
        padding:5px;
    }
    .boardqt-btn-box>ul{
        list-style:none;
    }
    .boardqt-btn-box>ul>li{
        float:left;
        margin: 3px;
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
    .bdcancel-btn>a{
        text-decoration: none;
        margin-right: 2px;
    }
    .bdcomplete-btn>a{
        text-decoration: none;
        margin-left:2px;
    }
    .cancel-btn{
        width:60px;
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
    #contents{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .boardsubTitle{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .form-group-boardtitle{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .board-category{
        font-family: "Noto Sans KR";
        font-weight: 300;
        margin: 4px;
    }
    .boardtitleqt{
        font-family: "Noto Sans KR";
        font-weight: 300;
        margin: 4px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .boardqt_contents{
        font-family: "Noto Sans KR";
        font-weight: 300;
        margin: 4px;
        display: flex;
        flex-direction: column;
        align-items: center 
    }
    .board-title1{
        display:flex;
        align-items: center;
        justify-content: center
    }
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>