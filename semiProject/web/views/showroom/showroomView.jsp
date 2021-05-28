<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <h1 class="pe" style="font-size: 35px;"> SHOWROOM - 거실 </h1>
    <div id="show_box">

        <div class="showPhoto">
            <div class="sPhoto"><img src="./img/sofa1.jpg" ></div>
            <span class="spInfo">
                <img class="plus_img" src="./img/link_button.png" >
                <div class="pBox pc">
                    <span style="font-size: large;font-weight: bold;">SKURUP 스쿠루프</span><br>
                    <span style="font-size:small;">벽부착등</span><br>
                    49,900원
                </div>
            </span>
        </div>
    </div>

</section>
<!--section에 적용될 style, script 내용 넣어주세요-->
<style>
    #show_box{
        width:1000px;
        margin:0 auto;
        display:flex;
        justify-content: center;
        flex-wrap: wrap;
    }
    .showPhoto{
        margin:5px 0 5px 0;
    }
    .sPhoto>img{
        width:900px;
        object-fit: cover;
    }
    .spInfo{
        display:flex;
        position:relative;
        top:-150px;
        left:100px;
        width: 300px;
        margin:0;
    }
    .plus_img{
        /* margin:20px; */
        width:25px;
        height:25px;
    }
    .pBox{
        height:80px;
        background-color: rgba(178, 179, 178, 0.8);
        padding:15px;
        position:relative;
        left:10px;
        opacity: 0;
        transition: opacity 0.2s linear;
    }
    .plus_img:hover+.pBox{
        opacity: 1;
    }
    .pBox:hover{
        opacity: 1;
    }
</style>
<script></script>

<%@ include file="/views/common/footer.jsp"%>