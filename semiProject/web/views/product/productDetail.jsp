<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp"%>

<section>

    <container id="">
        <div id="category_top" style="float:left;">
            <a href="#"><div class="category_top pc" style="font-size:12px;float:left;">전체</div></a>
            <div class="category_top pe" style="font-size:12px;float:left;">　>　</div>
            <a href="#"><div class="category_top pc" style="font-size:12px;float:left;">소파</div></a>
        </div>
    </container>

    <div>
    <div style="float:left;">
        <div class="image_div" style="margin-top:10%;">
            <div><img class="sofa" style="border-radius:2%; width:300px;height:300px;margin-top:80px;margin-left:180px;" src="./img/sofa2.jpg" ></div>
        </div>
    </div>

    <div class="desc_div" >
        <div id="product_desc" style="float:right;margin-top:140px;margin-right:150px;"> 
            <div class="brand pd" style="font-size:15px;">Mobius 기본 흰색 소파</div>
            <div class="brand pd" style="font-size:25px;">300,000원</div>
            <hr>
            <div class="brand pd" style="font-size:16px;float:left; ">택배비</div>
            <div class="brand pd" style="font-size:16px;margin-left:240px;">59,000원</div>
            <br>
            <div class="brand pd" style="font-size:14px;">조건에 따라 추가비용 발생 가능(상품 상세 정보 참고)</div>
            <hr>
        
        <div class="dropdown">
            <div id="dropdown_category">
                <div class="odfselect" style="width:300px;height:30px;margin-top:5%">
                    <option class="pc" value="default" >크기-기본</option>
                </div>
            </div>

        </div>
                <button id="buy_now pc" style="width:130px;height:45px;margin-top:10px;">위시리스트에 추가</a></td></button>
                <button id="basket pc" style="width:120px;height:45px;margin-top:10px;">장바구니에 담기</a></td></button>
                <button id="buy_now pc" style="width:125px;height:45px;margin-top:10px;">바로구매</a></td></button>
            </div>    
    </div>        
        <table style="width:1000px;height:70px;background-color:whitesmoke;text-align:center;margin-left:5%;">
            <tr>
            <td class="pd">상품</td>
            <td class="pd">리뷰</td>
            <td class="pd">문의</td>
            </tr>
        </table>
    </div>

    <div contenteditable="true">
        <textarea cols=40 rows=5 onclick="this.value=''" style="width:900px; height:600px;margin-left:9%;margin-top:20px;resize:none"> 스마트에디터로 작성한 상품의 상세정보가 출력될 화면입니다. </textarea>
    </div>

    <div class="review">
        <div class="review_count pd" style="font-size:25px; margin-left:10%;margin-top:5%;">리뷰    
         
        <div id="review_border card"></div>
        <div class="row" >
            <div class="column" id="wrap" > 
              <div class="card" style=margin-top:3%;>
                <div class='RatingStar'>
                    <div class='RatingScore'>
                        <div class='outer-star'><div class='inner-star'></div></div>
                        <div class="grade pd" style=font-size:25px;float:left;margin-left:20px;float:right;margin-right:750px;margin-top:5px;> 총 2</div>
                    </div>
                    </div>
                </div>
                </div>
        </div>

                <section class="review_article" style="width:820px;height:630px;margin-left:10px;">
                    <div class="review_user pd">김*현</div>
                    <div class="star_date">
                        <div class='outer-star' style="font-size:13px;float:left;"><div class='inner-star'></div></div>
                        <div class="write_date pb" style="font-size:13px;float:left;margin-left:5px;">2021.05.18</div>
                    </div>
                    <br>
                    <div class="review_product_name pb" style="font-size:13px;color:lightslategrey">Mobius 화이트 패브릭 소파</div>
                    <br>
                    <div class="review_img_div"><img class="review_img" src="C:\Users\WORK\Desktop\SEMI UI\img\sofa3.jpg"></div>
                    <div class="review_title pd"> Mobius 소파 좋아요! </div>
                    <div class="review_content pc"> 색깔 이쁘고 소재도 좋고 배송 빨라서 좋았습니다.</div>
                    <hr>
                    <div class="review_user pd">곽*혁</div>
                    <div class="star_date">
                        <div class='outer-star' style="font-size:13px;float:left;"><div class='inner-star'></div></div>
                        <div class="write_date pb" style="font-size:13px;float:left;margin-left:5px;">2021.05.18</div>
                    </div>
                    <br>
                    <div class="review_product_name pb" style="font-size:13px;color:lightslategrey">Mobius 화이트 패브릭 소파</div>
                    <br>
                    <div class="review_img_div"><img class="review_img" src="C:\Users\WORK\Desktop\SEMI UI\img\sofa3.jpg"></div>
                    <div class="review_title pd">   추천합니다! </div>
                    <div class="review_content pc"> 어느 집에나 어울릴 무난한 색상에 디자인입니다.</div>
                    <hr>
                    <a class="" href="#"></a>
                   
                    <div class="page_wrap">
                        <div class="page_nation">
                           <a class="arrow pprev" href="#"></a>
                           <a class="arrow prev" href="#"></a>
                           <a href="#" class="active">1</a>
                           <a href="#">2</a>
                           <a href="#">3</a>
                           <a href="#">4</a>
                           <a href="#">5</a>
                           <a class="arrow next" href="#"></a>
                           <a class="arrow nnext" href="#"></a>
                        </div>
                     </div>
                </section>
                    
         

    </div>



      <div class=QnA>
        <div class="review_count pd" style="font-size:25px; margin-left:12%;">문의</div>
        <br>
        <div class="QnA_category">
            <table style="margin-left:130px;margin-top:1px;float:left;">
              <th>
                  <tr style="background-color:lightgray;">
                      <td class="btn pc">전체</td>
                      <td class="btn pc">교환&환불</td>
                      <td class="btn pc">상품</td>
                      <td class="btn pc">배송</td>
                      <td class="btn pc">기타문의</td>
                  </tr>
              </th>
            </table>
        </div>
        <button class="buy_now pd" style="width:100px;height:40px;float:right;margin-right:150px;">문의하기</a></td></button>
        <section class="review_article" style="width:820px;height:550px;margin-left:120px;">
        <div class="pc">구매한 상품의 취소/반품은 이곳을 통해 신청 가능합니다.</div>
        <div class="pc" style="margin-top:10px;">후기게시판을 통한 취소나 환불, 반품 등은 처리되지 않습니다.</div>
        <div class="pc" style="margin-top:10px;">상품과 관계없는 글, 양도, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 이동, 삭제될 수 있습니다.</div>
        <div class="pc" style="margin-top:10px;">공개 게시판이므로 전화번호, 메일 주소 등 고객님의 소중한 개인정보는 절대 남기지 말아주세요.</div>
        <hr>
        
        <br>
        <div class="review_product_name pb" style="font-size:13px;color:lightslategrey">Mobius 화이트 패브릭 소파 (C1P1)</div>
        <br>
    
            
            <table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
                <caption>게시판 리스트</caption>
                <colgroup>
                <col>
                <col width="110">
                <col width="100">
                <col width="80">
                </colgroup>
                <thead>
                <tr>
                <th class="pd" scope="col" style="width :100px;">번호</th>
                <th class="pd" scope="col" style="width :250px;">제목</th>
                <th class="pd" scope="col">작성자</th>
                <th class="pd" scope="col">날짜</th>
                <th class="pd" scope="col" style="width :100px;">현황</th>
                </tr>
                </thead>
               
                <tbody>
                <tr>
                    <td class="num pc">4</td>
                    <td class="title pc btn">배송관련문의
                        <div class="btn pc" style="float:left;background-color: lightgray;margin-right: 10px;">배송문의
                    </td>


                    <td class="name pc ">user04</td>
                    <td class="date pc">2021/05/16</td>
                    <td class="on_answer pc">답변대기중 </td>
                </tr>
                <tr>
                    <td class="num pc">3</td>
                    <td class="title pc btn">제품관련문의
                        <div class="btn pc" style="float:left;background-color: lightgray;margin-right: 10px;">상품문의
                        </td>
                    <td class="name pc">user03</td>
                    <td class="date pc">2021/05/18</td>
                    <td class="on_answer pc">답변대기중</td>
                </tr>
                <tr>
                    <td class="num pc">2</td>
                    <td class="title pc btn">하자관련문의
                        <div class="btn pc" style="float:left;background-color: lightgray;margin-right: 10px;">교환문의
                        </td>
                    <td class="name pc">user02</td>
                    <td class="date pc">2021/05/14</td>
                    <td class="on_answer pc">답변대기중</td>
                    </tr>
                    <td class="num pc ">1</td>
                    <td class="title pc btn">제목입니다.
                        <div class="btn pc" style="float:left;background-color: lightgray;margin-right: 10px;">기타문의
                        </td>
                    <td class="name pc">user01</td>
                    <td class="date pc">2021/05/14</td>
                    <td class="answer_end pc">답변완료</td>
                    </tr>
                
                <!-- tr이 제목 1줄입니다 보일 list 갯수만큼 li반복합니다.-->
                </tbody>
                </table>
         
                <form id="search" action="" method="get" style="margin-left:250px;margin-top:20px;">
                    <input type="search" name="searchheader">
                    <input type="submit" value="&#xf002;">
                </form>
            
            <!-- tr이 제목 1줄입니다 보일 list 갯수만큼 li반복합니다.-->
            </tbody>
            </table>

        <div class="page_wrap">
            <div class="page_nation">
               <a class="arrow pprev" href="#"></a>
               <a class="arrow prev" href="#"></a>
               <a href="#" class="active">1</a>
               <a href="#">2</a>
               <a href="#">3</a>
               <a href="#">4</a>
               <a href="#">5</a>
               <a class="arrow next" href="#"></a>
               <a class="arrow nnext" href="#"></a>
            </div>
         </div>



    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'/>


    <style>
    .inner-star::before{color: #FF9600;}
    .outer-star {font-size:30px;position: relative;display: inline-block;color: #CCCCCC;}
    .inner-star {position: absolute;left: 0;top: 0;width: 0%;overflow: hidden;white-space: nowrap;}
    .outer-star::before, .inner-star::before {content: '\f005 \f005 \f005 \f005 \f005';font-family: 'Font Awesome 5 free';font-weight: 900;}
    </style>

    <script>ratings = {RatingScore: 4.5} 
    totalRating = 5;table = document.querySelector('.RatingStar');function rateIt() {for (rating in ratings) {ratingPercentage = ratings[rating] / totalRating * 100;ratingRounded = Math.round(ratingPercentage / 10) * 10 + '%';star = table.querySelector(`.${rating} .inner-star`);numberRating = table.querySelector(`.${rating} .numberRating`);star.style.width = ratingRounded;numberRating.innerText = ratings[rating];}}rateIt()
    </script>


    </section>    






<!--section에 적용될 style, script 내용 넣어주세요-->
<style>




    .btn{
        cursor:pointer;
    }

    .answer_end{
        color:black;background-color:silver;text-align: center;
    }

    .on_answer{
        color:white; background-color: lightseagreen;
    }


        .sub_news,.sub_news th,.sub_news td{border:0}
        .sub_news a{color:#383838;text-decoration:none}
        .sub_news{width:100%;border-bottom:1px solid #999;color:#666;font-size:12px;}
        .sub_news caption{display:none}
        .sub_news th{padding:5px 0 6px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:20px;vertical-align:top}
        .sub_news td{padding:8px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
        .sub_news .date,.sub_news .num{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
        .sub_news .title{text-align:left; padding-left:10px; font-size:13px;}
        .sub_news .title .pic,.sub_news .title .new{margin:0 0 2px;vertical-align:middle}
        .sub_news .title a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
    

        .page_wrap {
            margin-top:30px;
            text-align:center;
            font-size:0;
        }
        .page_nation {
            display:inline-block;
        }
        .page_nation .none {
            display:none;
        }
        .page_nation a {
            display:block;
            margin:0 3px;
            float:left;
            border:1px solid #e6e6e6;
            width:28px;
            height:28px;
            line-height:28px;
            text-align:center;
            background-color:#fff;
            font-size:13px;
            color:#999999;
            text-decoration:none;
        }
        .page_nation .arrow {
            border:1px solid #ccc;
        }
        .page_nation .pprev {
        background:#f8f8f8 url('img/arrow/page_pprev.png') no-repeat center center;
        margin-left:0;
        }
        .page_nation .prev {
        background:#f8f8f8 url('img/arrow/page_prev.png') no-repeat center center;
        margin-right:7px;
        }
        .page_nation .next {
        background:#f8f8f8 url('img/arrow/page_next.png') no-repeat center center;
        margin-left:7px;
        }
        .page_nation .nnext {
        background:#f8f8f8 url('img/arrow/page_nnext.png') no-repeat center center;
        margin-right:0; 
        }
        .page_nation a.active {
        background-color:#42454c;
        color:#fff;
        border:1px solid #42454c;
        }


    .review_content {
        font-size : 14px;
        margin-top : 10px;
    }

    .review_title {
        font-size:14px;
    }

    .review_img {
    border-radius: 4px;
    width: 80px;
    height: 80px;
    margin-right: 12px;
    }


    @media screen and (max-width: 600px) {
    .column {
    width: 70%;
    height: 50%;
    margin-bottom: 20px;
    }

    .column {
        margin-left:15%;
    }

    /* Float four columns side by side */
    .column {
        width: 70%;
        height: 50%;
        padding: 0 10px;
        margin-bottom: 20px;
    }
    

    .row {margin: 0 -5px;}


    .row:after {
    content: "";
    display: table;
    clear: both;
    }

    #wrap .more {opacity:1
    }      

    .more{
        position:relative; 
        display:block; 
        font-size:18x; 
        color:#fff; bottom:350px; 
        line-height:40px; width:120px; 
        opacity:0; 
        transition:0.5s all       
    } 


    .card {
    width:800px;
    height:100px;
    text-align: left;
    background-color: white;
}    
}
.blind {
position: absolute;
overflow: hidden;
margin: -1px;
padding: 0;
width: 1px;
height: 1px;
border: none;
clip: rect(0, 0, 0, 0);
}

.startRadio {
display: inline-block;
overflow: hidden;
height: 40px;
}
.startRadio:after {
content: "";
display: block;
position: relative;
z-index: 10;
height: 40px;
background: url("data:image/png;base64,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") repeat-x 0 0;
background-size: contain;
pointer-events: none;
}
.startRadio__box {
position: relative;
z-index: 1;
float: left;
width: 20px;
height: 40px;
cursor: pointer;
}
.startRadio__box input {
opacity: 0 !important;
height: 0 !important;
width: 0 !important;
position: absolute !important;
}
.startRadio__box input:checked + .startRadio__img {
background-color: #0084ff;
}
.startRadio__img {
display: block;
position: absolute;
right: 0;
width: 500px;
height: 40px;
pointer-events: none;
}
   
    #category_top {
        position:absolute;
    }

    #product_desc {
        position:absolute;
        margin-left: 600px;
    }


    .sofa{
        width:300px;
        height:300px;
    }

</style>
<script>
    $("#inkkisun").hover((e)=>{
        $(e.target).css("background-color","rgb(233, 248, 240)");
    },(e)=>{
        $(e.target).css({"background-color":"white","font-size":"10px"});
    })
    $("#nopunsun").hover((e)=>{
        $(e.target).css("background-color","rgb(233, 248, 240)");
    },(e)=>{
        $(e.target).css({"background-color":"white","font-size":"10px"});
    })
    $("#najunsun").hover((e)=>{
        $(e.target).css("background-color","rgb(233, 248, 240)");
    },(e)=>{
        $(e.target).css({"background-color":"white","font-size":"10px"});
    })
    $("#recentsun").hover((e)=>{
        $(e.target).css("background-color","rgb(233, 248, 240)");
    },(e)=>{
        $(e.target).css({"background-color":"white","font-size":"10px"});
    })
    $("#zzim1").click((e)=>{
        alert("위시리스트에 추가되었습니다.")
    })
    $("#jangbagunichuga1").click((e)=>{
        alert("장바구니에 추가되었습니다.")
    })
    $("#zzim2").click((e)=>{
        alert("위시리스트에 추가되었습니다.")
    })
    $("#jangbagunichuga2").click((e)=>{
        alert("장바구니에 추가되었습니다.")
    })
    $("#zzim3").click((e)=>{
        alert("위시리스트에 추가되었습니다.")
    })
    $("#jangbagunichuga3").click((e)=>{
        alert("장바구니에 추가되었습니다.")
    })
    


</script>

<%@ include file="/views/common/footer.jsp"%>