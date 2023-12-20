<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./mypageHeader.jsp" %>

<!-- 본문 시작 template.jsp -->


	<!-- Page content wrapper-->
	<div id="page-content-wrapper">

	<!-- Page content-->



	<div class="container">
		<h4>봉사신청내역</h4>
		<p>나의 봉사 신청 내역을 확인 할 수 있습니다</p>
		<br>
	<table class="table table-condensed">
        <thead>
            <tr>
                <th>봉사신청번호</th>
                <th>신청날짜</th>
                <th>신청시간</th>
                <th>신청상태</th>
            </tr>
        </thead>
  		<tbody>
            <c:forEach items="${myClassList}" var="myservice" >
                <tr>
                    <td>${myservice.myno}</td>
                    <td>${myservice.eduno}</td>
                    <td>${myservice.mycon}</td>
                    <td>${myservice.mydate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
		</div>
	</div>


<!-- 본문 끝 -->


<%@ include file="./mypageFooter.jsp" %>      