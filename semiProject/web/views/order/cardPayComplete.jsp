<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section style="font-family: 'Noto Sans KR';">
    <div>
		<div id="pyc_title">
            <h1>결제가 완료되었습니다.</h1>
        </div>
        <div class="pyc_center">
            <h4>
                주문번호 :
            </h4>
            <h4>
                주문상품 :
            </h4>
            <!-- <h4>
                입금자명 :
            </h4>
            <h4>
                계좌번호(예금주) :
            </h4> -->
            <h4>
                결제금액 :
            </h4>
            <!-- <h4>
                입금기한:
            </h4> -->
        </div>
    </div>
    <div>
        <a href="" style="text-decoration:none; color:black;">
            <h4 class="pycompbut">홈으로</h4>
        </a>
    </div>
</section>    

<style>
    h4{
        text-decoration: none;
    }
    .pyc_center{
       margin-left: 200px;
       margin-right: 200px;
       background-color: #f2f5f9;
       padding:10px;
       padding-top: 5px;
    }
    #pyc_title{
        display:flex;
        justify-content: center;
        font-size: 25px;
    }
    .pycompbut{
        display:flex;
        justify-content: center;
        margin-top: 40px;
        width:100px;
        margin-left:500px;
        font-size:20px;
        background-color:#f2f5f9 ;
        text-decoration: none;
        padding:10px;
        border-radius: 4px;
    }
</style>
    
<script>
    // $("tongjagnibgum").("click",(e)=>{
    //     <input type="text">
    // })
    $(".btn-paymenttype").click((e)=>{
        // e.preventDefault(); // 중복 클릭 방지
        const checkVal =$('input:radio[name="pay-type"]:checked').val();
        if(checkVal ==="tongjagnibgum"){
            $(".deposit").css("display","block");
        }else{
            $(".deposit").css("display","none");
        }
    });
</script>

<%@ include file="/views/common/footer.jsp"%>