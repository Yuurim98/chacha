<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./mypageHeader.jsp" %>

<!-- 본문 시작 template.jsp -->


	<!-- Page content wrapper-->
	<div id="page-content-wrapper">

	<!-- Page content-->


	<div class="container">
	<br><br>
		<h4>입양신청내역</h4>
		<p>회원님들의 입양신청내역을 확인 할 수 있습니다</p>
	<table class="table table-condensed">
        <thead>
            <tr>
                <th>신청번호</th>
                <th>아이디</th>
                <th>신청일자</th>
                <th>신청상태</th> <!--사용자에게는 value 값으로 보여줄 것-->
                <th>첨부파일</th>
                <th></th>
                
            </tr>
        </thead>
  		<tbody>
            <c:forEach items="${memAdoptList}" var="memAdopt" >
                <tr>
                    <td>${memAdopt.apno}</td>
                    <td>${memAdopt.uid}</td>
                    <td><fmt:formatDate value="${memAdopt.sub_date}" pattern="yyyy-MM-dd" /></td>
                    <td> 
				        <select name="sub_state"  id="sub_state" class="sub_state">
				        <c:choose>
				        	 <c:when test="${memAdopt.sub_state eq 'S'}">
					        	  <option value="S" selected>신청완료</option>
						          <option value="P">심사중</option>
						          <option value="W">심사완료</option>
						          <option value="C">책임금결제</option>
						          <option value="F">입양완료</option>
						          <option value="X">입양불가능</option>
				        	 </c:when>
				        	<c:when test="${memAdopt.sub_state eq 'P'}">
					        	  <option value="S">신청완료</option>
						          <option value="P" selected>심사중</option>
						          <option value="W">심사완료</option>
						          <option value="C">책임금결제</option>
						          <option value="F">입양완료</option>
						          <option value="X">입양불가능</option>
				        	 </c:when>
				        	 <c:when test="${memAdopt.sub_state eq 'W'}">
					        	  <option value="S">신청완료</option>
						          <option value="P">심사중</option>
						          <option value="W" selected>심사완료</option>
						          <option value="C">책임금결제</option>
						          <option value="F">입양완료</option>
						          <option value="X">입양불가능</option>
				        	 </c:when>		        	
				        	 <c:when test="${memAdopt.sub_state eq 'C'}">
					        	  <option value="S">신청완료</option>
						          <option value="P">심사중</option>
						          <option value="W">심사완료</option>
						          <option value="C" selected>책임금결제</option>
						          <option value="F">입양완료</option>
						          <option value="X">입양불가능</option>
				        	 </c:when>		        	
				        	 <c:when test="${memAdopt.sub_state eq 'F'}">
					        	  <option value="S">신청완료</option>
						          <option value="P">심사중</option>
						          <option value="W">심사완료</option>
						          <option value="C">책임금결제</option>
						          <option value="F" selected>입양완료</option>
						          <option value="X">입양불가능</option>
				        	 </c:when>		        	
				        	 <c:when test="${memAdopt.sub_state eq 'X'}">
					        	  <option value="S">신청완료</option>
						          <option value="P">심사중</option>
						          <option value="W">심사완료</option>
						          <option value="C">책임금결제</option>
						          <option value="F">입양완료</option>
						          <option value="X" selected>입양불가능</option>
				        	 </c:when>
				        </c:choose>
				        </select>
		        	</td>
                    <td>${memAdopt.subpic}</td>
                    <td><input type="button" value="수정" class="btn" name="btn_adUpdate" id="btn_adUpdate" data-uid="${memAdopt.uid}" data-sub_state="${memAdopt.sub_state}"></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br><hr><br><br>
    	<h4>책임금 결제 내역</h4>
		<p>회원님들의 책임금 결제 내역을 확인 할 수 있습니다</p>
	<table class="table table-condensed">
        <thead>
            <tr>
                <th>결제번호</th>
                <th>신청번호</th>
                <th>아이디</th>
                <th>결제금액</th>
                <th>결제수단</th>
                <th>결제여부</th> <!--사용자에게는 value 값으로 보여줄 것-->
                <th>결제일자</th>
                <th></th>
            </tr>
        </thead>
  		<tbody>
            <c:forEach items="${memAdoptList}" var="memAdopt" >
                <tr>
                    <td>${memAdopt.payno}</td>
                    <td>${memAdopt.apno}</td>
                    <td>${memAdopt.uid}</td>
					<td><fmt:formatNumber value="${memAdopt.patamt}" pattern="##,###"/></td>
                    <td>
		            <c:choose>
		                <c:when test="${memAdopt.paymet eq 'cd'}">카드</c:when>
		                <c:when test="${memAdopt.paymet eq 'ch'}">현금</c:when>
		            </c:choose>
		        	</td>
                    <td>
		            <c:choose>
		                <c:when test="${memAdopt.payop eq 'Y'}">결제완료</c:when>
		                <c:when test="${memAdopt.payop eq 'N'}">결제대기</c:when>
		            </c:choose>
		        	</td>
                    <td><fmt:formatDate value="${memAdopt.pdate}" pattern="yyyy-MM-dd" /></td>
                    <td>
                        <c:if test="${memAdopt.sub_state eq 'F'}">
			               <input type="button" value="환불하기" class="btn btn" id="btn_refund" name="btn_refund" onclick="refundProc()">
			            </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br><br>
	</div>
	</div>
	
 <script>
 
 
 $("#btn_adUpdate").click(function(){
	 //alert();
	 
	let uid = $(this).data("uid");
    let subStateSelect = $(this).closest("tr").find(".sub_state");
    let sub_state = subStateSelect.val();
    //alert(uid); 	  //kim9595
    //alert(sub_state); //F
    
	   $.ajax({
        url: '/mypage/memAdoptModify',
        type: 'get',
        //dataType: 'json',
        data: { 'uid': uid, 'sub_state': sub_state },
        error: function (error) {
            alert('에러!');
            console.log(error);
        },
        success: function (result) {
        	if (result === 'success') {
                alert('입양상태가 성공적으로 변경되었습니다');
                console.log(result);
            } else {
                alert('서버에서 성공 메시지를 올바르게 반환하지 않았습니다.');
            }
        }//success end
    });//ajax end
    
	 
	 
	 
 })//click end
 
 
 
 function refundProc() {
		
		if(!confirm("환불을 진행하시겠습니까?")){
			return false;
		}
		
		/*
		let u_id = $("#uid").text();
		let order_no = $("#orderno").text();
		let order_class = $("#orderclass a").text();
		let order_total = $("#ordertotal").text();
		let order_status = $("#orderstatus").text();
		$.ajax({
			url : "/payment/cancelPay",
			type : "POST",
			dataType: "json",
			data : {
				u_id: u_id,
				order_no: order_no,
				order_class: order_class,
				order_total: order_total,
				order_status: order_status,
			}, // 전달되는 데이터
	        success: function (rsp) {
	            // 서버 응답에 대한 처리 로직을 여기에 추가
	            if(rsp.cnt == 1){
					alert(rsp.msg);
					$("#orderstatus").text(rsp.status);
				} else {
					alert(rsp.msg);
					$("#orderstatus").text(rsp.status);
				}
	        },
	        error: function () {
	            console.log("서버 오류");
	        }
		})
		*/
 }//refundProc() end
	 
 </script>





<%@ include file="./mypageFooter.jsp" %>      