<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.product.model.vo.Product" %>
<%
	String category=(String)request.getParameter("category");
	List<Product> products=(List<Product>)request.getAttribute("products");
	String pageBar=(String)request.getAttribute("pageBar");
	String pKeyword=(String)request.getParameter("pKeyword");
%>

<%@ include file="/views/common/header.jsp"%>

<section>
    <h2 class="pe title">관리자 페이지</h2> 
    <div class="content" style="display:flex">
        <div class="category">
            <ul class="pd"><a href="<%=request.getContextPath() %>/admin/adminMain.jsp" class="black">메인</a></ul><br>
            <ul class="pd">회원
                <li><a href="<%=request.getContextPath() %>/admin/user/manageUserMain.jsp" class="pc black">- 회원 관리</a></li>
                <li><a href="<%=request.getContextPath() %>/admin/order/manageOrderInfoDetail.jsp" class="pc black">- 주문 관리</a></li>
                <li><a href="<%=request.getContextPath() %>/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                <li><a href="<%=request.getContextPath() %>/admin/board/manageBoard" class="pc black">- 문의사항 관리</a></li>
            </ul><br>
            <ul class="pd">상품
                <li><a href="<%=request.getContextPath() %>/admin/manageProductMain" class="choice pc">- 상품 관리</a></li>
            </ul><br>
            <ul class="pd">설정
                <li><a href="<%= request.getContextPath()%>/admin/notice/manageNotice" class="pc black">- 공지사항 관리</a></li>
            </ul>
        </div>

        <div class="main"> 
            <h3 class="pd greenright">상품 관리</h3>
            <div id="user_content">
                <div style="display:flex">
                    <form id="searchCateFrm" action="" method="post" class="pb">
                        <select name="cateSelect" id="cateSelect">
                            <option value="전체">전체</option>
                            <option value="소파">소파</option>
                            <option value="침대">침대</option>
                            <option value="옷장">옷장</option>
                            <option value="서랍">서랍</option>
                            <option value="책상">책상</option>
                            <option value="의자">의자</option>
                        </select>
                    </form>
                    <form id="searchPro" action="" method="post">
                        <input type="text" name="pKeyword" placeholder="상품명/상품코드 검색">
                        <input type="submit" class="whitebtn" value="검색">
                    </form>
                </div>
                
                <table>
                    <colgroup> 
                        <!--col태그는 표에서 하나 이상의 td태그에 대해 속성값을 정의-->
                        <!-- 여기서는 각 열의 크기를 지정-->
                        <col width="3%">
                        <col width="10%"/>
                        <col width="15%"/>
                        <col width="7%"/>  <!--나머지 크기-->
                        <col width="12%"/>
                        <!-- <col width="8%"/> -->
                        <col width="8%" >
                        <col width="8%"/>
                        <col width="11%"/>
                        <col width="7%">
                    </colgroup>
        
                    <!--테이블 머리말 부분-->
                    <thead>
                        <th class="pe" scope="체크박스"><input type="checkbox" id="checkall"></th>
                        <th class="pd" scope="상품코드">상품코드</th> 
                        <th class="pd" scope="상품명">상품명</th>
                        <th class="pd" scope="이미지">이미지</th>
                        <th class="pd" scope="판매가">판매가</th>
                        <!-- <th class="pd" scope="분류">분류</th> -->
                        <th class="pd" scope="상태">상태</th><!--재고가 0이면 품절, 재고가 1개 이상이면 판매중-->
                        <th class="pd" scope="재고">재고(개)</th>
                        <th class="pd" scope="등록일">등록일</th>
                        <th class="pd" scope="수정">수정</th>
                    </thead>
                    <tbody>
                        <%if(!products.isEmpty()) {
                        	for(Product p : products){%>
		                        <tr class="pc">
		                            <td><input type="checkbox" name="chk"></td>
		                            <td><%=p.getpCode() %></td>
		                            <td><%=p.getpName() %></td>
		                            <td><img src="<%=request.getContextPath()%>/images/product/<%=p.getCateCode()%>/<%=p.getpCode()%>-1.jpg"></td>
		                            <td><%=p.getPrice() %>원</td>
		                            <%-- <td>
			                            <%switch(p.getCateCode().substring(0,2)){
			                            	case "C1": "소파"; break;
			                            	case "C2":%> <%=침대 %><%; break;
			                            	case "C3":%> <td><%=옷장 %></td><%; break;
			                            	case "C4":%> <td><%=서랍 %></td><%; break;
			                            	case "C5":%> <td><%=책상 %></td><%; break;
			                            	case "C6":%> <td><%=의자 %></td><%; 
			                            } %>
			                        </td> --%>
		                            <%if(p.getStock()>0) {%>
		                            	<td>판매중</td>
		                            <%} else{ %>
		                            	<td>품절</td>
		                            <%} %>
		                            <td><%=p.getStock()%></td>
		                            <td><%=p.getpEnrollDate() %></td>
		                            <td><button>수정</button></td> 
		                        </tr>
	                        <%}
                       	}%>
                    </tbody>   
                </table>
            </div>
            <div id="admin_pagebar" class="pagebar">
                <%=pageBar %>
            </div>
            <div id="btn">
                <input type="submit" class="blackbtn" value="상품 등록"><!--enrollProduct.jsp로 이동-->
                <input type="reset" class="blackbtn" value="상품 삭제">
            </div>
        </div> 
    </div>
