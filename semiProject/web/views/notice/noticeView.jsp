<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.notice.model.vo.Notice" %>
<%
	Notice n=(Notice)request.getAttribute("notice");
%>    

    
<%@ include file="/views/common/header.jsp"%>

<section>
	<h1 class="pe" style="font-size: 35px; padding-left:5%;padding-bottom:2%; padding-right:5%;" > NOTICE </h1>
        
	<div class="pd" class="notice_title" style="font-size: 30px; padding-top:5%; padding-left:5%;"><%=n.getnTitle() %>
		<div class="pc" class="notice_date" style="font-size : 18px; padding-left:52%;display:inline-flex" ><%=n.getnDate() %></div>
        <hr class=hr_right style="margin-right:5%">
    </div>
        
    <div  class="pb" class="notice_content" style="font-size : 15px; padding-top:5%; padding-left:5%; padding-bottom:5%" >
    <div><img class="notice" style="margin-left:200px;" src="<%=request.getContextPath()%>/upload/notice/<%=n.getnImgPath()%>" ></div>
    <div class="pc" style="text-align:center;margin-top:100px;"><%=n.getnContent() %></div>
    </div>

    <a href="<%=request.getContextPath()%>/notice/noticeMain" style="text-decoration: none;"><div class="return_list pd" style="margin-left:45%; margin-bottom:10%;">목록으로</div> 
</section>

<style>

	a {
	color:black;text-decoration:none;
	}
	
    .box{
        width:1100px;
        height:700px;
        border:1px black solid;
    }
    .return_list{
        width:160px;
        height:30px;
        font-size: 18px;
        border:black solid 1px;
        text-align:center;
        }
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>