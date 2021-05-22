<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.user.model.vo.User" %>    
<%
	User result=(User)request.getAttribute("result");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
<style>
	div#checkId-container{text-align:center;padding-top:50px;}
	span#duplicated{color:red;font-weight:bolder;}
	span#success{color:lightgreen;font-weight:bolder;}
	img{
		width:300px;
		text-align="center";
		margin-bottom:30px;
	}
</style>
</head>
<body>
	<div id="checkId-container">
		<%if(result==null){ %>
			<div>
				<img src="<%=request.getContextPath()%>/images/mainLogo.png">
			</div>
			[<span class="pd" id="success"><%=request.getParameter("userId") %></span>]는 사용가능합니다.	
			<br><br>
			<button type="button" onclick="fn_close();" >사용</button>
		<%}else{ %>
			<div>
				<img src="<%=request.getContextPath()%>/images/mainLogo.png">
			</div>
			[<span class="pd" id="duplicated"><%=request.getParameter("userId") %></span>]는 사용중입니다.
			<br><br>

			<form action="<%=request.getContextPath() %>/user/checkDuplicateId" method="post">
				<input type="text" name="userId" id="userId">
				<input type="submit" value="중복검사" >
			</form>
		<%} %>
	</div>
	
	<script>
		const fn_close=()=>{
			//1. 현재값을 부모창의 userId_에 대입
			const userId='<%=request.getParameter("userId")%>';
			//사용가능한 아이디면 아이디입력창에 대입시키기
			opener.memberEnrollFrm.userId.value=userId;
			//비밀번호 입력창으로 포커스
			opener.memberEnrollFrm.password.focus();
			//윈도우창 닫기
			close();
		}
	</script>
	
	
</body>
</html>