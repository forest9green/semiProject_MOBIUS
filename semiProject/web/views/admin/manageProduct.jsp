<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <h1 class="pe" style="margin-left: 40px;"> 상품 관리 </h1>

        <div class="manageProduct_tbl">
            
            <div class="status" style="margin-left:220px; margin-bottom:-20px;">
                <div class="total pd" style="display:inline-block;margin-left:30px;"><a href="">전체</a></div>
                    <span style="margin-left:15px;">|</span>
                <div class="on_sale pd" style="display:inline-block;margin-left:20px;"><a href="">판매중</a></div>
                    <span style="margin-left:15px;">|</span>
                <div class="on_sale pd" style="display:inline-block;margin-left:20px;"><a href="">품절</a></div>
            </div>

            <div class="search" style="float:center; margin-left: 70%;padding-bottom:20px;"> <input class="pc" type="text" placeholder="상품명/상품코드 검색">

                <button class="pc">검색</button></div>

        <hr style="margin-bottom: 50px;">
        
        <table class="category" style="width:120px;margin-top:50px;margin-left:30px;">
            <tr>
                <th class="pd" style="border-bottom:none;display:inline-flex;">
                    <a href="" style="color:black">카테고리 관리</a>
                        <img class="gear" src="./img/gear.jpg" style="width:35px; height:30px;"></th>
            </tr>
            <tr>
                <td class="pb" style="border-bottom:none;"><a href="">전체</a></td>
            </tr>
            <tr>
                <td class="pb" style="border-bottom:none;"><a href="">세일</a></td>
            </tr>
            <tr>
                <td class="pb" style="border-bottom:none;"><a href="">소파</a></td>
            </tr>
            <tr>
                <td class="pb" style="border-bottom:none;"><a href="">침대</a></td>
            </tr>
            <tr>
                <td class="pb" style="border-bottom:none;"><a href="">옷장</a></td>
            </tr>
            <tr>
                <td class="pb" style="border-bottom:none;"><a href="">서랍</a></td>
            </tr>
            <tr>
                <td class="pb" style="border-bottom:none;"><a href="">책상</a></td>
            </tr>
            <tr>
                <td class="pb" style="border-bottom:none;"><a href="">의자</a></td>
            </tr>
            </table>


            <table style="margin-left:18%;margin-top:-35%">

            <colgroup> 
                <!--col태그는 표에서 하나 이상의 td태그에 대해 속성값을 정의-->
                <!-- 여기서는 각 열의 크기를 지정-->
                <col width="5%">
                <col width="7%"/>  <!--나머지 크기-->
                <col width="10%"/>
                <col width="10%"/>
                <col width="15%"/>
                <col width="10%"/>
                <col width="12%" >
                <col width="10%"/>
                <col width="10%"/>
                <col width="15%">

                </colgroup>
    
        <!--테이블 머리말 부분-->
        <thead>
            <th class="pe" scope="체크박스"><input type="checkbox" name="xxx" value="yyy" checked></th>
            <th class="pd" scope="번호">번호</th> 
            <th class="pd" scope="이미지">이미지</th>
            <th class="pd" scope="상품명">상품명</th>
            <th class="pd" scope="판매가">판매가</th>
            <th class="pd" scope="분류">분류</th>
            <th class="pd" scope="상태">상태</th>
            <th class="pd" scope="재고">재고</th>
            <th class="pd" scope="등록일">등록일</th>
            <th class="pd" scope="상품수정">상품수정</th>

        </thead>

        <!--테이블 내용 부분-->
        <tbody>
            <tr class="pc">
                <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                <td>10</td>
                <td><img src="./img/sofa_small.jpg"></td>
                <td>소파1 (SA131611)</td>
                <td>180,000원</td>
                <td>소파</td>
                <td>판매중</td>
                <td>15개</td>
                <td>2021.05.13</td>
                <td><button id="" style="width:80px;">상품수정</a></td> 
            </tr>
            <tr class="pc">
                <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                <td>9</td>
                <td><img src="./img/sofa_small.jpg"></td>
                <td>소파1 (SA131611)</td>
                <td>180,000원</td>
                <td>소파</td>
                <td>판매중</td>
                <td>15개</td>
                <td>2021.05.13</td>
                <td><button id="" style="width:80px;">상품수정</a></td> 
            </tr>
            <tr class="pc">
                <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                <td>8</td>
                <td><img src="./img/sofa_small.jpg"></td>
                <td>소파1 (SA131611)</td>
                <td>180,000원</td>
                <td>소파</td>
                <td>판매중</td>
                <td>15개</td>
                <td>2021.05.13</td>
                <td><button id="" style="width:80px;">상품수정</a></td> 
            </tr>
            <tr class="pc">
                <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                <td>7</td>
                <td><img src="./img/sofa_small.jpg"></td>
                <td>소파1 (SA131611)</td>
                <td>180,000원</td>
                <td>소파</td>
                <td>판매중</td>
                <td>15개</td>
                <td>2021.05.13</td>
                <td><button id="" style="width:80px;">상품수정</a></td>  
            </tr>
            <tr class="pc">
                <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                <td>6</td>
                <td><img src="./img/sofa_small.jpg"></td>
                <td>소파1 (SA131611)</td>
                <td>180,000원</td>
                <td>소파</td>
                <td>판매중</td>
                <td>15개</td>
                <td>2021.05.13</td>
                <td><button id="" style="width:80px;">상품수정</a></td> 
            </tr>
            <tr class="pc">
                <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                <td>5</td>
                <td><img src="./img/sofa_small.jpg"></td>
                <td>소파1 (SA131611)</td>
                <td>180,000원</td>
                <td>소파</td>
                <td>판매중</td>
                <td>15개</td>
                <td>2021.05.13</td>
                <td><button id="" style="width:80px;">상품수정</a></td> 
            </tr>
            <tr class="pc">
                <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                <td>4</td>
                <td><img src="./img/sofa_small.jpg"></td>
                <td>소파1 (SA131611)</td>
                <td>180,000원</td>
                <td>소파</td>
                <td>판매중</td>
                <td>15개</td>
                <td>2021.05.13</td>
                <td><button id="" style="width:80px;">상품수정</a></td> 
            </tr>
            <tr class="pc">
                <td><input type="checkbox" name="xxx" value="yyy" checked></td>
                <td>3</td>
                <td><img src="./img/sofa_small.jpg"></td>
                <td>소파1 (SA131611)</td>
                <td>180,000원</td>
                <td>소파</td>
                <td>판매중</td>
                <td>15개</td>
                <td>2021.05.13</td>
                <td><button id="" style="width:80px;">상품수정</a></td> 
            </tr>
    
        
        </tbody>
    
             
            </table>
    
        </div>
        </br>

        <div class="register_product pc" style="display:inline-block;margin-left:74%;">
            <a href="" style="width:70px; height:50px;border:1px solid;padding:5px;">상품 등록</a></div>
        <div class="delete_product pc" style="display:inline-block;margin-left:2%;" >
            <a href="" style="width:70px; height:50px;border:1px solid;padding:5px;">상품 삭제</a></div>
        
        
      
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

