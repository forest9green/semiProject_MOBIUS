<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

       <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/admin/adminMain" class="choice">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/admin/user/memberList"  class="pc black">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail.jsp" class="pc black">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc choice">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/admin/board/manageBoard" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/admin/manageProductMain" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%=request.getContextPath()%>/admin/notice/manageNotice" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">취소/교환/환불 관리</h3>
                    <div id="user_btn">
                        <button type="button">취소</button>
                        <button type="button">교환</button>
                        <button type="button" class="choice2">환불</button>
                    </div>
                    <div id="user_content">
                        <form id="searchPay" action="" method="post">
                            <select name="" id="">
                                <!--value: 해당 정보의 컬럼명-->
                                <option value="">주문날짜</option>
                                <option value="">주문번호</option>
                                <option value="">아이디</option>
                                <option value="">상품코드</option>
                            </select>
                            <input type="text" name="searchPay">
                            <input type="submit" class="whitebtn" value="검색">
                        </form>
                        <table id="output_table" class="pa" border=1>
                            <thead>
                                <tr>
                                    <th width=100>주문날짜</th>
                                    <th width=100>주문번호</th>
                                    <th width=100>아이디</th>
                                    <th width=100>상품코드</th>
                                    <th width=100>신청일</th>
                                    <th width=80>처리현황</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!--
                                    값이 없으면 <tr>환불 내역이 없습니다.</tr> 추가
                                    값이 있으면 출력하되, 튜플이 10개 이상일 경우 페이징처리 되도록 처리해야 함
                                -->
                                <tr>
                                    <td>날짜</td>
                                    <td>00000000-0</td>
                                    <td>user01</td>
                                    <td>C1P1</td>
                                    <td>21/05/20</td>
                                    <td>접수<button id="changebtn" class="innerwhitebtn">변경</button></td>
                                </tr>
                            </tbody>
                        </table>
                        <div id="stateDiv">
                            <!--db에 있는 특이처리현황의 값에 따라 checked가 유지되어 있어야 함-->
                            <form id="stateChange" class="disnone" action="">
                                <label><input type="radio">접수</label>
                                <label><input type="radio">확인</label>
                                <label><input type="radio">완료</label>
                                <input type="reset" class="blackbtn" value="취소" onclick="cancelChange();">
                                <input type="submit" class="blackbtn" value="확인">
                            </form><!--변경하는 것에 따라 특이처리현황이 완료로 변경되어야 함-->
                        </div>
                    </div>
                    <div id="admin_pagebar" class="pagebar">
                        <span><a href="">1</a></span>
                        <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
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
            .black:hover{
                text-decoration: underline;
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
                width:80px;
                height:40px;
                font-size: 15px;
                font-family: "Noto Sans KR";
                font-weight: 400;
            }
            #searchPay{
                margin:20px 0 0 0;
                position:relative;
                left:585px;
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
            #stateDiv{
                margin:15px 0 5px 0;
                display:flex;
                font-size: medium;
                align-items: center;
            }
            #stateDiv>*{
                margin-right:20px;
            }
            #stateDiv>form>*{
                margin-right: 10px;
            }
            .whitebtn{
                border:1px gray solid;
                background-color: white;
                position:relative;
                top: 1px;
                height:22px;
            }
            .innerwhitebtn{
                border:1px gray solid;
                background-color: white;
                height:30px;
                font-size:14px;
                float:right;
            }
            .blackbtn{
                border:1px black solid;
                background-color: black;
                color:white;
                height: 25px;
            }
            .disnone{
                display:none;
            }
            body{
				margin:0px;
			}
        </style>



<%@ include file="/views/common/footer.jsp"%>