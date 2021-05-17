<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

<section style="font-family:'Noto Sans KR';">
   <h1>REVIEW 작성</h1>
   <div class="rv_first">
       <div class="rvw_pn" maxlength="30">상품명</div>
   </div>
   <div class="rv_write">
       <textarea class="rv_write_txt" maxlength="5000" placeholder="내용:" style="font-family: 'Noto Sans KR';"></textarea>
    </div>
    <div class="rv_star">
        <div class="rv_container">
            <div class="rv_startxt">별점</div>
            <div class="starRev">
                <span class="starR">별1</span>
                <span class="starR">별2</span>
                <span class="starR">별3</span>
                <span class="starR">별4</span>
                <span class="starR">별5</span>
            </div>
        </div>
    </div>
    <div class="rv_last">  
        <input type="file" class="rv_write_fu" name="FileName">
            <div class="rv_last-right-btn">
                <div class="btn-rvwt">작성</div>
                <div class="btn-rvdl">삭제</div>
            </div>    
    </div>      
</section>
<style>
    .rv_startxt{
        font-size: 22px;
        margin-left:5px;
    }
    .rv_container{
        display:flex;
        justify-content: space-between; 
        width:260px;
        height:50px;
        margin:10px;
        padding:5px;
        margin-left:0px;
        margin-top:0px;
    }
    .rv_star{
        margin-top:10px;
    }
    .rv_write{
        margin-top:10px;
    }
    .rvw_pn{
        margin-bottom:10px;
        width:300px;
        height:50px;
        border:0.5px solid gray;
    }
    .btn-rvdl{
        background-color: #d0cece;
        width:70px;
        text-align: center;
    }
    .btn-rvwt{
        background-color: #d0cece;
        width:70px;
        text-align: center;
        margin-right:10px;
    }
    .rv_last-right-btn{
        display:flex;
    }
    .rv_last{
        display:flex;
        justify-content:space-between ;
        margin-top:30px;
    }
    .starR{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 30px;
    height: 30px;
    display: inline-block;
    text-indent: -9999px;
    cursor: pointer;
    }
    .starR.on{background-position:0 0;
    }
    .rv_container{
        width:230px;
        height:30px;
        border: 0.5px solid black;
    }
    .rv_star_check{
        width:300px;
        height:50px;
    }
    .rv_write_txt{
        width: 1110px;
        height:300px;
        font-size:15px;
    }
    .rvw_pn{
        width:300px;
        height:30px;
        margin-top:10px;
    }
    .starR{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 30px;
    height: 30px;
    display: inline-block;
    text-indent: -9999px;
    cursor: pointer;
    }
    .starR.on{background-position:0 0;
    }
    #review_box{
        width:1000px;
        margin: auto;
    }
    #review_box>p+h2{
        font-size: 30px;
    }
    #review_table_box{
        min-height: 180px;
    }
    #review_table{
        margin:30px 0 10px 0;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #review_table tr{
        height:40px;
    }
    #review_detail_btn{
        list-style-type: none;
        padding:0;
        margin:6px 0 6px 0;
        /* margin-left: 10px;
        margin-right: 10px; */
    }
    #review_detail_btn>li>button{
        border: 1px gray solid;
        margin: 4px 0 4px 0;
        width:50px;
        height:27px;
        text-align: center;
        background-color: white;
    }
    #review_btn button:first-child{
        border: 1px gray solid;
        width:50px;
        height:30px;
        text-align: center;
        background-color: white;
    }
    .blackbtn{
        position: relative;
        left:698px;
        border: 1px gray solid;
        width:120px;
        height:40px;
        text-align: center;
        color:white;
        background-color: black;
    }
    #review_box>p+h2{
        font-size: 30px;
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
<script>
    $('.starRev span').click(function(){
    $(this).parent().children('span').removeClass('on');
    $(this).addClass('on').prevAll('span').addClass('on');
    return false;
    });
</script>

<%@ include file="/views/common/footer.jsp"%>