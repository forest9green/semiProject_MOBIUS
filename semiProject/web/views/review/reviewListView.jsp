<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.review.model.vo.Review" %>
<%
	List<Review> reviews=(List<Review>)request.getAttribute("reviews");
	String pagBar=(String)request.getAttribute("pageBar");
%>
<%@ include file="/views/common/header.jsp"%>
 <section>
     <div id="review_box" class="box">
         <p><h2 class="pe">REVIEW</h2></p>
             <div id="review_table_box">
                 <table id="review_table" class="pa" border=1>
                     <thead>
                         <tr>
                             
                             <th width=1000>상품정보</th>
                             <th width=850>구매일</th>
                             <th width=800>평균별점</th>
                             <th width=720>작성일</th>
                             <th width=200></th>
                         </tr>
                     </thead>
                     <tbody>
						<%if(!reviews.isEmpty()){ 
						for(Review r: reviews){%>
                         <tr>
                             <td><a href="<%=request.getContextPath()%>/review/"> <%= %></a></td>
                             <td> </td>
                             <td>
                                 <div class="starRev">
                                     <span class="starR">별1</span>
                                     <span class="starR">별2</span>
                                     <span class="starR">별3</span>
                                     <span class="starR">별4</span>
                                     <span class="starR">별5</span>
                                 </div>
                             </td>
                             <td></td>
                             <td>
                                 <ul id="rv-writtenday"></ul>
                                 <ul id="review_detail_btn">
                                     <li><button>수정</button></li>
                                     <li><button>삭제</button></li>
                                 </ul>
                             </td>
                         </tr>
                        <%} 
                     	}%>
                     </tbody>

                 </table>
             </div>
             <div id="pageBar" class="">
					<%= %>               
             </div>

     </div>
 </section>
<style>
    .starR{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 30px;
    height: 30px;
    display: inline-block;
    text-indent: -9999px;
    cursor: pointer;
    }
    .starR.on{background-position:0 0;
    }
    #review_box{
        width:1000px;
        margin: auto;
    }
    #review_box>p+h2{
        font-size: 30px;
    }
    #review_table_box{
        min-height: 180px;
    }
    #review_table{
        margin:30px 0 10px 0;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #review_table tr{
        height:40px;
    }
    #review_detail_btn{
        list-style-type: none;
        padding:0;
        margin:6px 0 6px 0;
        /* margin-left: 10px;
        margin-right: 10px; */
    }
    #review_detail_btn>li>button{
        border: 1px gray solid;
        margin: 4px 0 4px 0;
        width:50px;
        height:27px;
        text-align: center;
        background-color: white;
    }
    #review_btn button:first-child{
        border: 1px gray solid;
        width:50px;
        height:30px;
        text-align: center;
        background-color: white;
    }
    .blackbtn{
        position: relative;
        left:698px;
        border: 1px gray solid;
        width:120px;
        height:40px;
        text-align: center;
        color:white;
        background-color: black;
    }
    #review_box>p+h2{
        font-size: 30px;
    }
    .pagebar{
        width: 100px;
        margin: 10px auto;
    }
    .pagebar>span{
        margin:0 6px 0 6px;
    }
    .pagebar>span a{
        text-decoration: none;
    }
    .pagebar span>a:hover{
        color:rgba(123, 209, 159, 0.856);
        
    }
</style>
<script>
    $('.starRev span').click(function(){
    $(this).parent().children('span').removeClass('on');
    $(this).addClass('on').prevAll('span').addClass('on');
    return false;
    });
</script>

<%@ include file="/views/common/footer.jsp"%>            