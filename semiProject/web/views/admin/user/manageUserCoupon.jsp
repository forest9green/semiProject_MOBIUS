<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

        <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/views/admin/adminMain.jsp" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/views/admin/user/manageUserMain.jsp" class="pc choice">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail.jsp" class="pc black">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/board/manageBoard.jsp" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/views/admin/product/manageProduct.jsp" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%=request.getContextPath() %>/views/admin/notice/manageNotice.jsp" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">회원 관리</h3>
                    <div id="user_btn">
                        <button type="button">회원 정보</button>
                        <button type="button" class="choice2">쿠폰</button>
                        <button type="button">적립금</button>
                        <button type="button">구매내역</button>
                    </div>
                    <div id="user_content">
                        <table id="output_table" class="pa" border=1>
                            <thead>
                                <tr>
                                    <th width=60><input type="checkbox" id="checkall"></th>
                                    <th width=310>쿠폰명</th>
                                    <th width=80>할인율</th><!--할인율값*100+"%" 로 출력-->
                                    <th width=200>발급일</th>
                                    <th width=200>종료일</th>
                                    <th width=90>사용여부</th><!--0이면 "미사용", 1이면 "사용" 으로 출력-->
                                </tr>
                            </thead>
                            <tbody>
                                <!--
                                    값이 없으면 <tr>쿠폰 내역이 없습니다.</tr> 추가
                                    값이 있으면 출력하되, 튜플이 10개 이상일 경우 페이징처리 되도록 처리해야 함
                                -->
                                <tr>
                                    <td><input type="checkbox" name="chk"></td>
                                    <td>쿠폰명</a></td>
                                    <td>10%</td>
                                    <td>쿠폰 발급일</td>
                                    <td>쿠폰 종료일</td>
                                    <td>사용 여부</td>
                                </tr>
                            </tbody>
                        </table>
                        <div id="btn">
                            <button type="button" class="pb" style="background-color: white;">선택 삭제</button>
                            <button type="button" class="pb blackbtn">등록</button>
                            <!--open()으로 작은 window창 열어서 등록 처리-->
                        </div>
                    </div>
                    <div id="admin_pagebar" class="pagebar">
                        <span><a href="">1</a></span>
                        <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
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
            })
        </script>


        <style>
            .choice{
                color:green;
                text-decoration: underline;
                font-weight: bold;
            }
            .choice2{
                background-color: rgb(56, 163, 56);
                color:white;
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
            #user_btn{
                margin: 30px 0 20px 0;
            }
            #user_btn>button{
                width:90px;
                height:40px;
                font-size: 15px;
                font-family: "Noto Sans KR";
                font-weight: 400;
            }
            #output_table{
                margin:10px 0 10px 0;
                width:880px;
                text-align: center;
                border-collapse: collapse;
                border-left: none;
                border-right: none;
            }
            #output_table tr{
                height:40px;
            }
            .idHover:hover{
                text-decoration: underline;
            }
            #btn>button{
                border: 1px gray solid;
                width:70px;
                height:32px;
                text-align: center;
            }
            .blackbtn{
                position: relative;
                left:734px;
                background-color:black;
                color:white;
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
            body{
				margin:0px;
			}
        </style>


<%@ include file="/views/common/footer.jsp"%>