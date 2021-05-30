<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.cart.model.vo.CartProduct, java.text.NumberFormat" %>
<%
	List<CartProduct> carts=(List<CartProduct>)request.getAttribute("carts");
	int totalPrice=0;
	int totalDeliveryFee=10000;
	if(!carts.isEmpty()) {
		for(CartProduct cp:carts){
			totalPrice+=cp.getPrice()*cp.getAmount();
		}
		for(CartProduct cp:carts){
			if(cp.getDeliveryFee()==59000){
				totalDeliveryFee=59000;
			}
		}
	}
	NumberFormat nf = NumberFormat.getInstance();
%>
    
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="cart_box" class="box">
        <p><h2 class="pe">CART</h2></p>
            <div id="cart_table_box">
                <table id="cart_table" class="pa" border=1>
                    <thead>
                        <tr>
                            <th width=40><input type="checkbox" id="checkall"></th>
                            <th width=145>이미지</th>
                            <th>상품명</th>
                            <th width=80>수량</th>
                            <th width=85>가격</th>
                            <th width=85>적립금</th>
                            <th width=85>배송비</th>
                            <th width=85>합계</th><!--가격+배송비-->
                            <th width=120>선택</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if(!carts.isEmpty()) {
                        	for(CartProduct cp:carts){%>
		                        <tr>
		                            <td><input type="checkbox" name="chk" value="<%=cp.getpCode()%>"></td>
		                            <td><img src="<%=request.getContextPath() %>/images/product/<%=cp.getpCode().substring(0,2)%>/<%=cp.getpCode()%>-1.jpg"></td>
		                            <td><%=cp.getpName() %></td>
		                            <td>
		                                <input type="number" class="amount" max="100" min="1" step="1" style="width:33px" value="<%=cp.getAmount()%>"><br>
		                                <button class="whitebtn changeAmount" value="<%=cp.getpCode() %>">변경</button>
		                            </td>
		                            <td><%=nf.format(cp.getPrice()*cp.getAmount()) %>원</td>
		                            <td><%=nf.format((int)(cp.getPrice()*cp.getAmount()*0.01)) %>원</td>
		                            <td><%=nf.format(cp.getDeliveryFee()) %>원</td>
		                            <td><%=nf.format(cp.getPrice()*cp.getAmount()+cp.getDeliveryFee()) %>원</td>
		                            <td>
		                                <ul id="cart_detail_btn">
		                                    <li><button>주문하기</button></li>
		                                    <li><button class="deleteCart" value="<%=cp.getpCode() %>">삭제</button></li>
		                                </ul>
		                            </td>
		                        </tr>
	                        <%}
                       	}%>
                    </tbody>
                </table>
            </div>
            <div id="cart_btn1">
                <button type="button" id="deletebtn" class="pb">삭제</button>
            </div>
            <div id="price_box">
                <table id="price_table" class="pa" border>
                    <tr>
                        <th>총 상품금액</th>
                        <th>배송비</th>
                        <th>결제 예정 금액</th>
                    </tr>
                    <tr>
                        <td><%=nf.format(totalPrice) %>원</td>
                        <td>+ <%=nf.format(totalDeliveryFee) %>원</td>
                        <td><%=nf.format(totalPrice+totalDeliveryFee) %>원</td>
                    </tr>
                </table>
            </div>
            <div id="cart_btn2">
                <button type="button" class="pb blackbtn">선택 상품 주문</button>
                <button type="button" class="pb blackbtn">전체 상품 주문</button>
            </div>
    </div>
</section>

<script>
	$(document).ready(function(){
	    $("#checkall").click(function(){
	        //상단의 체크박스 클릭 여부에 따라 전체체크/해제 로직
	        if($("#checkall").prop("checked")){
	            $("input[name=chk]").prop("checked",true);
	        }else{
	            $("input[name=chk]").prop("checked",false);
	        }
	    })
	});
	
	$(".changeAmount").click((e)=>{
		$.ajax({
			url:"<%=request.getContextPath()%>/myPage/changeAmount",
			data:{
				"userId":'<%=loginUser.getUserId()%>',
				"pCode":$(e.target).val(),
				"amount":$(e.target).prev().prev().val()
			},
			success:data=>{
				if(data>0){
					alert("변경되었습니다.");
				}else{
					alert("변경에 실패했습니다.");
				}
			}
		})
	})
	
	$(".deleteCart").click((e)=>{
		const pCode=$(e.target).val();
		location.replace('<%=request.getContextPath()%>/myPage/deleteCart?userId=<%=loginUser.getUserId()%>&pCode='+pCode);
	})
	
	$("#deletebtn").click((e)=>{
		const checkValue = $("input[name=chk]:checked").length;
	    let checkPCodes = new Array(checkValue);
	    for(let i=0; i<checkValue; i++){                          
	    	checkPCodes[i] = $("input[name=chk]:checked")[i].value;
	    }
	    location.replace('<%=request.getContextPath()%>/myPage/deleteCart?userId=<%=loginUser.getUserId()%>&pCodes='+checkPCodes);
	})
</script>

<style>
    #cart_box{
        width:1000px;
        height:800px;
        margin:50px auto;
    }
    #cart_box>p+h2{
        font-size: 30px;
    }
    #cart_table{
        margin:30px 0 10px 0;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #cart_table tr{
        height:40px;
    }
    #cart_table tr>td>img{
    	width:100px;
		height:80px;
		object-fit:cover;
		vertical-align:middle;
    }
    #cart_detail_btn{
        list-style-type: none;
        padding:0;
        margin:6px 0 6px 0;
    }
    .whitebtn{
        border: 1px gray solid;
        text-align: center;
        background-color: white;
    }
    #cart_detail_btn>li>button{
        border: 1px gray solid;
        margin: 4px 0 4px 0;
        width:100px;
        height:27px;
        text-align: center;
        background-color: white;
    }
    #cart_btn1 button:first-child{
        border: 1px gray solid;
        width:50px;
        height:30px;
        text-align: center;
        background-color: white;
    }
    .blackbtn{
        position: relative;
        left:754px;
        border: 1px gray solid;
        width:120px;
        height:40px;
        text-align: center;
        color:white;
        background-color: black;
    }
    #price_table{
        margin:30px 0 10px 0;
        width:1000px;
        height:100px;
        text-align: center;
        border-collapse: collapse;
        margin-bottom: 10px;
    }
    #price_table th{
        font-size: 18px;
    }
    #price_table td{
        font-size: 16px;
    }
    #cart_box>p+h2{
        font-size: 30px;
    }
    button:hover{
    	cursor:pointer;
    }
</style>

<%@ include file="/views/common/footer.jsp"%>