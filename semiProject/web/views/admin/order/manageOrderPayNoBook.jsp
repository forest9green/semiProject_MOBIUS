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
                        <li><a href="<%=request.getContextPath() %>/views/admin/product/manageProduct.jsp" class="pc black">- 상품 관리</a></li>
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
                        <div class="cBox1">
                            <ul><h4>무통장 입금 정보</h4>
                                <li>주문번호 : </li>
                                <li>주문일시 : </li>
                                <li>결제금액 : </li>
                                <li>입금자명 : </li>
                                <li>결제여부 :</li>
                            </ul>
                        </div>
                        <div id="stateDiv">
                            <button id="changebtn" class="whitebtn">결제 상태 변경</button>
                            <!--db에 있는 결제여부의 컬럼값에 따라 checked가 유지되어 있어야 함-->
                            <form id="stateChange" class="disnone" action="">
                                <label><input type="radio">완료</label>
                                <label><input type="radio">미완료</label>
                                <input type="reset" class="blackbtn" value="취소" onclick="cancelChange();">
                                <input type="submit" class="blackbtn" value="확인">
                            </form><!--결제 상태를 완료로 변경하면 결제여부 컬럼이 완료로 변경되어야 함-->
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
            #user_content h4{
                font-family: "Noto Sans KR";
                font-weight: 500;
                font-size: large;
            }
            .cBox1{
                border:1px solid rgb(220, 248, 220);
                background-color: white;
            }
            .cBox1>ul{
                list-style-type: decimal;
            }
            .cBox1>ul>li{
                margin-bottom: 10px;
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
        </style>



<%@ include file="/views/common/footer.jsp"%>