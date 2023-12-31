<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./mypageHeader.jsp" %>

<!-- 본문 시작 template.jsp -->


	<!-- Page content wrapper-->
	<div id="page-content-wrapper">

	<!-- Page content-->


	<div class="container">
		<h4>내 강의실</h4>
		<p>내가 신청한 강의 수강 현황을 확인할 수 있습니다</p>
		<br>
		<table class="table table-condensed">
        <thead>
            <tr>
                <th>강의번호</th>
                <th>교육신청번호</th>
                <th>내용</th>
                <th>신청날짜</th>
                <th>수료상태</th>
                <th>수료날짜</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="education" items="${myClassList}">
                <tr>
                    <td>${myClassList.myno}</td>
                    <td>${education.eduno}</td>
                    <td>${education.mycon}</td>
                    <td>${education.mydate}</td>
                    <td>${education.mystate}</td>
                    <td>${education.mycomple}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
		

		</div>
	</div>


<!-- 본문 끝 -->


<%@ include file="./mypageFooter.jsp" %>      