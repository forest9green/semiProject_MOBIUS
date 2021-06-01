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
                  <li><a href="<%=request.getContextPath() %>/views/admin/cer/manageCERcancel.jsp" class="pc black">- 취소/교환/환불 처리</a></li>
                  <li><a href="<%=request.getContextPath() %>/views/admin/board/manageBoard.jsp" class="pc black">- 문의사항 관리</a></li>
              </ul><br>
              <ul class="pd">상품
                  <li><a href="<%=request.getContextPath() %>/admin/manageProductMain" class="pc choice">- 상품 관리</a></li>
                    </ul><br>
                    <ul class="pd">설정
                        <li><a href="<%= request.getContextPath()%>/admin/notice/manageNotice" class="pc black">- 공지사항 관리</a></li>
                    </ul>
         </div>

          <div class="main"> 
              <h3 class="pd greenright">상품 관리</h3>
              <div id="user_content">
                  <div class="pe">상품 등록</div>
                  <form>
                      <table class="enrolltable pc" style="text-align:left;">
                          <colgroup>
                              <col width=50>
                              <col width=300>
                          </colgroup>
                          <tr class="enheight">
                              <th>상품명</th>
                              <td><input type="text" style="height:30px;width:400px;"></td>
                          </tr>
                          <tr class="enheight">
                              <th>카테고리</th>
                              <td>
                                  <select class="odfselect">
                                      <option>소파</option>
                                      <option>침대</option>
                                      <option>옷장</option>
                                      <option>서랍</option>
                                      <option>책상</option>
                                      <option>의자</option>
                                  </select>
                              </td>
                          </tr>
                          <tr class="enheight">
                              <th>대표 이미지</th>
                              <td>
                                  <form action="upload.php" method="post" enctype="multipart/form-data">
                                      <input multiple="multiple" type="file" value="">
                                  </form>
                                  <button id="delete_image">삭제</a></td></button>
                              </td>
                          </tr>
                          <tr class="enheight">
                              <th>기본 옵션</th>
                              <th>
                                  <table class="ess_option">
                                      <tr>
                                          <td>사이즈</td>
                                          <td>재고</td>
                                          <td>상태</td>
                                      </tr>
                                      <tr>
                                          <td><input type="text"></td>
                                          <td><input type="text"></td>
                                          <td>	
                                              <select class="odfselect">
                                                  <option selected>판매 상태</option>
                                                  <option>구매 가능</option>
                                                  <option>구매 불가</option>
                                              </select>
                                          </td>  
                                      </tr>
                                  </table> 
                              </th>
                          </tr>
                          <tr class="enheight">
                              <th>가격(KRW)</th>
                              <td><input type="number"></td>
                          </tr>
                          <tr style="height:80px">
                              <th>배송비 설정</th>
                              <td>
                                  <p style="margin:0">*체크하지 않을 경우, 기본 배송비인 59,900원으로 설정됩니다.</p>
                                  <input type="checkbox" name="xxx" value="yyy">10,000원
                              </td>
                          </tr>
                          <tr>
                              <td colspan="2">
                                  <textarea rows ="15" cols ="110">상품의 상세정보 이미지를 등록해주세요.  (스마트에디터 사용)</textarea>
                              </td>
                          </tr>
                      </table>
                      <div id="btn">
                          <input type="reset" class="blackbtn" value="이전으로">
                          <input type="submit" class="blackbtn" value="상품 등록">
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
          margin:20px 0 0 0;
          min-height:400px;
      }
      #user_content>div:first-child{
          font-size:larger;
      }
      .enrolltable{
          padding:20px;
      }
      .enheight{
          height:50px;
      }
      .ess_option td{
          padding:0;
          text-align: center;
          font-weight:lighter;
      }
      #btn{
          position:relative;
          left:651px;
      }
      .blackbtn{
          border:1px black solid;
          background-color: black;
          color:white;
          height: 35px;
          width:90px;
      }
      body{
			margin:0px;
		}
  </style>



<%@ include file="/views/common/footer.jsp"%>