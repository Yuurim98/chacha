<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../header.jsp" %>

<!-- 본문 시작 template.jsp -->
<h3> 목격/제보 게시판 </h3>
<nav class="navbar navbar-light bg-light" style="height: 42px">
		 <ul class="list-inline" style="align-items: center">
			<li class="list-inline-item">
				<a href="/"><i class="bi bi-house fs-7" style="font-size: 23px" alt="홈으로"></i></a>
				<i class="bi bi-arrow-right-short" style="font-size: 23px"></i>
			</li>
			<li class="list-inline-item">
				<a><span style="color: #F3BD00">반려이야기</span></a>
				<i class="bi bi-arrow-right-short" style="font-size: 23px"></i>
			</li>
			<li class="list-inline-item">
				<a><span style="color: #F3BD00">목격/제보</span></a>
			</li>
		</ul>
	</nav>
<p><a href="/help/helpForm">[글쓰기]</a></p>

<form name="helpfrm" id="helpfrm" method="post" action="help">
</form>

<!-- 본문 끝 -->


<%@ include file="../footer.jsp" %>      