</section>

<script>
	$(document).ready(function(){
	    $("#checkall").click(function(){
	        //상단의 체크박스 클릭 여부에 따라 전체체크/해제 로직
	        if($("#checkall").prop("checked")){
	            $("input[name=chk]").prop("checked",true);
	        }else{
	            $("input[name=chk]").prop("checked",false);
	        }
	    })
	});
	
	$("#searchCateFrm").change((e)=>{
		$("#searchCateFrm").attr("action","<%=request.getContextPath()%>/admin/manageProductMain");
		$("#searchCateFrm").append($("<input>").attr({
			type:"hidden",name:"cPage",value:"<%=request.getParameter("cPage")%>"
		}));
		$("#searchCateFrm").append($("<input>").attr({
			type:"hidden",name:"pKeyword",value:"<%=pKeyword %>"
		}));
		$("#searchCateFrm").submit();
	});
</script>

<style>
	.choice{
	    color:green;
	    text-decoration: underline;
	    font-weight: bold;
	}
	.greenright{
	    color:green;
	    font-size:28px;
	    margin:0;
	    font-weight: bold;
	}
	.title{
	    font-size:35px;
	    margin:5px 0 40px 40px;
	}
	.category{
	    width: 200px;
	    border-right: 1px solid black;
	    display: inline-block;
	}
	.category>ul{
	    font-size:larger;
	    list-style-type: none;
	    margin:15px 0 15px 0;
	}
	.category>ul>li{
	    font-size:80%;
	}
	.black{
	    color:black;
	    text-decoration: none;
	}
	.category a:first-child{
	    margin-top: 10px;
	}
	.category a:hover{
	    color:rgb(3, 177, 3);
	    text-decoration: underline;
	}
	.main{
	    width: 900px;
	    padding:0 0 0 30px;
	}
	#user_content{
	    min-height:400px;
	}
	#user_content{
	    min-height:400px;
	}
	table{
	    width:880px;
	    border-collapse:collapse;
	    border-top:2px solid #8d8d8d;
	}
	th{
	    padding:10px 8px; /*padding: vertical horizontal;*/
	    background:#f9f9f9;
	    color:#666;
	    border-bottom:1px solid #8d8d8d;
	}
	td{
	    padding:10px 8px; /*padding: vertical horizontal;*/
	    text-align:center;
	    line-height:1.25em;
	    color:#666;
	    border-bottom:1px solid #8d8d8d;
	}
	td.article{ /*article 클래스가 적용된 열만 좌측 정렬*/
	    text-align:left;
	}
	td>img{
		width:50px;
		height:50px;
		object-fit:cover;
	}
	#btn{
	    position:relative;
	    left:695px;
	    margin-top: 10px;
	}
	.blackbtn{
	    border:1px black solid;
	    background-color: black;
	    color:white;
	    height: 35px;
	    width:90px;
	}
	#searchCate{
	    margin:20px 0 10px 0;
	    position:relative;
	}
	#searchPro{
	    margin:20px 0 10px 0;
	    position:relative;
	    left:618px;
	}
	.whitebtn{
	    border:1px gray solid;
	    background-color: white;
	    position:relative;
	    top: 1px;
	    height:22px;
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
	body{
		margin:0px;
	}
</style>

<%@ include file="/views/common/footer.jsp"%>