<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.mileage.model.vo.Mileage, java.text.NumberFormat" %>
<%
	List<Mileage> mileages=(List<Mileage>)request.getAttribute("mileages");
	String pageBar=(String)request.getAttribute("pageBar");
	NumberFormat nf = NumberFormat.getInstance();
%>
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="mile_box">
        <p><h2 class="pe">MILEAGE</h2></p>
        <div id="mile_table_box">
            <div id="total_mile">
                <div>
                    <span class="pd">사용 가능한 적립금</span>
                    <span class="pa"><%=loginUser.getMileage() %>원</span>
                </div>
            </div>
            <table id="mile_table" class="pa" border>
                <thead>
                    <tr>
                        <th width=225>주문 번호</th>
                        <th width=180>주문 날짜</th>
                        <th width=145>적립금</th>
                        <th width=450>내용</th>
                    </tr>
                </thead>
                <tbody>
                    <%if(!mileages.isEmpty()) {
                    	for(Mileage m:mileages){%>
                    		<tr>
                    			<td><%=m.getOrderNo() %></td>
                    			<td><%=m.getOrderNo().substring(0,m.getOrderNo().indexOf('-')) %></td>
                    			<%if(m.getmPlus()!=0) {%>
                    				<td><%="+"+nf.format(m.getmPlus()) %></td>
                    			<%}else{%>
                    				<td><%="-"+nf.format(m.getmMinus()) %></td>
                    			<%} %>
                    			<td><%=m.getmContent() %></td>
                    		</tr>
                    	<%}
                    } else{%>
                    	<tr>
                    		<td colspan="4">적립금 내역이 없습니다.</td>
                    	</tr>
                    <%} %>
                </tbody>
            </table>
        </div>
        <div id="c_pagebar" class="pagebar">
            <%=pageBar %>
        </div>
    </div>
</section>

<style>
    #mile_box{
        width:1000px;
        margin:0px auto;
    }
    #mile_table_box{
        min-height: 270px;
    }
    #total_mile{
        margin-top: 30px;
        width:1000px;
        height:70px;
        border:rgb(36, 36, 36) solid 1px;
    }
    #total_mile>div{
        display:flex;
        justify-content: center;
        margin: 23.4px 0 23.4px 0;
    }
    #total_mile>div>span{
        margin:0 15px 0 15px;
        font-size: 18px;
    }
    #mile_table{
        margin-top: 10px;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #mile_table tr{
        height:40px;
    }
    #mile_box>p+h2{
        font-size: 30px;
        margin-top:0px;
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