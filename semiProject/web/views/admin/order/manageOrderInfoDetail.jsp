<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

       <section>
            <h2 class="pe title">관리자 페이지</h2> 
            <div class="content" style="display:flex">
                <div class="category">
                    <ul class="pd"><a href="<%=request.getContextPath() %>/views/admin/adminMain.jsp" class="black">메인</a></ul><br>
                    <ul class="pd">회원
                        <li><a href="<%=request.getContextPath() %>/views/admin/user/manageUserMain.jsp" class="pc black">- 회원 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail.jsp" class="pc choice">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/board/manageBoard.jsp" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/admin/manageProductMain" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%=request.getContextPath() %>/views/admin/notice/manageNotice.jsp" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">주문 관리</h3>
                    <div id="user_btn">
                        <button type="button" class="choice2">결제 내역</button>
                        <button type="button">주문 접수 내역</button>
                    </div>
                    <div id="user_content" class="pb">
                        <h4>상세 주문서</h4>
                        <div class="info" style="display:flex;">
                            <div class="cBox1">
                                <div class="cBox2" style="margin-bottom:10px">
                                    <ul>
                                        <li>주문번호 : </li>
                                        <li>주문날짜 : </li>
                                        <li>주문자아이디 : </li>
                                        <li>주문상태 : </li>
                                    </ul>
                                </div>
                                <div class="cBox2">
                                    <ul><h4>- 배송지 정보 -</h4>
                                        <li>받는 사람 : </li>
                                        <li>휴대폰번호 : </li>
                                        <li>일반전화번호 : </li>
                                        <li>우편번호 : </li>
                                        <li>주소 : </li>
                                        <li>배송 시 요청사항 : </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cBox1">
                                <div class="cBox2">
                                    <h4 style="margin-left:40px">- 주문 상품 정보 -</h4>
                                    <div><!--해당 주문번호에 대한 상품에 대한 정보를 list에 받아와서 for문으로 해당 div를 계속해서 추가하도록 함, 꼭 hr까지-->
                                        <hr>
                                        <ul>
                                            <li>상품코드 : </li>
                                            <li>상품명 :</li>
                                            <li>수량 : </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="cBox3" id="stateDiv">
                                    <button id="changebtn" class="whitebtn">결제 상태 변경</button>
                                    <form id="stateChange" class="disnone margint" action=""><!--db에 있는 주문상태의 컬럼값에 따라 checked가 유지되어 있어야 함-->
                                        <label><input type="radio">입금대기</label>
                                        <label><input type="radio">배송준비</label>
                                        <label><input type="radio">배송중</label>
                                        <label><input type="radio">배송완료</label><br>
                                        <label><input type="radio">취소</label>
                                        <label><input type="radio">교환</label>
                                        <label><input type="radio">환불</label>
                                        <div class="margint" style="float:right;margin-top:25px;">
                                            <input type="reset" class="blackbtn" value="취소" onclick="cancelChange();">
                                            <input type="submit" class="blackbtn" value="완료">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>    
        </section>
        <script>
            $("#changebtn").click(e=>{
                $("#stateChange").toggleClass("disnone");
            })
            const cancelChange=()=>{
                $("#stateChange").addClass("disnone");
            }
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
            #user_btn{
                margin: 30px 0 20px 0;
            }
            #user_btn>button{
                width:110px;
                height:40px;
                font-size: 15px;
                font-family: "Noto Sans KR";
                font-weight: 400;
            }
            #user_content{
                background-color: rgb(220, 248, 220);
                padding:10px;
            }
            #user_content>h4{
                font-family: "Noto Sans KR";
                font-weight: 500;
                font-size: large;
                margin:10px;
            }
            #user_content>.info{
                display:flex;
            }
            .info>.cBox1:first-child{
                background-color: rgb(220, 248, 220);
            }
            .cBox1{
                border:1px solid rgb(220, 248, 220);
                width:410px;
                margin:10px;
            }
            .cBox1 ul>li{
                margin-bottom: 10px;
            }
            .cBox2{
                background-color: white;
                padding:10px;
            }
            .cBox3{
                padding:10px;
                background-color: rgb(220, 248, 220);
            }
            #stateDiv{
                margin:15px 0 5px 0;
                font-size: medium;
                padding:0;
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
                height:35px;
                font-size:14px;
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
            .margint{
                margin-top: 15px;
            }
            body{
				margin:0px;
			}
        </style>



<%@ include file="/views/common/footer.jsp"%>