<style>
    .inline{
        display:inline;
    }
    a{
        text-decoration:none;
        color:#000000;
    }
    a:hover{
        text-decoration:underline;
    }
    caption{
        display:none; /*안보이게 설정, 화면에 보이지는 않지만 스크린리더리로 읽어짐.*/
    }
    table{
        width:800px;
        border-collapse:collapse;
        border-top:2px solid #8d8d8d;
    }
    th{
        padding:10px 8px; /*padding: vertical horizontal;*/
        background:#f9f9f9;
        color:#666;
        border-bottom:1px solid #8d8d8d;
    }
    td{
        padding:10px 8px; /*padding: vertical horizontal;*/
        text-align:center;
        line-height:1.25em;
        color:#666;
        border-bottom:1px solid #8d8d8d;
    }
    td.article{ /*article 클래스가 적용된 열만 좌측 정렬*/
        text-align:left;
    }
    #wrap .more {opacity:1}
    .more {
        position:relative; 
        display:block; 
        font-size:18x; 
        color:#fff; bottom:350px; 
        line-height:40px; width:120px; 
        opacity:0; 
        transition:0.5s all       
    }
    body {
        font-family: Arial, Helvetica, sans-serif;
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
    .card {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* this adds the "card" effect */
    padding: 16px;
    text-align: center;
    background-color: #f1f1f1;
	}
	@media screen and (max-width: 600px) {
	    .column {
	    width: 70%;
	    height: 50%;
	    margin-bottom: 20px;
	    }
	}
	.column {
	    margin-left:15%;
	}
	.button_image {
	    position:absolute;
	    bottom:50%;
	    left: 33%;
	    width: 30px;
	    height:20px;
	    z-index: 2;
	    cursor: pointer;
	    display:inline-block;
	}
	img {
	    width : 100%;
	    height : 100%;
	}
	    
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
</style>

<script></script>

<%@ include file="/views/common/footer.jsp"%>