<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>
    
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@1&display=swap" rel="stylesheet">

<section>
	<h1 class="pe"> SHOWROOM </h1>
	
	<div id="sh_content">
		<div class="sh_menu mb">
	        <a href="<%=request.getContextPath()%>/showroom/srDetail?srMenu=침실"><img src="<%=request.getContextPath()%>/images/showroom/main/showroom_bedroom.jpg">
	        <div class="nonediv">BEDROOM</div></a>
		</div>
		<div class="sh_menu mb">
	        <a href="<%=request.getContextPath()%>/showroom/srDetail?srMenu=거실"><img src="<%=request.getContextPath()%>/images/showroom/main/showroom_livingroom.jpg">
	        <div class="nonediv">LIVINGROOM</div></a>
		</div>
		<div class="sh_menu mb">
	        <a href="" class="beDue"><img src="<%=request.getContextPath()%>/images/showroom/main/showroom_diningroom.jpg">
	        <div class="nonediv">DININGROOM</div></a>
		</div>
		<div class="sh_menu">
	        <a href="" class="beDue"><img src="<%=request.getContextPath()%>/images/showroom/main/showroom_bathroom.jpg">
	        <div class="nonediv">BATHROOM</div></a>
		</div>
		<div class="sh_menu">
	        <a href="" class="beDue"><img src="<%=request.getContextPath()%>/images/showroom/main/showroom_entrance.jpg">
	        <div class="nonediv">ENTRANCE</div></a>
		</div>
		<div class="sh_menu">
	        <a href="<%=request.getContextPath()%>/showroom/srDetail?srMenu=홈오피스"><img src="<%=request.getContextPath()%>/images/showroom/main/showroom_homeoffice.jpg">
	        <div class="nonediv">HOMEOFIICE</div></a>
		</div>
	</div>
</section>

<script>
	$(".beDue").click((e)=>{
		alert("상품 준비중입니다! 쇼룸 업데이트를 기대해주세요.");
	})
	
</script>
    
<style>
    section>h1{
    margin-top : -5px;
    margin-bottom: 60px;
    font-size : 40px;
	}
	#sh_content{
		display:flex;
		flex-wrap: wrap;
    	height:800px;
    	justify-content: space-around;
	}
    #sh_content a{
        text-decoration: none;
        color : black;  
	}
	.sh_menu>a{
		position:relative;
	}
    #sh_content img{
    	/* position:absolute; */
        width:350px ;
        height:350px;
        object-fit:cover;
        text-align:center;
        z-index:1;
    }
    .nonediv{
    	position:absolute;
    	background-color:rgba(71, 71, 71, 0.5);
    	color:white;
    	width:350px ;
        height:350px;
        top:-332px;
    	font-family: 'DM Serif Display', serif;
    	font-size:60px;
    	display:flex;
	    justify-content: center;
	    align-items: flex-end;
	    opacity:0;
	    transition: opacity 0.2s linear;
	    z-index:2;
    }
    .nonediv:hover{
    	opacity:1;
    }
    .mb{
    	margin-bottom:60px;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>