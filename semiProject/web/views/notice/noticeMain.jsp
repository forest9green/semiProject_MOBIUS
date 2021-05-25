<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List,com.notice.model.vo.Notice" %>
<%
	List<Notice> list=(List<Notice>)request.getAttribute("notice");

%>


    
<%@ include file="/views/common/header.jsp"%>

<section>
	<h1 class="pe" style="width:200px;font-size: 35px; padding-bottom:50px;"> NOTICE </h1>
	<%if(list==null||list.isEmpty()){ %>
		 <div class="column" id="wrap"> 
					<div><img class="no_notice" src="<%=request.getContextPath()%>/images/notice/nonotice.jpg" ></div>
		    </div>
	
    <%}else{ 
    	for(Notice n : list){%>
		 <a href=""><div class="ntc">   
		    <div class="column" id="wrap"> 
					<div><img class="notice" src="<%=request.getContextPath()%>/upload/notice/<%=n.getnImgPath()%>"></div>
		    	<h3 class="pe" style="width:350px;text-align:center;"><%=n.getnTitle() %> </h3>
		    </div>
		 </div></a>   
    <%}
    }%>
</section>
    
<style>

	.no_notice{
	width:300px;
	height:200px;
	margin-left:400px;
	}
	
	.notice{
	width:300px;
	height:200px;
	margin-left:30px;
	}

	.ntc{
	display:inline-block;
	
	}
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
        margin-bottom: 50px;
      /*    float: left; */
        padding-left: 2%;
    }
    .row {margin: 0 -5px;}
    .row:after {
    content: "";
    display :list-item;
    clear: both;
    }
    .card {
    width:300px;
    height:200px;
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