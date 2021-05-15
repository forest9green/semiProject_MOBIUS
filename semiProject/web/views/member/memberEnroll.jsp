<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div>
        <div class="location_wrap">
            <div class="location_cont">
                <em class="pd">
                    <a href="" class="local_home">HOME</a>
                    > 회원가입 > 정보입력
                </em>
            </div>
        </div>
        <div class="join_base_wrap">
            <div class="member_tit">
                <h2 class="pf">회원가입</h2>
            </div>
            <div class="member_cont">
                <form id="formJoin" name="formJoin" action="" method="post" novalidate>
                    <div class="base_info_box">
                        <h3 class="pd">기본정보</h3>
                        <span class="important pc" style="margin-top: 40px;">*표시는 반드시 입력하셔야 하는 항목입니다.</span>
                        <div class="base_info_sec pc">
                            <table border="0" cellpadding="0" callspacing="0">
                                <colgroup>
                                    <col width="25%">
                                    <col width="75%">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th class="380">
                                            <span class="important">*아이디</span>
                                        </th>
                                        <td>
                                            <div class="member_warning">
                                                <input type="text" id="memId" name="memId" data-pattern="gdMemberId">
                                                <input type="button" value="중복확인">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="380">
                                            <span class="important">*비밀번호</span>
                                        </th>
                                        <td class="member_password">
                                            <div class="member_warning">
                                                <input type="password" id="newPassword" name="memPw" autocomplete="off" class="ignore">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="380">  
                                        <th>
                                            <span class="important">*비밀번호 확인</span>
                                        </th>
                                        <td>
                                            <div class="member_warning">
                                                <input type="password" class="check_id ignore" name="memPwRe" autocomplete="off">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="380">
                                        <th>
                                            <span class="important">*이름</span>
                                            
                                        </th>
                                        <td>
                                            <div class="member_warning">
                                                <input type="text" name="memNm" data-pattern="gdMemberNmglobal" maxlength="30">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <span class="important">*이메일</span>
                                        </th>
                                        <td class="member_email">
                                            <div class="member_warning">
                                                <input type="text" name="email" id="email" tabindex="-1">
                                                <select name="emailDomail" id="emailDomain">
                                                    <option value="직접입력">직접입력</option>
                                                    <option value="naver.com">@naver.com</option>
                                                    <option value="nate.com">@nate.com</option>
                                                    <option value="gmail.com">@gmail.com</option>
                                                    <option value="hanmail.com">@hanmail.com</option>
                                                    <option value="daum.net">@daum.net</option>
                                                    
                                                </select>

                                            <div class="member_warning_ js_email"></div>
                                            <div class="form_element">
                                                <input type="checkbox" id="maillingFl" name="maillingFl" value="y">
                                                <label for="maillingFl">정보/이벤트 메일 수신에 동의합니다.</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="380">
                                        <th>
                                            <span class="important">*휴대폰번호</span>
                                        </th>
                                        <td class="member_address">
                                            <div class="addresss_postcode">
                                                <input type="text" id="cellPhone" name="cellPhone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value>
                                            </div>
                                            <div class="form_element">
                                                <input type="checkbox" id="smsFl" name="smsFl" value="y">
                                                <label for="smsFl" class="check_s">정보/이벤트 SMS 수신에 동의합니다.</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="380">
                                        <th>
                                            <span>전화번호</span>
                                        </th>
                                        <td>
                                            <div>
                                                <input type="text" id="phone" name="phone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>
                                            <span class="important">*주소</span>
                                        </th>
                                        <td class="member_address">
                                            <div class="address_postcode">
                                                <input type="text" name="zonecode" readonly>
                                                <button type="button" id="btnPostcode" class="btn_post_search">우편번호검색</button>
                                                <input type="hidden" name="zipcode" value>
                                            </div>
                                            <div class="address_input">
                                                <div class="member_warning">
                                                    <input type="text" name="address" readonly>
                                                </div>
                                                <div class="member_warning">
                                                    <input type="text" name="addressSub">
                                                    <div class="form_element">
                                                        <input type="checkbox" id="saveAdd" name="saveAdd" value="y">
                                                        <label for="saveAdd" class="check_s">기본배송지</label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="btn_center_box">
                        <button type="button" id="btnCancel" class="btn_member_cancel pd" >취소</button>
                        <button type="button" class="btn_confirm pd" value="회원가입" >회원가입</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<style>
    .location_wrap{
        border: 0;
        margin: 0 auto;
        max-width: 1380px;
        position: relative;
        width: 100%;
    }
    .location_cont{
        text-align: right;
        padding: 20px;
    }
    .location_cont em{
        display: inline-block;
        float: none;
        padding: 12px 0 10px 0;
    }
    .join_base_wrap{
        position: relative;
        width: 100%;
        margin: 0 auto;
        padding: 0;
        float: none;
        max-width: 1380px;
        min-width: 1180px;
    }
    .member_tit{
        overflow: hidden;
        width: 1100px;
        border-bottom: 1px solid #dbdbdb;
    }
    .member_tit h2{
        float: left;
        font-size: 28px;
        margin: 0 0 20px 0; 
    }
    .member_cont{
        width: 742px;
        margin: 0 188px 0 130px;
        border: none;
        padding: 70px 60px;
    }
    .member_cont h3{
        padding: 0 0 17px 0;
        font-size: 18px;
        display: inline-block;
    }
    .base_info_box>span{
        float: right;
        padding: 0 0 0 10px;
        line-height: 40px;
        color: #ab3e55;
    }
    /* .important{

    } */
    .base_info_sec{
        border-top: 1px solid #999999;
        border-bottom: 1px solid #999999;
    }
    .base_info_sec table{
        width: 100%;
    }
    .base_info_sec th:first-child{
        border-left: none;
    }
    .base_info_sec th{
        text-align: left;
        border-bottom: 1px solid #dcdcdcdc;
        background: #fbfbfbfb;
        padding: 10px 25px;
    }
    .base_info_sec td{
        padding: 15px 0 15px 15px;
    }
    .member_warning{
        display: inline;
        position: relative;
    }
    .base_info_sec table input[type="text"]{
        width: 380px;
    }
    input[type="text"],input[type="password"]{
        padding: 0 10px;
        outline: none;
        font-size: 14px;
        height: 31px;
        border: 1px solid #d6d6d6d6;
        line-height: 31px;
        box-sizing: border-box;
    }
    .join_base_wrap table th span{
        padding: 0 0 0 10px;
        margin: 0 0 0 -10px;
    }
    .base_info_sec table th{
        text-align: left;
        border-bottom: 1px solid #fbfbfb;
    }
    .join_base_wrap table th{
        padding: 10px 25px;
    }
    .member_email input[type="text"]{
        width:251px;
    }
    .member_email select{
        width: 120px;
        height: 31px;
        vertical-align: top;
        outline: none;
    }
    option{
        white-space: nowrap;
        min-height: 1.2em;
        padding: 0px 2px 1px;
    }
    .chosen-container{
        vertical-align: top;
        text-align: left;
        position: relative;
        display: inline-block;
    }
    .chosen-single{
        height: 31px;
        display: block;
        overflow: hidden;
        border-radius: 0px;
        text-decoration: none;
        line-height: 24px;
    }
    .chosen-single div{
        position: absolute;
        top: 0;
        right: 0;
        display: block;
        width: 18px;
        height: 100%;
    }
    .chosen-single div b{
        display: block;
        width: 100%;
        height: 100%;
    }
    .chosen-drop{
        border: 1px solid #cccccc;
        border-top: none 0;
        margin-top: -1px;
        border-radius: 0 0 4px 4px;
        background-clip: padding-box;
        position: absolute;
        top: 100%;
        left: -9999px;
        z-index: 1010;
        width: 100%;
    }
    .form_element{
        display: block;
        margin-top: 5px;
        overflow: hidden;
        position: relative;
    }
    /* .form_element input{
        position: absolute;
        top: 3px;
        left: 1px;
        width: 0;
        z-index: -1;
        visibility: hidden;
    } */
    input[type=checkbox]{
        height: 13px;
        vertical-align: top;
    }
    .check_s{
        min-width: 13px;
    }
    #zonecode{
        float: left;
        width: 190px;
    }
    .address_input{
        float: left;
        width: 72%;
    }
    .address_input input{
        margin: 10px 0 0 0 ;
    }
    .address_postcode input{
        width: 190;
    }
    .btn_center_box{
        margin: 35px 0 0 0;
        text-align: center;
        font-size: 16px;
    }
    .btn_center_box button{
        margin-left: 30px;
        vertical-align: middle;
    }
    .btn_member_cancel{
        width: 200px;
        height: 60px;
        border: 1px solid black;
        background-color: white;
    }
    .btn_center_box button{
        margin-left: 50px;
        vertical-align: middle;
    }
    .btn_confirm{
        width: 200px;
        height: 60px;
        border: 1px solid black;
        background-color: white;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>