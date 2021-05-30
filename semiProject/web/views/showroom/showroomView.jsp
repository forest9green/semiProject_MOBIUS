<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.showroom.model.vo.ShowRoomDetail, java.text.NumberFormat" %>
<%
	String srMenu=(String)request.getAttribute("srMenu");
	List<ShowRoomDetail> showrooms=(List<ShowRoomDetail>)request.getAttribute("showrooms");
	String room="";
	NumberFormat nf = NumberFormat.getInstance();
%>
<%@ include file="/views/common/header.jsp"%>

<section>
    <h1 class="pe" style="font-size: 35px;"> SHOWROOM - <%=srMenu %> </h1>
    <div id="show_box">
		<%if(!showrooms.isEmpty()) {
			for(ShowRoomDetail s:showrooms) {
				switch(s.getSrMenu()){
					case "거실": room="living"; break;
					case "침실": room="bed"; break;
					case "홈오피스": room="homeoffice";
				}%>
		        <div class="showPhoto">
		            <div class="sPhoto"><img src="<%=request.getContextPath()%>/images/showroom/<%=room%>/<%=s.getSrImgPath()%>"></div>
		            <span class="spInfo" value="<%=s.getpCode()%>">
		                <img class="plus_img" src="https://img.icons8.com/officel/480/000000/plus.png">
		                <div class="pBox pc">
		                	<a href="<%=request.getContextPath()%>/product/productDetail?pCode=<%=s.getpCode()%>">
			                    <span><span style="font-size: large;font-weight: bold;"><%=s.getpName() %></span><br>
			                    <%=nf.format(s.getPrice()) %>원</span>
		                	</a>
		                </div>
		            </span>
		        </div>
	        <%}
		}%>
    </div>
    <div class="returnMainBtn">
		<button class="pb" onclick="location.assign('<%=request.getContextPath() %>/views/showroom/showroomMain.jsp')">목록으로</button>
    </div>
</section>

<script></script>

<style>
    #show_box{
        width:1000px;
        margin:0 auto;
        display:flex;
        justify-content: center;
        flex-wrap: wrap;
    }
    .showPhoto{
        margin:5px 0 5px 0;
    }
    .sPhoto>img{
        width:900px;
        object-fit: cover;
    }
    .spInfo{
        display:flex;
        position:relative;
        top:-400px;
        left:500px;
        width: 400px;
        margin:0;
    }
    .plus_img{
        width:30px;
        height:30px;
    }
    .pBox{
        height:50px;
        background-color: rgba(178, 179, 178, 0.8);
        padding:15px;
        position:relative;
        left:10px;
        opacity: 0;
        transition: opacity 0.2s linear;
    }
    .plus_img:hover+.pBox{
        opacity: 1;
    }
    .pBox:hover{
        opacity: 1;
    }
    .plus_img:hover{
    	cursor:pointer;
    }
    .returnMainBtn{
    	display:flex;
    	justify-content: center;
    }
    .returnMainBtn>button{
    	border:1px gray solid;
    	width:90px;
    	height:32px;
    	font-size:16px;
    }
    button:hover{
    	cursor:pointer;
    }
    .pBox>a{
    	text-decoration: none;
    	color:black;
    }
    .pBox span:hover{
    	text-decoration: underline;
    	text-weight:bold;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>