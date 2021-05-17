<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <section>

        <h1 class="pe" style="margin-left: 40px;"> 상품 관리 </h1>
        
        <hr style="margin-bottom: 50px;">

        <div class=price_border" style="margin-left:5%;margin-top:3% ;width:1000px;
                    height:400px;border:1px solid #6d6d6d;">

                <div class="register div" style="width:400px;margin-left:100px;float:left;">
                    <div class="register pe" style="font-size:21px;margin-left:10%;margin-top:20px;">상품 등록</div>
                    <div class="enter_name" style="margin-left:10%;"><input style="width:280px;height:30px;display:inline-block;margin-top:30px;" maxlength="20" placeholder="상품명을 입력해주세요"></div>
                        <div class="dropdown">
                            <div id="dropdown_category">
                            <select class="odfselect" style="height:30px;margin-left:10%;margin-top:2%">
                                <option selected>상품 카테고리 분류</option>
                                <option>소파</option>
                                <option>침대</option>
                                <option>옷장</option>
                                <option>서랍</option>
                                <option>책상</option>
                                <option>의자</option>
                            </select>
                            </div>
                        </div>
                
                
                
                    <div class=image_div>
                        <form action="upload.php" method="post" enctype="multipart/form-data">
                            <input multiple="multiple" type="file" style="width:200px;height:50px;margin-left:10%;margin-top:3%;float:left;" value="">
                        </form>
                        <button id="delete_image" style="width:50px;height:30px;margin-left:15px;margin-top:10px;">삭제</a></td></button>
                    </div>
                </div>
                
                <div class="price_div" style="margin-right:20%;float:right;margin-top: 75px">
                    <div class="pd" style="font-size:18px;margin-left:2%;">가격</div>
                    <div class="pc" style="margin-top:2%;margin-left:2%;">판매가(KRW)</div>
                    <input style="width:195px;height:30px;display:inline;margin-top:1%;margin-left:2%;" maxlength="20" placeholder="판매할 금액을 입력 해주세요">
            
                    
                    <div class="pc" style="margin-top:2%;margin-left:2%;margin-top:30px;">배송비 할인 사용 설정</div>
                    <input type="checkbox" name="xxx" value="yyy" checked>배송비 10,000원</td>
                </div>
      
                <div class="option_div" style="display:inline-block; margin-left:140px;">
                    <div class="pd" style="font-size: 18px;display:inline-block;margin-top:1px;">기본 옵션</div>
                
                    <table class="ess_option" style="width:250px;border:1px solid black;margin-top:2%;">
                        <th style="width:40px">사이즈</th>
                        <th style="width:40px">재고</th>
                        <th style="width:40px">상태</th>
                        
                        <tr>
                            <td><input type="text" style="width:80px;"</td>
                            <td><input type="text" style="width:80px;"</td>
                            <td>	
                                <div class="dropdown">
                                    <div id="dropdown_category">
                                        <select class="odfselect" style="height:30px;margin-left:5%;margin-top:2%">
                                            <option selected>판매 상태</option>
                                            <option>구매 가능</option>
                                            <option>구매 불가</option>
                                        </select>
                                    </div></td>  
                                </div>
                        </tr>
                    </table> 
                </div>
            </div>
                <div class="register_product pc" style="display:inline-block;margin-left:2%;">
                    </div>
                        
                <form><textarea name = "ta1" rows = "7" cols ="40" wrap = "virtual" style="width:1000px; height:400px;margin-left:5%;">상품의 상세정보 이미지를 등록해주세요.  (스마트에디터 사용)
                        </textarea>
                </form>
                <br>
                <a href="" style="width:70px; height:50px;border:1px solid;padding:5px;margin-left:450px;">이전으로</a>
                <a href="" style="width:70px; height:50px;border:1px solid;padding:5px;margin-left:50px;">상품 등록</a>

            </section>
    <!--section에 적용될 style, script 내용 넣어주세요-->
    <style>
      

        a{
            text-decoration:none;
            color:#000000;
        }
        a:hover{

            text-decoration:underline;
        }
        caption{
            display:none; /*안보이게 설정, 
                                화면에 보이지는 않지만 스크린리더리로 읽어짐.*/
            
        }
        table{
            width:800px;
            border-collapse:collapse;
            border-top:2px solid #8d8d8d;
        }
        th{
            padding:10px 8px; /*padding: vertical horizontal;*/
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

    
 
   




    </style>
    <script></script>


<%@ include file="/views/common/header.jsp"%>