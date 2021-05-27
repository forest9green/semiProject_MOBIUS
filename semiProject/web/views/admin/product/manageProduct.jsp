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
                        <li><a href="<%=request.getContextPath() %>/views/admin/order/manageOrderInfoDetail.jsp" class="pc black">- 주문 관리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                        <li><a href="<%=request.getContextPath() %>/views/admin/board/manageBoard.jsp" class="pc black">- 문의사항 관리</a></li>
                    </ul><br>
                    <ul class="pd">상품
                        <li><a href="<%=request.getContextPath() %>/views/admin/product/manageProduct.jsp" class="choice" class="pc black">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%=request.getContextPath() %>/views/admin/notice/manageNotice.jsp" class="pc black">- 공지사항 관리</a></li>
                    </ul>
                </div>

                <div class="main"> 
                    <h3 class="pd greenright">상품 관리</h3>
                    <div id="user_content">
                        <div style="display:flex">
                            <form id="searchCate" action="" method="post">
                                <select name="" id="">
                                    <option value="">전체</option>
                                    <option value="">소파</option>
                                    <option value="">침대</option>
                                    <option value="">옷장</option>
                                    <option value="">서랍</option>
                                    <option value="">책상</option>
                                    <option value="">의자</option>
                                </select>
                            </form>
                            <form id="searchPro" action="" method="post">
                                <input type="text" name="searchPay" placeholder="상품명/상품코드 검색">
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
                                <col width="8%"/>
                                <col width="8%" >
                                <col width="8%"/>
                                <col width="10%"/>
                                <col width="8%">
                            </colgroup>
                
                            <!--테이블 머리말 부분-->
                            <thead>
                                <th class="pe" scope="체크박스"><input type="checkbox" name="xxx" value="yyy" checked></th>
                                <th class="pd" scope="상품코드">상품코드</th> 
                                <th class="pd" scope="상품명">상품명</th>
                                <th class="pd" scope="이미지">이미지</th>
                                <th class="pd" scope="판매가">판매가</th>
                                <th class="pd" scope="분류">분류</th>
                                <th class="pd" scope="상태">상태</th><!--재고가 0이면 품절, 재고가 1개 이상이면 판매중-->
                                <th class="pd" scope="재고">재고</th>
                                <th class="pd" scope="등록일">등록일</th>
                                <th class="pd" scope="수정">수정</th>
                            </thead>
                
                            <!--테이블 내용 부분-->
                            <tbody>
                                <!--값 갯수에 따라 tr이 추가됨, 한 페이지에 10개씩 페이징 처리-->
                                <tr class="pc">
                                    <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                                    <td>C1P1</td>
                                    <td>소파1</td>
                                    <td><img src="./img/sofa_small.jpg"></td>
                                    <td>180,000원</td>
                                    <td>소파</td>
                                    <td>판매중</td>
                                    <td>15개</td>
                                    <td>2021.05.13</td>
                                    <td><button>수정</button></td> 
                                </tr>
                            </tbody>   
                        </table>
                    </div>
                    <div id="admin_pagebar" class="pagebar">
                        <span><a href="">1</a></span>
                        <!--출력할 데이터 개수에 따라 페이지가 추가되도록 함-->
                    </div>
                    <div id="btn">
                        <input type="submit" class="blackbtn" value="상품 등록"><!--enrollProduct.jsp로 이동-->
                        <input type="reset" class="blackbtn" value="상품 삭제">
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


<%@ include file="/views/common/footer.jsp"%>