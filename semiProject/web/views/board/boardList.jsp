<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.board.model.vo.Board" %>
<%
	List<Board> boards=(List<Board>)request.getAttribute("boards");
	String pageBar=(String)request.getAttribute("pageBar");
/* 	out.print(boards);
 */
%>
<%@ include file="/views/common/header.jsp"%>
        
<section style="font-family: 'Noto Sans KR';">
    
    <h3 style="font-size: 30px;">문의사항</h3>
    <div class="ql_v_top">
        <table class="qlv_ct" border="1" style="border-collapse:collapse">
            <tr>
<!--                 <th style="padding:7px; cursor:pointer; width:50px;">전체</th>
               <th style="padding:7px; cursor:pointer; width:100px;">교환환불</th>
                <th style="padding:7px; cursor:pointer; width: 50px;">상품</th>
                <th style="padding:7px; cursor:pointer; width: 50px;">배송</th>
                <th style="padding:7px; cursor:pointer; width:100px;">기타문의</th> -->
        </table>
            
            <div class="ql_v_right">
               <a href="<%=request.getContextPath()%>/myPage/board/boardform?userId=<%=loginUser.getUserId()%>" style="text-decoration:none; color:black">문의하기</a> 
            </div>
    </div>    
    <table class="qlv_list" border="1" height="50px">
        <thead>
        <tr>
            <th class="qlv_list_first">번호</th>
            <th class="qlv_list_second">제목</th>
            <th class="qlv_list_third">작성ID</th>
            <th class="qlv_list_fourth">날짜</th>
            <th class="qlv_list_fifth">현황</th>
        </tr>
        </thead>
        <tbody>
        	<% if(!boards.isEmpty()){ 
        	 for (Board b: boards){%>
            <tr>   
                <td><%=b.getbNo()%><!-- 1 --></td>
                <td style="padding:5px;">
                	<a href="<%= request.getContextPath()%>/board/boardview?userId=<%=b.getUserId()%>&bNo=<%=b.getbNo()%>" style="text-decoration-line: blink; text-decoration: none; color:black;">
                	<%=b.getbTitle()%>
                	</a>
                </td>
                <td><%=b.getUserId()%></td>
                <td><%=b.getbWriteDate()%></td>
                <td>진행중</td>
            </tr> 
<%--             <tr>
                <td><%=b.getbNo()%><!-- 2 --></td>
                <td style="padding:5px;">
                	<a href="<%= request.getContextPath()%>/board/boardview?no=<%=b.getbNo()%>">
                	<%=b.getbTitle()%>
                	</a>
                </td>
                <td><%=b.getUserId()%></td>
                <td><%=b.getbWriteDate()%></td>
                <td>진행중</td>
            </tr> --%>
            <%} 
            }%>
        </tbody>
    </table>
   <div class="qlv_last">
        <select style="height: 30.5px; margin-top:11.5px; width:80px">
            <option value="bTitle">제목</option>
        </select>
        <form id="searchql" action="" method="get">
            <input type="search" name="searchql" style="height:30px; width:250px;" >
            <input type="submit" id="submitql" value="검색">
        </form>
    </div>
    	<div id="pageBar" class="pageBar">
    		<%=request.getAttribute("pageBar") %>
    	</div>
</section>    

<style>
/*pageBar 디자인*/
    .pageBar{
        margin: 50px auto;
        display:flex;
        justify-content: center;
    }
    .pageBar>span, .pagebar>a{
        margin:0 6px 0 6px;
    }
    .pageBar>a{
        text-decoration: none;
        color:black;
    }
    .pageBar>span{
        color:rgba(123, 209, 159);
    }
    .pageBar>a:hover{
        color:rgba(123, 209, 159);
    }
    .qlv_ct{
        margin-left: 56px;
    }
    .ql_v_right{
        background-color: #ddd;
        padding:7px;
        margin-right:25px;
        margin-left:25px;
        text-align:center;
        position: relative;
        right: 34px;
    }
    .qlv_last{
        display:flex;
        margin-left:350px;
        
    }
    .qlv_list_fifth{
        width:100px;
    }
    .qlv_list_fourth{
       width:70px;
    }
    .qlv_list_third{
        width:100px;
    }
    .qlv_list_second{
        width:300px;
        padding:15px;
    }
    .qlv_list_first{
        width:70px;
    }
    .qlv_list{
       width:1000px;
       margin:50px auto;
       text-align: center;
       border-collapse: collapse;
    }
    .ql_v_top{
        display: flex;
        justify-content: space-between;
    }
    #submitql{
        font-family: "Font Awesome 5 Free";
        font-weight: 900;
        width: 50px;
        height: 30px;
        margin-left: -3px;
        margin-top: 10px;
        position: relative;
        top: 1.6px;
    }
    #bo_cate a {
    display: block;
    line-height: 26px;
    padding: 3px 25px;
    color: #666;
    border: 1px solid #ddd;
    }
    #bo_cate ul {
        margin-left: 1px;
        zoom: 1;
    }

</style>

<script>
 const fn_boardInsert=()=>{
	 location.assign("<%=request.getContextPath()%>/myPage/board/boardinsert")
 }
</script>

<%@ include file="/views/common/footer.jsp"%>