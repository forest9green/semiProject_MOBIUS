<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>
    

    
    <section>
    
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="" class="pc black">- 회원 관리</a></li>
                        <li><a href="" class="pc black">- 주문 관리</a></li>
                        <li><a href="" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="" class="pc choice">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">공지사항 관리</h3>
                    <div id="user_content">
                        <form action="<%=request.getContextPath() %>/admin/notice/noticeWriteEnd" method="post" enctype="multipart/form-data">
                            <div class="pb">
                                <span class="pb">제목</span>
                                <input type="text" name="n_Title" id="n_Title">
                                <h3>내용</h3>
                                <textarea name="n_Content" id="n_Content" cols="118" rows="10"></textarea><br>
                                <span class="pb">썸네일</span>
                                <input type="file" name="upfile">
                            </div>
                            <div id="btn">
                                <input type="reset" class="blackbtn" value="취소">
                                <input type="submit" class="blackbtn" value="확인">
                            </div>
                        </form>
                    </div>
                </div>
            </div>    
        </section>
        
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
                margin-top: 30px;
                min-height:400px;
            }
            #user_content textarea{
                margin-bottom: 20px;
            }
            #user_content span{
                font-size: 1.17em;
                font-weight: bold;
                margin-right: 10px;
            }
            #output_table{
                border-collapse: collapse;
                width:880px;
                margin:20px 0 10px 0;
            }
            #qbox{
                border: 1px gray solid;
                padding:20px;
                width:830px;
            }
            #btn{
                position:relative;
                left:753px;
                margin-top: 10px;
            }
            .blackbtn{
                border:1px black solid;
                background-color: black;
                color:white;
                height: 35px;
                width:60px;
            }
            body{
				margin:0px;
			}
        </style>
        <script></script>
        
<%@ include file="/views/common/footer.jsp"%>