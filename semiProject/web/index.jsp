<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/boots

trap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>



<section>   
            <div id="contents">
                <div class="location_wrap">
                    <div class="location_cont">
                        <em>
                            <h2 class="pe" style="width:1050px;">공간을 풍부하게</h2>
                            <p class="pd" style="width:1050px;">새로워진 가구를 만나보세요.</p>
                        </em>
                    </div>
                </div>
                <div class="sub_content">
                    <div class="mainImg">
                        <img src="https://data2.1freewallpapers.com/detail/furniture-sofa-white.jpg" alt="" width="1000" height="500">
                    </div>
                    <div class="middle_tit pe">
                        <p style="margin-top: 70px;">추천</p>
                    </div>
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="false" data-bs-interval="false">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <div class="row">
                                <div class="col">
                                    <div class="item_cont" id="contDiv">
                                        <div class="item_photo_box">
                                                <img src="<%=request.getContextPath()%>/images/product/C1/C1P1-1.jpg">
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                    <strong class="item_name pc" id="pro1">   
                                                    </strong>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc" >
                                                    <br><span id="pro1P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C1/C1P5-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro2">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro2P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C2/C2P9-1.jpg ">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro3">
                                                      
                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box pc">
                                                <strong class="item_price">
                                                    <br><span id="pro3P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                               <img src="<%=request.getContextPath()%>/images/product/C5/C5P25-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro4">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box pc">
                                                <strong class="item_price" >
                                                    <br><span id="pro4P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <div class="row">
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C1/C1P6-2.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro5">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro5P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C3/C3P18-2.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro6">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br><span id="pro6P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C4/C4P20-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro7">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro7P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C3/C3P14-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro8">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro8P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                      </div>

                    <div class="middle_tit pe">
                        <p style="margin-top: 70px;">New</p>
                    </div>
                    <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false" data-bs-interval="false">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <div class="row">
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C1/C1P3-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro9">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro9P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C4/C4P24-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro10">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro10P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C1/C1P2-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro11">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro11P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C2/C2P10-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro12">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro12P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <div class="row">
                                <div class="col">
                                    <div class="item_cont">
                                         <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C2/C2P8-2.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro13">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro13P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                         <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C4/C4P19-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro14">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro14P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                         <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C6/C6P35-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro15">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro15P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                         <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C2/C2P12-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro16">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro16P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                        </div>
                       <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                      </div>

                    <div class="middle_tit pe">
                        <p style="margin-top: 70px;">주간 인기 상품</p>
                    </div>
                    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel" data-bs-interval="false">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <div class="row">
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C5/C5P26-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro17">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro17P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C3/C3P16-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro18">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro18P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C5/C5P29-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro19">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                    <br><span id="pro19P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C3/C3P17-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro20">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                  <br>  <span id="pro20P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                          <div class="carousel-item">
                            <div class="row">
                                <div class="col">
                                    <div class="item_cont">
                                       <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C6/C6P32-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro21">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro21P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                       <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C5/C5P27-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro22">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro22P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                        <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C5/C5P30-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro23">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                  <br> <span id="pro23P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="item_cont">
                                       <div class="item_photo_box">
                                            <a href="">
                                                <img src="<%=request.getContextPath()%>/images/product/C3/C3P15-1.jpg">
                                            </a>
                                        </div>
                                        <div class="item_info_cont">
                                            <div class="item_tit">
                                                <a href="">
                                                    <strong class="item_name pc" id="pro24">

                                                    </strong>
                                                </a>
                                            </div>
                                            <div class="item_money_box">
                                                <strong class="item_price pc">
                                                   <br> <span id="pro24P"></span>
                                                </strong>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                        </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>                     
                      </div>


                    <div class="fixed_chat">
                        <a href="http://pf.kakao.com/_mxjxazs">
                            <img src="http://image.dongascience.com/Photo/2017/01/14853160415056.png" alt="">
                        </a>
                    </div>
                </div>

            </div>

        </section>    

       
       
       <script>
	$(function(){
		$.ajax({
			url:"<%=request.getContextPath()%>/index/product/list",
			success:data=>{
				
				for(let i=0; i<data.length;i++){
					let pCode = data[i]["pCode"];
					let price = data[i]["price"];
					let pName = data[i]["pName"];
				
				}
				$("#pro1").append(data[0]["pName"]);
				$("#pro1P").append(data[0]["price"]);	
				
				$("#pro2").append(data[1]["pName"]);
				$("#pro2P").append(data[1]["price"]);
				$("#pro3").append(data[4]["pName"]);
				$("#pro3P").append(data[4]["price"]);
				$("#pro4").append(data[3]["pName"]);
				$("#pro4P").append(data[3]["price"]);
				$("#pro5").append(data[2]["pName"]);
				$("#pro5P").append(data[2]["price"]);
				$("#pro6").append(data[15]["pName"]);
				$("#pro6P").append(data[15]["price"]);
				$("#pro7").append(data[6]["pName"]);
				$("#pro7P").append(data[6]["price"]);
				$("#pro8").append(data[14]["pName"]);
				$("#pro8P").append(data[14]["price"]);
				$("#pro9").append(data[7]["pName"]);
				$("#pro9P").append(data[7]["price"]);
				$("#pro10").append(data[13]["pName"]);
				$("#pro10P").append(data[13]["price"]);
				$("#pro11").append(data[8]["pName"]);
				$("#pro11P").append(data[8]["price"]);
				$("#pro12").append(data[11]["pName"]);
				$("#pro12P").append(data[11]["price"]);
				$("#pro13").append(data[9]["pName"]);
				$("#pro13P").append(data[9]["price"]);
				$("#pro14").append(data[10]["pName"]);
				$("#pro14P").append(data[10]["price"]);
				$("#pro15").append(data[26]["pName"]);
				$("#pro15P").append(data[26]["price"]);
				$("#pro16").append(data[16]["pName"]);
				$("#pro16P").append(data[16]["price"]);
				$("#pro17").append(data[25]["pName"]);
				$("#pro17P").append(data[25]["price"]);
				$("#pro18").append(data[17]["pName"]);
				$("#pro18P").append(data[17]["price"]);
				$("#pro19").append(data[24]["pName"]);
				$("#pro19P").append(data[24]["price"]);
				$("#pro20").append(data[18]["pName"]);
				$("#pro20P").append(data[18]["price"]);
				$("#pro21").append(data[23]["pName"]);
				$("#pro21P").append(data[23]["price"]);
				$("#pro22").append(data[19]["pName"]);
				$("#pro22P").append(data[19]["price"]);
				$("#pro23").append(data[22]["pName"]);
				$("#pro23P").append(data[22]["price"]);
				$("#pro24").append(data[20]["pName"]);
				$("#pro24P").append(data[20]["price"]);
			
				const fn_move_proDetail=()=>{
					console.log(data[0]["pCode"]);	
				}
			}
			
		});
		
	})
	
