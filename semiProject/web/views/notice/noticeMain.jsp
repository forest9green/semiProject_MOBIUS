<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List,com.notice.model.vo.Notice" %>
<%
	List<Notice> list=(List<Notice>)request.getAttribute("notice");
%>


    
<%@ include file="/views/common/header.jsp"%>

<section>
	<h1 class="pe" style="font-size: 35px; padding-bottom:5%"> NOTICE </h1>

	<div class="row">
		<div class="column" id="wrap"> 
			<div class="card">
	        <div><img class="notice" src="./img/notice1.jpg" ></div>
		</div>
		<h3 class="pe">우리집 자랑하고 5만원 받자</h3>
		<p class="pc">다가오는 여름! 우리집의 다양한 여름 인테리어를 자랑해주세요</p>
    </div>
    <div class="column" id="wrap"> 
		<div class="card">
			<div><img class="notice" src="./img/notice2.jpg" ></div>
		</div>
    	<h3 class="pe">살고 있는 집을 >>> 살고 싶은 집으로</h3>
    	<p class="pc">스타일링 비용 전액 지원! Mobius 스타일리스트의 공간 스타일링 !!</p>
    </div>
    <div class="column" id="wrap"> 
    	<div class="card">
        	<div><img class="notice" src="./img/notice3.jpg" ></div>
    	</div>
    	<h3 class="pe"> Mobius가 준비한 오늘의 선물 !</h3>
    	<p class="pc">여러분의 주방을 고급스럽게 변신시켜줄 로얄베일 블랙포레스트 4인세트를 선물로 드려요 ! </p>
    </div>
</section>
    
<style>
    #wrap .more {opacity:1}
    .more {
        position:relative; 
        display:block; 
        font-size:18x; 
        color:#fff; bottom:350px; 
        line-height:40px; width:120px; 
        opacity:0; 
        transition:0.5s all       
    }
    body {
        font-family: Arial, Helvetica, sans-serif;
    }
    .column {
        width: 30%;
        height: 50%;
        padding: 0 10px;
        margin-bottom: 20px;
        float: left;
        padding-left: 2%;
    }
    .row {margin: 0 -5px;}
    .row:after {
    content: "";
    display :list-item;
    clear: both;
    }
    .card {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
    padding: 16px;
    text-align: center;
    background-color: #f1f1f1;
	}
	@media screen and (max-width: 600px) {
	    .column {
	    width: 70%;
	    height: 50%;
	    margin-bottom: 20px;
	    }
	}
	.button_image {
	    position:absolute;
	    bottom:50%;
	    left: 33%;
	    width: 30px;
	    height:20px;
	    z-index: 2;
	    cursor: pointer;
	    display:inline-block;
	}
	img {
	    width : 100%;
	    height : 100%;
	}
</style>
<script></script>

<%@ include file="/views/common/footer.jsp"%>