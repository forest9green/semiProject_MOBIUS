<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section style="font-family: 'Noto Sans KR';">
        <h1 class="jjacjsung" style="font-family: 'Noto Sans KR';font-size: 30px;">주문서 작성</h1>
    <div id=odf_firstst>
        <h2 class="ofpdinfo" style="font-family: 'Noto Sans KR';font-size: 20px;">상품정보</h2>
            <!-- 상품정보 -->
        <div id="odf_v_top" style="text-align: center;">
                <table border="1" width=100% height=150px style="border-collapse:collapse;">
                    <thead>
                        <tr>
                            <th class="ofspn" stlye="width:500px;">상품명</th>
                            <th>색상</th>
                            <th>수량</th>
                            <th>상품금액</th>
                            <th>예상적림금</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>                             
                                <td class="ofspn" style="width:500px">
                                    <div class="ofspnd">
                                        <img class="ofimage" src="C:\Users\WORK\Desktop\SEMI UI\img\sofa3.jpg">
                                        <div class="ofpdtext">소파</div>
                                    </div>    
                                </td>
                            <td>White</td>
                            <td>1</td>
                            <td>100,000</td>
                            <td>1,000</td>
                        </tr>
                    </tbody>    
                </table> 
        </div>  
    </div>
        <!-- 배송지정보 -->
        <div id="odf_second">
                        <!-- 주문자정보 -->
        <div id="3oseG" style="margin-top :40px; font-family: 'Noto Sans KR';">
            <div class="checkout-container _1cbjv">
                <div class="_3Pp8n">주문자 정보</div>
                <div class="_1_5Vk"></div>
            </div>
            <div class="bbqwt">
                <div class="checkout-container _1iqF1">
                    <div class="BenKu _3cVfV"><div class="_10zXy">이름</div>
                    <div class="_3cYTk"><input class="_3ASDR _1qwAY" name="name" maxlength="10" value="">
                    </div>
                </div>
                <div class="BenKu">
                    <div class="_10zXy">이메일</div>
                    <div class="_3cYTk Ap00Z">
                        <div class="_3o6FJ">
                            <div class="_3XFZl _1yjw1">
                                <div class="iS9OT _3XFZl _2dWiv">
                                    <input class="_3ASDR _1qwAY" type="email" placeholder="이메일" title="이메일 앞부분" maxlength="20" value="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="BenKu">                  
                    <div class="_10zXy">휴대전화</div>
                    <div class="_3cYTk">
                        <div class="_2Z2K1">
                            <div class="_2ixif">
                            </div>
                            <div class="UYZ4Z">
                                <input class="_3ASDR _1qwAY" type="tel" placeholder="입력해주세요" size="1" maxlength="20" value="" style="width: 270px;">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="BenKu">                  
                    <div class="_10zXy">일반전화</div>
                    <div class="_3cYTk">
                        <div class="_2Z2K1">
                            <div class="_2ixif">
                            </div>
                            <div class="UYZ4Z">
                                <input class="_3ASDR _1qwAY" type="tel" placeholder="입력해주세요" size="1" maxlength="20" value="" style="width: 270px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
           <div class="hapchigi">
            <div id="p0PrG">
                <h2 class="odfdvtext" style="font-family: 'Noto Sans KR';font-size: 20px;">배송지</h2>
                <select class="odfselect">
                    <option selected>배송지선택</option>
                    <option>배송지1</option>
                    <option>배송지2</option>
                </select>
            </div> 
                <div class="odfinfo">
                    <div class="checkout-container _1abJt">
                        <div class="BenKu">
                            <div class="_10zXy">받는 사람</div>
                            <div class="_3cYTk">
                                <input class="_3ASDR _1qwAY _2Zb2k" name="recipient" maxlength="10" value="">
                            </div>
                        </div>
                        <div class="BenKu">
                            <div class="_10zXy">휴대전화</div>
                            <div class="_3cYTk">
                                <div class="_2Z2K1"><div class="_2ixif">
                                </div>
                                    <div class="UYZ4Z">
                                        <input class="_3ASDR _1qwAY" type="tel" placeholder="입력해주세요" size="1" maxlength="20" value="" style="width:270px">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="BenKu">                  
                            <div class="_10zXy">일반전화</div>
                            <div class="_3cYTk">
                                <div class="_2Z2K1">
                                    <div class="_2ixif">
                                    </div>
                                    <div class="UYZ4Z">
                                        <input class="_3ASDR _1qwAY" type="tel" placeholder="입력해주세요" size="1" maxlength="20" value="" style="width: 270px;">
                                    </div>
                                </div>
                            </div>
                        </div>
                                <div class="BenKu">
                                    <div class="_10zXy">주소</div>
                                    <div class="_3cYTk Ap00Z">
                                        <div class="secondodftt">
                                            <!-- <label for="is-default-address" class="_2WZJV">
                                                <div class="_3zqA8 _1VkXG"><input type="checkbox" class="_3UImz" id="is-default-address" name="isDefaultAddress" value="">
                                                </div>기본 배송지로  주소 설정하기
                                            </label> -->
                                            <div class="_1hw9W _3fYOs">
                                                <button class="_1eWD8 _2wuTD _3VwZT _2QqIV" type="button">주소찾기</button><input class="_3ASDR _1qwAY _1MAk3 _1b3h-" disabled="" value="">
                                            </div>
                                        </div>
                                        <input class="_3ASDR _1qwAY" name="extraAddress" placeholder="상세주소 입력" maxlength="50" value="">
                                        <!-- <label for="is-default-address" class="_2WZJV">
                                            <div class="_3zqA8 _1VkXG"><input type="checkbox" class="_3UImz" id="is-default-address" name="isDefaultAddress" value="">
                                            </div>기본 배송지로 적용하기
                                        </label> -->
                                    </div>
                                </div>
                                <div class="_2Jn8D">
                                    <div class="_3Bt8k">
                                        <!-- <select class="_3ASDR _1qwAY _3K8Q8">
                                            <option value="0">배송시 요청사항을 선택해주세요</option>
                                            <option value="1">부재시 문앞에 놓아주세요</option>
                                            <option value="2">배송전에 미리 연락주세요</option><option value="3">부재시 경비실에 맡겨 주세요</option>
                                            <option value="4">부재시 전화주시거나 문자 남겨 주세요</option><option value="5">직접입력</option>
                                        </select>
                                        <svg width="1em" height="1em" viewBox="0 0 10 10" fill="currentColor" class="IgBXR">
                                            <path d="M0 3l5 5 5-5z"></path>
                                        </svg> -->
                                        <div>
                                            <div id="odf_bsyc">
                                                <div class=od_bsyc></div>
                                                <input class="_3ASDR _1qwAY" name="baesongyc" placeholder="배송시요청사항" maxlength="50" value="" style="width:400px">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                </div>
                </div>
            </div>
        <!-- 주문자정보
        <div id="3oseG" style="margin-top :40px; font-family: 'Noto Sans KR';">
            <div class="checkout-container _1cbjv">
                <div class="_3Pp8n">주문자 정보</div>
                <div class="_1_5Vk"></div>
            </div>
            <div class="bbqwt">
                <div class="checkout-container _1iqF1">
                    <div class="BenKu _3cVfV"><div class="_10zXy">이름</div>
                    <div class="_3cYTk"><input class="_3ASDR _1qwAY" name="name" maxlength="10" value="">
                    </div>
                </div>
                <div class="BenKu">
                    <div class="_10zXy">이메일</div>
                    <div class="_3cYTk Ap00Z">
                        <div class="_3o6FJ">
                            <div class="_3XFZl _1yjw1">
                                <div class="iS9OT _3XFZl _2dWiv">
                                    <input class="_3ASDR _1qwAY" type="email" placeholder="이메일" title="이메일 앞부분" maxlength="20" value="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="BenKu">                  
                    <div class="_10zXy">휴대전화</div>
                    <div class="_3cYTk">
                        <div class="_2Z2K1">
                            <div class="_2ixif">
                            </div>
                            <div class="UYZ4Z">
                                <input class="_3ASDR _1qwAY" type="tel" placeholder="입력해주세요" size="1" maxlength="20" value="" style="width: 270px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div> -->
    </div>     
        <!-- 할인정보 -->
        <h3>할인정보</h3>
        <div id="odf_third" style="font-family: 'Noto Sans KR';">
            <div class="ofjl"> 
                    <div>적립금 </div>
                    <input type="text" id="sminput">
                    <div style="margin-left: 30px;">보유적립금</div>
                    <div id="odsm_container" style="margin-left: 10px;">
                        <div class="od_busm"></div>
                    </div>
                    <div class="odf_jl_cb" style="margin-left: 10px;">
                        <input type="checkbox" name="xxx" value="yyy" checked>
                    </div>
                    <div>모두 사용</div>
            </div>
            <div class="ofcp" style="margin-top:15px;">
                <div>쿠폰할인</div>
                <div id="odcp_container" style="margin-left:10px">
                    <div class="od_cop"></div>
                </div>
                <div class="of_cp" style="margin-left: 5px;">
                    <button class="btn-of-cp"onclick="window.open('cpschecking.html', 'pop01', 'top=10, left=10, width=500, height=500, status=no, menubar=no, toolbar=no, resizable=no')">쿠폰선택</button>
                </div>
            </div>
        </div>
        <!-- 결제정보 -->
        <h3>결제정보</h3>
        <div id="odinfo_v_fourth" style="text-align: center;">

            <table border="1" width=100% height=80px style="border-collapse: collapse;">
                <thead>
                    <tr>
                        <th class="ofspn" stlye="width:300px;">상품금액합계</th>
                        <th>배송비</th>
                        <th>할인금액</th>
                        <th>총결제금액</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="od_info_pt" style="width:300px"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>    
            </table> 
        </div>
        <!-- 결제하기   -->
        <h3>결제하기</h3>
        <div id="odf_last" style="text-align: center;">
                <div class="btn-paymenttype" id="imgumn">
                    <input type="radio" name="pay-type" id="tongjagnibgum" value="tongjagnibgum" /><label for="tongjagnibgum">무통장입금</label>
                </div>
                <div class="btn-paymenttype">
                    <input type="radio" name="pay-type" id="ofnaverpay" value="ofnaverpay" /><label for="ofnaverpay">네이버페이</label>
                </div>
                <div class="btn-paymenttype">
                    <input type="radio" name="pay-type" id="ofkakapay" value="ofkakapay" /><label for="ofkakapay">카카오페이</label>
                </div>
                <div class="btn-paymenttype">
                    <input type="radio" name="pay-type" id="ofimport"  value="ofimport" /><label for="ofimport">아임포트</label>
                </div>      
                <a href="" style="text-decoration: none;">
                <div class="btn-odfpay">결제하기</div>
                </a>
        </div>
       <div class="deposit">
           <p>입금자명 : <input type="text">
       </div> 
