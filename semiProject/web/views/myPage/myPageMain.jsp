<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="my_profile">
        <span><h2 class="pe">안녕하세요, <%=loginUser.getUserName() %>님!</h2></span>
        <span class="pc">쿠폰과 적립금으로 더욱 합리적인 쇼핑을 즐겨보세요.</span>
        <table id="cou_mile" class="pc">
            <tr>
                <td style="text-align: end;">적립금</td>
                <td><%=loginUser.getMileage() %>원</td>
                <td style="text-align: start"><input type="button" class="inquiry_btn pb" value="조회" onclick="fn_moveMileageView();"></td>
                <td>쿠폰</td>
                <td>0개</td>
                <td style="text-align: start"><input type="button" class="inquiry_btn pb" value="조회" onclick="fn_moveCouponView();"
                style="margin-left: 10px;"></td>
            </tr>
        </table>
    </div>
    <div id="recent_pd">
        <h2 class="pe">최근 조회한 상품</h2>
        <ul style="padding:0">
            <li>
                <div class="photobox">
                    <a href=""></a>
                </div>
            </li>
            <li>
                <div class="photobox">
                    <a href=""></a>
                </div>
            </li>
            <li>
                <div class="photobox">
                    <a href=""></a>
                </div>
            </li>
            <li>
                <div class="photobox">
                    <a href=""></a>
                </div>
            </li>
        </ul>
    </div>
    <div id="my_menu">
        <ul class="pb" style="padding:0">
            <li>
                <div class="box">
                    <a href="">
                        <h3><strong>ORDER</strong></h3>
                        <p style="font-size: 90%;">고객님께서 주문하신 상품의<br>주문내역을 확인할 수 있습니다.</p>
                    </a>
                </div>
            </li>
            <li>
                <div class="box">
                    <a href="">
                        <h3><strong>WISH LIST</strong></h3>
                        <p style="font-size: 90%;">관심 상품으로 등록하신<br>상품의 목록을 보여드립니다.</p>
                    </a>
                </div>
            </li>
            <li>
                <div class="box">
                    <a href="">
                        <h3><strong>CART</strong></h3>
                        <p style="font-size: 90%;">고객님의 장바구니를<br>확인할 수 있습니다.</p>
                    </a>
                </div>  
            </li>
            <li>
                <div class="box">
                    <a href="">
                        <h3><strong>REVIEW</strong></h3>
                        <p style="font-size: 90%;">고객님께서 작성하신<br>리뷰를 확인할 수 있습니다.</p>
                    </a>
                </div>
            </li>
            <li>
                <div class="box">
                    <a href="<%=request.getContextPath()%>/myPage/board/boardlist?userId=<%=loginUser.getUserId()%>">
                        <h3><strong>BOARD</strong></h3>
                        <p style="font-size: 90%;">고객님께서 작성하신<br>문의 게시물을 관리하는 공간입니다.</p>
                    </a>
                </div>
            </li>
            <li>
                <div class="box">
                    <a href="<%=request.getContextPath()%>/myPage/member/PwCk.jsp">
                        <h3><strong>PROFILE</strong></h3>
                        <p style="font-size: 90%;">고객님의 개인정보를<br>관리하는 공간입니다.</p>
                    </a>
                </div>
            </li>
            <li>
                <div class="box">
                    <a href="<%=request.getContextPath()%>/myPage/addressView?userId=<%=loginUser.getUserId() %>">
                        <h3><strong>ADDRESS</strong></h3>
                        <p style="font-size: 90%;">자주 사용하는 배송지를 등록하고<br>관리하실 수 있습니다.</p>
                    </a>
                </div>
            </li>
            <li>
                <div class="box">
                    <a href="<%=request.getContextPath()%>/myPage/mileageList?userId=<%=loginUser.getUserId() %>">
                        <h3><strong>MILEAGE</strong></h3>
                        <p style="font-size: 90%;">적립금은 상품 구매 시<br>사용하실 수 있습니다.</p>
                    </a>
                </div>
            </li>
            <li>
                <div class="box">
                    <a href="<%=request.getContextPath()%>/myPage/couponList?userId=<%=loginUser.getUserId() %>">
                        <h3><strong>COUPON</strong></h3>
                        <p style="font-size: 90%;">고객님이 보유하고 계신<br>쿠폰 내역을 보여드립니다.</p>
                    </a>
                </div>
            </li>
        </ul>
    </div>
</section>

<script>
	const fn_moveMileageView=()=>{
		location.assign('<%=request.getContextPath()%>/myPage/mileageList?userId=<%=loginUser.getUserId() %>');
	}
	
	const fn_moveCouponView=()=>{
		location.assign('<%=request.getContextPath()%>/myPage/couponList?userId=<%=loginUser.getUserId() %>');
	}
</script>

<style>
    #my_profile{
        display:flex;
        flex-direction: column;
        align-items: center;
    }
    #my_profile>span>h2{
        margin-bottom: 15px;
        font-size: 33px;
    }
    #cou_mile{
        width:400px;
        margin:20px 0 50px 0;
        text-align: center;
    }
    #my_menu>ul{
        display: inline-flex;
        flex-direction: row;
        align-content: flex-start;
        flex-wrap: wrap;
        justify-content: center;
    }
    #my_menu>ul>li{
        list-style: none;
        text-align: center;
    }
    #my_menu>ul>li>div>a{
        text-decoration: none;
        color:black;
    }
    #my_menu .box{
        margin: 10px;
        border: 1px #d5d5d5 solid;
        width:300px;
        height:125px;
    }
    #my_menu .box:hover{
        background-color: #f8f6f6;
    }
    #recent_pd{
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-bottom: 40px;
    }
    #recent_pd>ul>li{
        display:inline-block;
        margin:0 15px 0 15px;
    }
    #recent_pd .photobox{
        height:200px;
        width:170px;
        border:grey 1px solid;
    }
    .inquiry_btn{
        width:44px;
        height:27px;
        border:1px solid rgb(114, 113, 113);
        font-size: 15px;
        text-align: center;
    }
    .inquiry_btn:hover{
        background-color: #f8f6f6;
        cursor:pointer;
    }
    .inquiry_btn>a{
        text-decoration: none;
    }
</style>
<script></script>

<%@ include file="/views/common/footer.jsp"%>