<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <h1 class="searchp" style="font-family: 'Noto Sans KR';font-size: 30px;">검색상품</h1>
    <div id="sp_v_top">
        <div class="sp_v_left">
            <!-- <a class="sproductsbtn btn-light btn-spprimary junchae" href>전체</a> -->
        </div>
        <div class="sp_v_right">
            <a class="sproductsbtn spbtn-light spbtn-spsecondary inkki" id="inkkisun" href>인기순</a>
            <a class="sproductsbtn spbtn-light spbtn-spsecondary nopun" id="nopunsun" href>높은가격순</a>
            <a class="sproductsbtn spbtn-light spbtn-spsecondary najun" id="najunsun" href>낮은가격순</a>
            <a class="sproductsbtn spbtn-light spbtn-spsecondary recent" id="recentsun" href>최근등록순</a>
        </div>
    </div>

    <div id="sproducts">
            <div class="sproducts1">
            <a href="">
                <img src="C:\Users\WORK\Desktop\SEMI UI\img\sofa1.jpg"></img>
            </a> 
            <div class="sp_container">
                <div class="sphaert">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16" id="zzim1">
                        <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"></path>
                      </svg>
                </div>
                <div class="sp_name_price">
                    <a href="">
                        <div class="sprodcuts-dt">
                            <p class="sangpoomirum">상품이름</p>
                        </div>
                    </a>
                    <div class="sproducts-price">
                        <p1 class="sangpoomgagyuk">100,000원</p1>
                    </div>
                </div>
                <div class="spjangbagunidamgi">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16" id="jangbagunichuga1">
                        <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
                      </svg>
                </div>
            </div> 
            </div>
            <div class="sproducts2">
                <a href="">
                    <img src="C:\Users\WORK\Desktop\SEMI UI\img\sofa2.jpg"></img>
                </a>
                <div class="sp_container">
                    <div class="sphaert">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16" id="zzim2">
                            <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"></path>
                          </svg>
                    </div>
                    <div class="sp_name_price">
                        <a href="">    
                            <div class="sprodcuts-dt">
                                <p class="sangpoomirum">상품이름</p>
                            </div>
                        </a> 
                        <div class="sproducts-price">
                            <p1 class="sangpoomgagyuk">100,000원</p1>
                        </div>
                    </div>
                    <div class="spjangbagunidamgi">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16" id="jangbagunichuga2">
                            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
                          </svg>
                    </div>
                </div>                     
            </div>
            <div class="sproducts3">
                <a href="">
                    <img src="C:\Users\WORK\Desktop\SEMI UI\img\sofa3.jpg"></img>
                </a>
                <div class="sp_container">
                    <div class="sphaert">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16" id="zzim3" >
                            <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"></path>
                          </svg>
                    </div>
                    <div class="sp_name_price">
                        <a href="">   
                            <div class="sprodcuts-dt">
                                <p class="sangpoomirum">상품이름</p>
                            </div>
                        </a>
                        <div class="sproducts-price">
                            <p1 class="sangpoomgagyuk">100,000원</p1>
                        </div>
                    </div>
                    <div class="spjangbagunidamgi">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16" id="jangbagunichuga3" >
                            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
                          </svg>
                    </div>
                </div>                     
            </div>
    </div>
</section>    

<style>
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
    $("#inkkisun").hover((e)=>{
        $(e.target).css("background-color","rgb(233, 248, 240)");
    },(e)=>{
        $(e.target).css({"background-color":"white","font-size":"15px"});
    })
    $("#nopunsun").hover((e)=>{
        $(e.target).css("background-color","rgb(233, 248, 240)");
    },(e)=>{
        $(e.target).css({"background-color":"white","font-size":"15px"});
    })
    $("#najunsun").hover((e)=>{
        $(e.target).css("background-color","rgb(233, 248, 240)");
    },(e)=>{
        $(e.target).css({"background-color":"white","font-size":"15px"});
    })
    $("#recentsun").hover((e)=>{
        $(e.target).css("background-color","rgb(233, 248, 240)");
    },(e)=>{
        $(e.target).css({"background-color":"white","font-size":"15px"});
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