</section>    

<style>
    .odfselect{
        width: 100px;
        height: 30px;
        margin-top: 15px;
        font-family: 'Noto Sans KR';
    }
    #imgumn{
        cursor: pointer;
    }
    .deposit{
        display:none;
    }
    .btn-paymenttype:active{
        background-color: gray;
    }
    .ofpdtext{
        padding:30px;
    }
    .ofspnd{
        display: flex;
    }
    .ofimage{
        border-radius: 4px;
        width: 80px;
        height: 80px;
        margin-right: 12px;
    }
    #odf_bsyc{
        display:flex;
    }
    .ofcp{
        display:flex;
    }
    #odcp_container{
        border: 1px solid black;
        width: 170px;
        height: 20px;
        border-radius: 4px
    }
    #ofcoupn{
        width:100px;
        height:20px;
    }
    #sminput{
        width:100px;
        height:20px;
        margin-left: 10px;
        border-radius: 4px
    }
    .ofjl{
        display: flex;
    }
    #odsm_container{
        border: 1px solid black;
        width: 170px;
        height: 20px;
        border-radius: 4px
    }
    #odf_second{
        display:flex;
        justify-content: space-between;
    }
    .btn-odfpay{
        background-color: #757575;
        color: white;
        padding:8px;
        width:200px;
    }
    #odf_last{
        display:flex;
        justify-content: center;
    }
    .btn-paymenttype{
        background-color: #f2f5f9;
        border: 1px solid #f2f5f9;
        padding:5px;
        width:200px;
        border:1px solid black;
    }
    ._3Pp8n {
        font-weight: 700;
        font-size: 20px;
        line-height: 30px;
        margin-top:12px;
        font-family: 'Noto Sans KR';
    }
    ._1_5Vk {
        -webkit-box-flex: 1;
        -webkit-flex: 1 0 0px;
        -moz-box-flex: 1;
        -moz-flex: 1 0 0px;
        -ms-flex: 1 0 0px;
        flex: 1 0 0px;
        text-align: right;
        padding-left: 11px;
        font-size: 15px;
        line-height: 20px;
        color: #292929;
        transition: opacity .25s;
    }
    #p0PrG {
        -webkit-box-flex: 1;
        -webkit-flex: 1 0 0px;
        -moz-box-flex: 1;
        -moz-flex: 1 0 0px;
        -ms-flex: 1 0 0px;
        flex: 1 0 0px;
        box-sizing: border-box;
        max-width: 85%;
        margin-top: 40px;
        font-family: 'Noto Sans KR';
        display: flex;
        justify-content: space-between;
    }
    ._1eWD8 {
        -moz-user-select: -moz-none;
        -khtml-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
        user-select: none;
        position: relative;
        display: inline-flex;
        justify-content: center;
        align-items: center;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        border: 1px solid transparent;
        background: none;
        font-family: Noto Sans KR,Noto Sans CJK KR,맑은 고딕,Malgun Gothic,sans-serif;
        font-weight: 700;
        text-decoration: none;
        text-align: center;
        transition: color .1s,background-color .1s,border-color .1s;
        border-radius: 4px;
        cursor: pointer;
    }
    ._2wuTD {
        background-color: #fff;
        border-color: gray;
        color:black;
    }
    ._3VwZT {
        padding: 11px 10px;
        min-height: 40px;
    }
    ._3VwZT, ._16Bs1 {
        line-height: 18px;
        font-size: 15px;
    }
    ._2QqIV {
        width: 85px;
        margin-right: 8px;
        font-size: 15px;
    }
    ._1MAk3.XXmRP:disabled {
        border-color: #f77;
    }
    ._1MAk3._1b3h-:disabled {
        background-color: #fafafa;
        color: #292929;
        -webkit-text-fill-color: #292929;
        opacity: 1;
    }
    .IgBXR {
        position: absolute;
        top: 50%;
        right: 15px;
        width: 10px;
        height: 10px;
        margin-top: -5px;
        pointer-events: none;
        color: #bdbdbd;
    }
    ._3Bt8k ._3K8Q8 {
        padding-right: 30px;
    }
    select {
        /* -webkit-writing-mode: horizontal-tb !important; */
        text-rendering: auto;
        color: -internal-light-dark(black, white);
        letter-spacing: normal;
        word-spacing: normal;
        text-transform: none;
        text-indent: 0px;
        text-shadow: none;
        display: inline-block;
        text-align: start;
        appearance: auto;
        box-sizing: border-box;
        align-items: center;
        white-space: pre;
        -webkit-rtl-ordering: logical;
        background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
        cursor: default;
        margin: 0em;
        font: 400 13.3333px Arial;
        border-radius: 0px;
        border-width: 1px;
        border-style: solid;
        border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
        border-image: initial;
    }
    select:not(:-internal-list-box) {
        overflow: visible !important;
    }
    ._3Bt8k ._3K8Q8 {
        padding-right: 30px;
    }
    ._3Bt8k {
        position: relative;
        display: inline-block;
        width: 100%;
    }
    ._2Jn8D {
        padding: 20px 10px 0 0;
        max-width: 642px;
    }
    .layout {
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-direction: normal;
        -webkit-box-orient: vertical;
        -webkit-flex-direction: column;
        -moz-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
    }
    ._2WZJV {
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        -moz-align-items: center;
        align-items: center;
        margin-top: 16px;
        font-size: 15px;
        color: #292929;
    }
    .Ap00Z {
        max-width: 570px;
    }
    ._2Z2K1 {
        display: flex;
    }
    ._3cYTk {
        -webkit-box-flex: 1;
        -webkit-flex: 1 0 0px;
        flex: 1 0 0px;
    }
    ._10zXy {
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        -moz-align-items: center;
        align-items: center;
        width: 72px;
        font-size: 15px;
        line-height: 18px;
        color: black;
        white-space: pre-line;
        max-height: 40px;
        transition: color .25s;
    }
    ._3ASDR {
        display: inline-block;
        width: 100%;
        background-color: rgb(255, 255, 255);
        color: rgb(0, 0, 0);
        /* box-sizing: border-box; */
        font-family: "Noto Sans KR";
        font-size: 15px;
        line-height: 21px;
        resize: none;
        appearance: none;
        margin: 0px;
        padding: 8px 15px 9px;
        border-width: 1px;
        border-style: solid;
        border-color: black;
        border-image: initial;
        border-radius: 4px;
        transition: border-color 0.1s ease 0s, background-color 0.1s ease 0s;
    }
    ._1qwAY {
        padding: 8px 15px 9px;
    }
    ._3cYTk {
        -webkit-box-flex: 1;
        -webkit-flex: 1 0 0px;
        -moz-box-flex: 1;
        -moz-flex: 1 0 0px;
        -ms-flex: 1 0 0px;
        flex: 1 0 0px;
        max-width: 270px;
    }
    .BenKu._3cVfV{
        margin-top: 10px;
    }
    .BenKu {
        padding: 8px 10px 8px 0;
        display: flex;
    }
    .checkout-container {
        margin-right: auto;
        margin-left: auto;
        width: auto;
        max-width: 100%;
        box-sizing: border-box;
        min-height: 1px;
    }
    h1{
        font-family: 'Noto Sans KR';
    }
    .sangpoomirum{   
        font-family: 'Noto Sans KR';
        text-decoration: none;
    }
    .sphaert{
        flex:1 1 auto;
        display:flex;
        justify-content: center;
        align-items:center;
    }
    .spjangbagunidamgi{
        flex: 1 1 auto;
        display:flex;
        justify-content: center;
        align-items:center;
    }
    .sp_name_price{
        flex:1 1 auto;
    }
    .sphaert{
        flex:1 1 auto;
    }
    .sp_container{
        display:flex;
    }
    .sproducts-price{
        text-align: center;
        font-family: "Noto Sans KR";
        font-weight: 300;
    }
    .sangpoomgagyuk{
        text-align: center;
        font-family: "Noto Sans KR";
        font-weight: 300;
    }
    .sangpoomirum{
        text-align: center;
        text-decoration: none;
    }            
    .sprodcuts-price{
        text-align: center;
    }
    #sproducts{
        display:flex;
        justify-content: space-between;
        margin-top:50px;
    }
    .sproductsbtn {
        display: inline-block;
        font-weight: 400;
        text-align: center;
        vertical-align: middle;
        line-height: 1.5;
        border: 1px solid transparent;
        padding: 0.375rem 0.75rem;
        transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    }
    .spbtn-light {
        color: #212529;
        /* background-color:;
        border-color:; */
        text-decoration: none;
        font-family: "Noto Sans KR";
    }
    .spbtn-spprimary{
        color: black;
        /* background-color: rgb(224,224,224);
        border-color: rgb(224,224,224); */
        text-decoration: none;
        font-family: "Noto Sans KR";
        font-size:10px;
        margin-left:10px;                
    }
    .spbtn-spsecondary {
        color: black;
        /* background-color: rgb(224,224,224);
        border-color: rgb(224,224,224); */
        text-decoration: none;
        font-family: "Noto Sans KR";
        font-size: 15px;
    }
    #sp_v_top{
        display:flex;
        justify-content: space-between;
        margin:3px;
    }
    img {
        margin-left: 12px;
        margin-right: 5px;
        padding-left: 25px;
        padding-right: 25px;
        width: 300px;
        height: 300px;
        text-align: center;
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