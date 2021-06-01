<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = (String)request.getAttribute("userId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 등록</title>

</head>
<body>
	<div id="checkId-container">
			<div>
				<img src="<%=request.getContextPath()%>/images/mainLogo.png" method="post" id="insertCoupon">
			</div>
			<div id="insertForm">
				<form action="<%=request.getContextPath()%>/admin/user/insertCoupon" method="post">
					<input type="hidden" value="<%=userId %>" name="userId">
					쿠폰명 <input type="text" name="cName" id="cName" required><br>
					할인율 <input type="text" name="cDiscount" id="cDiscount" placeholder="0.00" required><br>
					종료일 <input type="text" name="cFinishDate" id="cFinishDate" placeholder="몇일간 유효한지" required><br>
					제한금액<input type=text name="cLimit" id= cLimit required><br>
					<input type="submit" value="등록" id="closebox">
				</form>	
			</div>
	</div>
	
	
	<script>
		$("#closebox").click(function(){
			close();
		})
	</script>
	
	
	<style>
	div#checkId-container{text-align:center;padding-top:50px;}
	span#duplicated{color:red;font-weight:bolder;}
	span#success{color:lightgreen;font-weight:bolder;}
	img{
		width:300px;
		text-align="center";
		margin-bottom:30px;
	}
	
	#insertForm{
		display:block
	}
	
</style>
	
</body>
</html>
	