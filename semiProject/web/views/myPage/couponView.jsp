<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.coupon.model.vo.Coupon" %>
<%
	List<Coupon> coupons=(List<Coupon>)request.getAttribute("coupons");
	String pageBar=(String)request.getAttribute("pageBar");
%>
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="coupon_box" class="box">
        <p><h2 class="pe">COUPON LIST</h2></p>
        <div id="coupon_table_box">
            <table id="coupon_table" class="pa" border>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th width=450>쿠폰명</th>
                        <th>구매금액(이상)</th>
                        <th>할인율</th>
                        <th>유효기간</th>
                    </tr>
                </thead>
                <tbody>
                    <%if(!coupons.isEmpty()) {
                    	for(Coupon c:coupons) {%>
                    		<tr>
                    			<td><%=c.getcNo().substring(1) %></td>
                    			<td><%=c.getcName() %></td>
                    			<td><%=c.getcLimit() %></td>
                    			<td><%=(int)(c.getcDiscount()*100)+"%" %></td>
                    			<td><%=c.getcIssueDate()+" ~ "+c.getcFinishDate() %></td>
                    		</tr>
                    	<%}
                    } else {%>
                    	<tr>
                    		<td colspan="5">보유한 쿠폰 내역이 없습니다.</td>
                    	</tr>
                    <%} %>
                </tbody>
            </table>
        </div>
        <div id="c_pagebar" class="pagebar">
            <%=pageBar %>
            <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
        </div>
    </div>
</section>

<style>
    #coupon_box{
        width:1000px;
        height:800px;
        margin:50px auto;
    }
    #coupon_table_box{
        min-height: 200px;
    }
    #coupon_table{
        margin-top: 30px;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #coupon_table tr{
        height:40px;
    }
    #coupon_box>p+h2{
        font-size: 30px;
    }
    
    /*pageBar 디자인*/
	.pagebar{
	    margin: 50px auto;
	    display:flex;
	    justify-content: center;
	}
	.pagebar>span, .pagebar>a{
	    margin:0 6px 0 6px;
	}
	.pagebar>a{
	    text-decoration: none;
	    color:black;
	}
	.pagebar>span{
		color:rgba(123, 209, 159);
	}
	.pagebar>a:hover{
	    color:rgba(123, 209, 159);
	}
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>