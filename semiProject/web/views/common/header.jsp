<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.user.model.vo.User" %>
<%
	User loginUser = (User)session.getAttribute("loginUser");
	Cookie[] cookies=request.getCookies();
	String saveId=null;
	if(cookies!=null){
		for(Cookie c : cookies){
			if(c.getName().equals("saveId")){
				saveId=c.getValue();
				break;
			}
		}
	}

%>    
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>솔리디 :: SOLIDI</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<script src="https://kit.fontawesome.com/39b56e5d0c.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
    <div id="container">
        <!--header 시작-->
        <header>
            <div id="header-top">
                <span>
                    <form id="search" action="" method="get">
                        <input type="search" name="searchheader">
                        <input type="submit" value="&#xf002;">
                    </form>
                </span>
                <span>
                    <ul>
                       <%if(loginUser!=null&&loginUser.getUserId().equals("admin")){ %> 
                        <li class="pa"><a href="">관리자페이지</a></li>
                       <%}else{ %>
                       	<li class="pa"><a href="">mypage</a></li>	
                       <%} %>
                     <%if(loginUser==null) {%>
                        <li class="pa"><a href="<%=request.getContextPath()%>/views/member/loginPage.jsp">Login</a></li>
                     <%}else{ %>
                        <li class="pa"><a href="<%=request.getContextPath()%>/user/logout">Logout</a></li>
                     <%} %>
                        <li class="pa"><a href="<%=request.getContextPath()%>/user/memberenrll" >Join</a></li>
                        <li class="pa"><a href="">Order</a></li>
                        <li class="pa"><a href="">Cart</a></li>
                    </ul>
                </span>
            </div>
            <div id="header-bottom">
                <span>
                    <ul>
                        <li>
                            <ul id="item-category">
                                <li class="pe">ITEM</li>
                                <li><a href="">전체</a></li>
                                <li><a href="">세일</a></li>
                                <li><a href="">소파</a></li>
                                <li><a href="">침대</a></li>
                                <li><a href="">옷장</a></li>
                                <li><a href="">책상</a></li>
                                <li><a href="">의자</a></li>
                            </ul>
                        </li>
                        <li class="pe" style="padding-bottom: 2px;"><a href="">SHOWROOM</a></li>
                        <li class="pe"><a href="">NOTICE</a></li>
                    </ul>
                </span>
                <span><h1 class="pf"><a href="<%=request.getContextPath() %>">SOLIDI</a></h1></span>
            </div>        
        </header>
        
        
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