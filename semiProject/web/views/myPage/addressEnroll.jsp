<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="addrEnroll_box">
        <h2 class="pe mgbt0" style="font-size:30px;" >ADDRESS</h2>
        <span class="pb mgbt0" style="font-size:20px;">배송지 등록</span>
        <span class="pa" id="span2">* 필수 입력 사항입니다.</span>
        <hr>
        <table id="addrEnroll_table" class="pc">
            <tr>
                <td>배송지명 <span style="color:red;">*</span></td>
                <td><input type="text" size=50 required placeholder="최대 7자까지 작성할 수 있습니다."></td>
            </tr>
            <tr>
                <td>성명 <span style="color:red;">*</span></td>
                <td><input type="text" size=50 required></td>
            </tr>
            <tr>
                <td>주소 <span style="color:red;">*</span></td>
                <td>
                    <input type="text" style="margin-right: 10px;"><input type="button" value="우편번호 조회"><br>
                    <input type="text" size=50><br>
                    <input type="text" size=50>
                </td>
                <!--다음(카카오) api 사용-->
            </tr>
            <tr>
                <td>일반전화</td>
                <td><input type="text" size=50 placeholder="'-' 제외"></td>
            </tr>
            <tr>
                <td>휴대전화 <span style="color:red;">*</span></td>
                <td><input type="text" size=50 required placeholder="'-' 제외" maxlength="11"></td>
            </tr>
        </table>
        <hr>
        <div id="addrEnroll_btn">
            <div >
                <input type="checkbox" id="defaultAddr"><label for="defaultAddr" class="pa">기본 배송지로 설정</label><br>
            </div>
            <div>
                <input type="submit" value="등록" class="pc">
                <input type="reset" value="취소" class="pc">
            </div>
        </div>
    </div>
</section>

<style>
    #addrEnroll_box{
        width:1000px;
        margin:50px auto;
    }
    .mgbt0{
        margin-bottom: 0;
    }
    #span2{
        font-size: 15px;
        color:red;
        float:right;
    }
    #addrEnroll_table{
        margin: 0 0 0 20px;
        width:600px;
        height:300px;
    }
    #addrEnroll_table input:not(input[type=button]){
        height:20px;
    }
    #addrEnroll_btn{
        display:flex;
        flex-direction: column;
        align-items: flex-end;
    }
    #addrEnroll_btn>div{
        margin: 0 0 10px 0;
    }
    #addrEnroll_btn>div>input[type=submit]{
        border: 1px gray solid;
        width:100px;
        height:40px;
        text-align: center;
        background-color: black;
        color:white;
        font-size: 17px;
        margin-right:5px
    }
    #addrEnroll_btn>div>input[type=reset]{
        border: 1px gray solid;
        width:100px;
        height:40px;
        text-align: center;
        font-size: 17px;
        background-color: white;
    }
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>