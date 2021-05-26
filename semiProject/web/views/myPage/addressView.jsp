<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.address.model.vo.Address" %>
<%
	List<Address> addresses=(List<Address>)request.getAttribute("addresses");
	String pageBar=(String)request.getAttribute("pageBar");
%>
<%@ include file="/views/common/header.jsp"%>

<section>
    <div id="addr_box" class="box">
        <p><h2 class="pe">ADDRESS</h2></p>
        <div id="addr_table_box">
            <table id="addr_table" class="pb" border>
                <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"></th><!--일괄 체크 처리-->
                        <th>기본 배송지</th>
                        <th>배송지명</th>
                        <th>수령인</th>
                        <th>일반전화</th>
                        <th>휴대전화</th>
                        <th>우편번호</th>
                        <th width=420>주소</th>
                    </tr>
                </thead>
                <tbody>
                    <%if(!addresses.isEmpty()) {
                    	for(Address a:addresses) {%>
		                    <tr>
		                        <td><input type="checkbox" name="chk"></td>
		                        <td>
		                        	<%if(a.getDefaultAddr()==1) {%>
		                        		<button type="button" class="defaultbtn blackback" value="<%=a.getAddrNo()%>">지정</button>
		                        	<%} else { %>
		                        		<button type="button" class="defaultbtn" value="<%=a.getAddrNo()%>">지정</button>
		                        	<%} %>
		                        </td>
		                        <td><%=a.getAddName() %></td>
		                        <td><%=a.getReceiverName() %></td>
		                        <td>
		                        	<%if(a.getAddPhone()!=null) {%>
		                        		<%=a.getAddPhone() %>
		                        	<%} %>
	                        	</td>
		                        <td><%=a.getAddCellPhone() %></td>
		                        <td><%=a.getPostCode() %></td>
		                        <td style="text-align:left;padding-left:5px"><%=a.getAddr() %></td>
		                    </tr>
	                    <%}
                   	} else {%>
                   		<tr>
                    		<td colspan="8">적립금 내역이 없습니다.</td>
                    	</tr>
                   	<%} %>
                </tbody>
            </table>
            <div id="addr_btn">
                <button type="button" class="pb">삭제</button>
                <button type="button" class="pb">배송지 등록</button>
            </div>
        </div>
        <div id="c_pagebar" class="pagebar">
        	<%=pageBar %>
        </div>
        <div id="addr_warn">
            <p class="pb">
                *배송지 유의사항*<br>
                1. 기본 배송지는 1개만 저장됩니다. 
            </p>
        </div>
    </div>
</section>

<script>
	$("button.defaultbtn").click((e)=>{
		const addrNo=$(e.target).val();
		
		if($(e.target).hasClass("blackback")){
			//기본 배송지인 걸 해제하는 로직
			if(confirm("기본 배송지를 해제하시겠습니까?")){
				location.assign('<%=request.getContextPath()%>/myPage/clearDefaultAddr?userId=<%=loginUser.getUserId()%>&addrNo='+addrNo);
			}
			
		}else{
			//기본 배송지로 설정하는 로직
			let changeDefaultAddr=false;
			let oldAddrNo="";
			
			//기본 배송지로 설정된 게 있는 지 먼저 확인
			$("button.defaultbtn").each((i,v)=>{
                if($(v).hasClass("blackback")){
                	//이미 기본 배송지가 존재함
                	if(confirm("설정된 기본 배송지가 존재합니다. 변경하시겠습니까?")){
                		//기존의 기본 배송지를 해제하고 새로 설정함
                		oldAddrNo=$(v).val();
                		changeDefaultAddr=true;
                	}//기존의 기본 배송지 유지
                }//기본 배송지가 존재하지 않으므로 선택한 주소를 기본배송지로 지정
            })
            
            if(changeDefaultAddr){
            	//기존의 기본 배송지를 해제하고 새로 설정함
            	location.assign('<%=request.getContextPath()%>/myPage/changeDefaultAddr?userId=<%=loginUser.getUserId()%>&oldAddrNo='+oldAddrNo+'&newAddrNo='+addrNo);
            }else{
            	//기본 배송지가 존재하지 않으므로 선택한 주소를 기본배송지로 지정
            	if(confirm("기본 배송지로 지정하시겠습니까?")){
	            	location.assign('<%=request.getContextPath()%>/myPage/setDefaultAddr?userId=<%=loginUser.getUserId()%>&AddrNo='+addrNo);            		
            	}
            }
		}
	})
</script>

<style>
    #addr_box{
        width:1000px;
        height:800px;
        margin:50px auto;
    }
    #addr_table_box{
        min-height: 200px;
    }
    #addr_table{
        margin:30px 0 10px 0;
        width:1000px;
        text-align: center;
        border-collapse: collapse;
        border-left: none;
        border-right: none;
    }
    #addr_table tr{
        height:40px;
    }
    #addr_table>tbody button[type=button]{
        border: 1px gray solid;
    }
    .blackback{
        background-color: black;
        color:white;
    }
    #addr_btn button:first-child{
        border: 1px gray solid;
        width:50px;
        height:30px;
        text-align: center;
        background-color: white;
    }
    #addr_btn button:last-child{
        position: relative;
        left:853px;
        border: 1px gray solid;
        width:90px;
        height:40px;
        text-align: center;
        color:white;
        background-color: black;
    }
    #addr_box>p+h2{
        font-size: 30px;
    }
    #addr_warn{
        width:945px;
        border: black 1px dotted;
        padding:15px 20px 15px 20px;
    }
    #addr_warn>p{
        margin:0px;
    }
    
    /*pageBar 디자인*/
	.pagebar{
	    margin: 50px auto;
	    display:flex;
	    justify-content: center;
	}
	.pagebar>span, .pagebar>a{
	    margin:0 6px 0 6px;
	}
	.pagebar>a{
	    text-decoration: none;
	    color:black;
	}
	.pagebar>span{
		color:rgba(123, 209, 159);
	}
	.pagebar>a:hover{
	    color:rgba(123, 209, 159);
	}
</style>


<%@ include file="/views/common/footer.jsp"%>