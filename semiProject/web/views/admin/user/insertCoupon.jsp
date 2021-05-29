<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
		
		<form action="<%=request.getContextPath() %>/admin/user/insertCoupon" method="post">
			<input type="hidden" value="">
			쿠폰이름<input type="text" name="cName" >
			할인율<input type="text" name="cDiscount">
			<input type="submit" value="등록">
		</form>
		
		<style>
			form>input{
				display:inline-block;
			}
		</style>