</script>
       
       
       
       
       
       
       
       
       
       
       
       
       
       



        <style>
            /* .carousel-control-next-icon, .carousel-control-prev-icon {
            background-color: black;
            opacity: 0.4;
        } */
        .carousel-control-prev{
            height:100px;
            margin-top:150px;
        }
        .carousel-control-next{
            height:100px;
            margin-top:150px;
        }
        
        .location_cont em{
                text-align: right;
            }
            .mainImg{
                text-align: center;
            }
            .ul{
                list-style: none;
            }
            .item>li{
                margin: 0 0 50px 0;
                display: inline-block;
                position: relative;
                text-align: center;
                vertical-align: top;
            }
            .item_photo_box{
                text-align: center;
            }
            .item_photo_box img{
                width: 220px;
            }
            .item_cont{
                padding: 0px 5px 0 5px;
                border: 1px solid #dbdbdbdb;
                width: 250px;
                height: 372px;
            }
            .middle{
                width: 250px;
                height: 250px;

            }
            .item_info_cont{
                text-align: center;
            }
           .item_tit a{
               text-decoration: none;
               color:black;
           }
            .item_info_cont{
                display: table;
                vertical-align: middle;
                padding: 15px 26px 40px;
                width: 100%;
                box-sizing: border-box;
            }
            .middle_tit{
                font-size: 25px;
                text-align: center;
            }
            .fixed_chat{
                text-align: right;
            }

            .fixed_chat img{
                margin: 0 auto 7px;
                width: 150px;
                height: 80px;
                
            }
            #header-top ul{
            	top:-0.7px;
            }
            #search [type="submit"]{
            	top:-0.7px;
            }
            .footer{
            	 height:110px;
		
            }
            .mm:hover{
				color:black;
				text-decoration:none;
			}
        </style>


<%@ include file="/views/common/footer.jsp"%>