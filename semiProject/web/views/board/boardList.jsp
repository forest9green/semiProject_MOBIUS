<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.board.model.vo.Board" %>
<%
	List<Board> boards=(List<Board>)request.getAttribute("boards");
	String pageBar=(String)request.getAttribute("pageBar");


%>
<%@ include file="/views/common/header.jsp"%>
        
<section style="font-family: 'Noto Sans KR';">
    
    <h3 style="font-size: 30px;">문의사항</h3>
    <div class="ql_v_top">
        <table class="qlv_ct" border="1" style="border-collapse:collapse">
            <tr>
                <th style="padding:7px; cursor:pointer; width:50px;">전체</th>
                <th style="padding:7px; cursor:pointer; width:100px;">교환환불</th>
                <th style="padding:7px; cursor:pointer; width: 50px;">상품</th>
                <th style="padding:7px; cursor:pointer; width: 50px;">배송</th>
                <th style="padding:7px; cursor:pointer; width:100px;">기타문의</th>
            </tr>
        </table>
            
            <div class="ql_v_right" onclick="fn_boardInsert();">
               <a href="/mypage/board/insert" style="text-decoration:none;">문의하기</a> 
            </div>
    </div>    
    <table class="qlv_list" border="1" height="50px">
        <thead>
        <tr>
            <th class="qlv_list_first">번호</th>
            <th class="qlv_list_second">제목</th>
            <th class="qlv_list_third">작성자</th>
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
                	<a href="<%= request.getContextPath()%>/board/boardview?no=<%=b.getbNo()%>">
                	<%=b.getbTitle()%><!-- 배송언제오나요? -->
                	</a>
                </td>
                <td><%=b.getUserId()%><!-- 양호준 --></td>
                <td><%=b.getbWriteDate()%><!-- 0416 --></td>
                <td>답변완료</td>
            </tr> 
            <tr>
                <td><%=b.getbNo()%><!-- 2 --></td>
                <td style="padding:5px;"><!-- 환불가능? -->
                	<a href="<%= request.getContextPath()%>/board/boardview?no=<%=b.getbNo()%>">
                	<%=b.getbTitle()%><!-- 배송언제오나요? -->
                	</a>
                </td>
                <td><%=b.getUserId()%><!-- 양호준 --></td>
                <td><%=b.getbWriteDate()%><!-- 0416 --></td>
                <td>진행중</td>
            </tr>
            <%} 
            }%>
        </tbody>
    </table>
   <div class="qlv_last">
        <select style="height: 30px; margin-top:11px; width:80px">
            <option value="bTitle">제목</option>
        </select>
        <form id="searchql" action="" method="get">
            <input type="search" name="searchql" style="height:30px; width:250px;" >
            <input type="submit" id="submitql" value="">
        </form>
    </div>
    	<div id="pageBar">
    		<%=pageBar %>
    	</div>
</section>    

<style>
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
        margin-left: -6px;
        margin-top: 10px;
        position: relative;
        top: 1.1px;
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
	 location.assign("<%=request.getContextPath()%>/mypage/board/boardinsert")
 }
</script>

<%@ include file="/views/common/footer.jsp"%>