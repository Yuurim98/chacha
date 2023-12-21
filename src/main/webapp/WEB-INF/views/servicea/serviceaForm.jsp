<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ include file="../header.jsp" %>
<style>
table, th, td {
	border: 1px solid white;
	background-color: #092139;
	width: 500px;
	height: 100px;
	text-align: center;
	
}
</style>
<!-- 본문 시작 template.jsp -->
<h3>* 새글쓰기 *</h3>
<p><a href="serviceList.jsp">[글목록]</a></p>
																  <!-- myscript.js에 함수 작성함 -->
<form name="servicefrm" id="servicefrm" method="post" action="bbsIns.jsp" onsubmit="return bbsCheck()">
	<table class="table">
	<tr>
	   <th class="success">작성자</th>
	   <td><input type="text" name="wname" id="wname" class="form-control" maxlength="20" required></td>
	</tr>
	<tr>
	   <th class="success">제목</th>
	   <td><input type="text" name="subject" id="subject" class="form-control" maxlength="100" required></td>
	</tr>
	<tr>
	   <th class="success">내용</th>
	   <td><textarea rows="5"  class="form-control" name="content" id="content"></textarea></td>
	</tr>
	<tr>
	   <th class="success">비밀번호</th>
	   <td><input type="password" name="passwd" id="passwd" class="form-control" maxlength="10" required></td>
	</tr>
	<tr>
	    <td colspan="2" align="center">
	       <input type="submit" value="새글쓰기" class="btn btn-success">
	       <input type="reset"  value="취소" class="btn btn-danger">
	    </td>
	</table>
</form>
<!-- 본문 끝 -->
 
<%@ include file="../footer.jsp" %>      