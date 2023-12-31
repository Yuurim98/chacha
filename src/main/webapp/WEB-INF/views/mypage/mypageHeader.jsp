<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="keywords">
    <meta content="" name="description">
    <!-- <meta name="author" content="" />  -->
    
    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Favicon -->
    <link href="/resources/img/favicon.ico" rel="icon">
    <!-- <link rel="icon" type="image/x-icon" href="/assets/favicon.ico" /> -->

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/mypage.css" rel="stylesheet">
    
    
    
    
<!--     
	<style>
    
	   .small.fa-map-marker-alt.text-primary.me-2  {
	   		color: #F3BD00;
		}
		
		a {
	    	color: #F3BD00;
	    	text-decoration: none;
		}
    
    </style> 
-->
    

<script>
	document.addEventListener('DOMContentLoaded', function () {
	  var sidebarWrapper = document.getElementById('sidebar-wrapper');
	  var listGroupItems = sidebarWrapper.querySelectorAll('.list-group-item');
	
	  // 현재 페이지의 URL
	  var currentUrl = window.location.href;
	
	  // 각 list-group-item에 대한 URL
	  var itemUrls = {
	    '/mypage/jjimList': '찜목록',
	    '/mypage/myList': '내 글목록',
	    '/mypage/myClass': '내 강의실',
	    '/mypage/myService': '봉사신청내역',
	    '/mypage/myInfo': '회원정보',
	    // 추가적으로 필요한 페이지에 대한 URL 및 텍스트를 추가할 수 있습니다.
	  };
	
	  // 클릭 이벤트를 처리하는 함수
	  function handleClick(event) {
	    // 모든 list-group-item에서 active 클래스 제거
	    listGroupItems.forEach(function (item) {
	      item.classList.remove('active');
	    });
	
	    // 현재 클릭된 요소에 active 클래스 추가
	    event.currentTarget.classList.add('active');
	  }
	
	  // 현재 페이지의 URL과 매칭되는 list-group-item을 찾아 active 클래스를 추가
	  listGroupItems.forEach(function (item) {
	    var itemUrl = item.getAttribute('href');
	    if (currentUrl.indexOf(itemUrl) !== -1) {
	      item.classList.add('active');
	    }
	
	    // 각 list-group-item에 클릭 이벤트 추가
	    item.addEventListener('click', handleClick);
	  });
	});
</script>


    
    

    
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <nav class="sticky-top p-0">
    <div class="container-fluid bg-dark text-light p-0">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-map-marker-alt text-primary me-2"></small>
                    <small>서울 강남구 테헤란로 124 4층</small>
                </div>
                <div class="h-100 d-inline-flex align-items-center">
                    <small class="far fa-clock text-primary me-2"></small>
                    <small>Mon - Fri : 09.00 AM - 07.00 PM</small>
                </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-phone-alt text-primary me-2"></small>
                    <small>+0507-1401-8061</small>
                </div>
                <div class="h-100 d-inline-flex mx-n2">
                    <a href="/member/loginForm">LOGIN</a>  
                </div>
                &nbsp; &nbsp;
                 <div class="h-100 d-inline-flex mx-n2">
                    <a href="/member/signupForm">SIGN-UP</a>  
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg bg-white navbar-light">
        
        <a href="/" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
            <h2 class="m-0"><i class=></i>그냥 데려가개</h2>
        </a>
        
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
               	<div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">보호소</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="/center/centerinfo" class="dropdown-item">보호소 소개</a>
                        <a href="/center/centerForm" class="dropdown-item">입양 신청</a>
                    </div>
                </div>
                <a href="/service/serviceList" class="nav-item nav-link">봉사활동</a>
                <a href="/education/educationList" class="nav-item nav-link">교육강의</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">반려이야기</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="/help/helpList" class="dropdown-item">목격/제보</a>
                        <a href="/adopt/adoptReview" class="dropdown-item">입양 후기</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                   <a href="/mypage/home" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">마이페이지</a>
                   <div class="dropdown-menu bg-light m-0">
                       <a href="/mypage/jjimList" class="dropdown-item">찜 목록</a>
                       <a href="/mypage/myList" class="dropdown-item">내 글목록</a>
                       <a href="/mypage/myClass" class="dropdown-item">내 강의실</a>
                       <a href="/mypage/myService" class="dropdown-item">봉사신청내역</a>
                       <a href="/mypage/myInfo" class="dropdown-item">회원정보</a>
                   </div>
        </div>
    </nav>
    </nav>
    <!-- Topbar End -->
    
	<nav>
	<hr>
		<h3>마이페이지</h3>
	<br>
	안녕하세요! itwill 님
	
	<br><br>
	</nav>


    <!-- Navbar Start -->
    <nav>
    <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" onclick="makeActive(this)" href="/mypage/jjimList">찜목록</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" onclick="makeActive(this)" href="/mypage/myList">내 글목록</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" onclick="makeActive(this)" href="/mypage/myClass">내 강의실</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" onclick="makeActive(this)" href="/mypage/myService">봉사신청내역</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" onclick="makeActive(this)" href="/mypage/myInfo">회원정보</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" onclick="makeActive(this)" href="#!">-회원정보 수정</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" onclick="makeActive(this)" href="#!">-회원탈퇴</a>
                </div>
            </div>

            
            
     
  