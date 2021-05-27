<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg=(String)request.getAttribute("msg");
	String script=(String)request.getAttribute("script");
	String queryString=(String)request.getAttribute("queryString")==null?"":(String)request.getAttribute("queryString");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시스템 메세지</title>
</head>
<body>
	<script>
		alert("<%=msg%>");
		<%=script!=null?script:""%>
		
		location.replace('<%=request.getContextPath()%><%=request.getAttribute("loc")%><%=queryString%>');
	</script>
</body>
</html>