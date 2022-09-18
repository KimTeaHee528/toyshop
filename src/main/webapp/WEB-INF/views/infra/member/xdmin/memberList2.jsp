<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="M_Adnan">
<title>관리 페이지</title>

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="/resources/rs-plugin/css/settings.css"
	media="screen" />

<!-- Bootstrap Core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/resources/css/ionicons.min.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/responsive.css" rel="stylesheet">

<!-- JavaScripts -->
<script src="/resources/js/modernizr.js"></script>

<!-- Online Fonts -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>

</head>
<body>
	<!-- LOADER -->
	<div id="loader">
		<div class="position-center-center">
			<div class="ldr"></div>
		</div>
	</div>
	<!-- Wrap -->
	<div id="wrap">
		<!-- TOP Bar -->
		<div class="top-bar">
			<div class="container-adm">
				<!-- menu -->
				<div class="login-info" style="float: left;">
					<ul>
						<li><a href="#.">사이트 관리</a></li>	
						<li><a href="/member/memberList">회원 관리</a></li>
						<li><a href="/codeGroup/codeGroupList">코드 그룹 관리</a></li>
						<li><a href="/code/codeList">코드 관리</a></li>	
						<li><a href="#.">상품 관리</a></li>	
						<li><a href="#.">주문 관리</a></li>	
					</ul>
				</div>
				<!-- Login Info -->
				<div class="login-info">
					<ul>
						<li><a href="#.">HOME</a></li>
						<li><a href="#.">LOG OUT</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
		<!--=========내용=========-->
	<div style="display:block; width: 100%; text-align: center;">
		<div style="display: inline-block; text-align: center; width: 1500px;">
		<div style="display: block; float: top; float: left; font-size: 30px; margin-top: 30px;">회원 관리</div>
			<div class="tab-pane" style="margin-bottom: 50px; margin-top: 40px;">
				<div class="member-top">
					<div style="display: inline-block; margin-right: 25px; margin-bottom: 30px; float: left;">
						<label>관리자 유무
							<select>
								<option>N</option>
								<option>Y</option>
							</select>
						</label>
					</div>
					<div style="display: inline-block; margin-right: 25px; float: left;">
						<label>날짜선택
							<select>
								<option>가입일</option>
								<option>탈퇴일</option>
							</select>
						</label>
					</div>
					<div style="display: inline-block; margin-right: 25px; float: left;">
						<label>시작일&nbsp;&nbsp;
							<input type="date">
						</label>
					</div>
					<div style="display: inline-block; margin-right: 25px; float: left;">
						<label>종료일&nbsp;&nbsp;
							<input type="date">
						</label>
					</div>
					<div style="display: inline-block; margin-right: 25px; float: left;">
						<label>검색구분&nbsp;&nbsp;
							<select>
								<option>--</option>
								<option>번호</option>
								<option>이름</option>
								<option>ID</option>
								<option>성별</option>
								<option>나이</option>
								<option>주소</option>
								<option>전화번호</option>
								<option>E-mail</option>
							</select>
						</label>
					</div>
					<div style="display: block; float: right;">
						<label>검색어&nbsp;&nbsp;
							<input type="text">
						</label>
						<a><i class="icon-magnifier"></i></a>
					</div>
				</div>
				<div class="member-list-head">
					<div class="list-1">
						<input type="checkbox">
					</div>
					<div class="list-2">
						#
					</div>
					<div class="list-3">
						이름
					</div>
					<div class="list-4">
						ID
					</div>
					<div class="list-5">
						성별
					</div>
					<div class="list-6">
						나이
					</div>
					<div class="list-7">
						주소
					</div>
					<div class="list-8">
						전화번호
					</div>
					<div class="list-9">
						E-mail
					</div>
					<div class="list-10">
						관리자 여부
					</div>
					<div class="list-11">
						가입일
					</div>
					<div class="list-12">
						탈퇴일
					</div>
				</div>
				<a href="">
					<div class="member-list-body">
						<div class="list-1">
							<input type="checkbox">
						</div>
						<div class="list-2">
							55
						</div>
						<div class="list-3">
							김태희
						</div>
						<div class="list-4">
							spm528
						</div>
						<div class="list-5">
							M
						</div>
						<div class="list-6">
							32
						</div>
						<div class="list-7">
							서울 관악구 양녕로6나길 18
						</div>
						<div class="list-8">
							010-3015-7203
						</div>
						<div class="list-9">
							spmm528@gmail.com
						</div>
						<div class="list-10">
							Y
						</div>
						<div class="list-11">
							2022-08-30
						</div>
						<div class="list-12">
							--
						</div>
					</div>
				</a>
				<a href="">
					<div class="member-list-body">
						<div class="list-1">
							<input type="checkbox">
						</div>
						<div class="list-2">
							55
						</div>
						<div class="list-3">
							김태희
						</div>
						<div class="list-4">
							spm528
						</div>
						<div class="list-5">
							M
						</div>
						<div class="list-6">
							32
						</div>
						<div class="list-7">
							서울 관악구 양녕로6나길 18
						</div>
						<div class="list-8">
							010-3015-7203
						</div>
						<div class="list-9">
							spmm528@gmail.com
						</div>
						<div class="list-10">
							N
						</div>
						<div class="list-11">
							2022-08-30
						</div>
						<div class="list-12">
							--
						</div>
					</div>
				</a>
				<a href="">
					<div class="member-list-body">
						<div class="list-1">
							<input type="checkbox">
						</div>
						<div class="list-2">
							55
						</div>
						<div class="list-3">
							김태희
						</div>
						<div class="list-4">
							spm528
						</div>
						<div class="list-5">
							M
						</div>
						<div class="list-6">
							32
						</div>
						<div class="list-7">
							서울 관악구 양녕로6나길 18
						</div>
						<div class="list-8">
							010-3015-7203
						</div>
						<div class="list-9">
							spmm528@gmail.com
						</div>
						<div class="list-10">
							N
						</div>
						<div class="list-11">
							2022-08-30
						</div>
						<div class="list-12">
							--
						</div>
					</div>
				</a>
			</div>
<!--   리스트 넣는곳   -->
		</div>
	</div>
	<section class="news-letter padding-top-150 padding-bottom-150">
		<div class="container">
			<div class="heading light-head text-center margin-bottom-30">
				<h4>NEWSLETTER</h4>
				<span>Phasellus lacinia fermentum bibendum. Interdum et
					malesuada fames ac ante ipsumien lacus, eu posuere odi </span>
			</div>
			<form>
				<input type="email" placeholder="Enter your email address" required>
				<button type="submit">SEND ME</button>
			</form>
		</div>
	</section>

	<!--======= FOOTER =========-->
	<footer>
		<div class="container">
			<!-- ABOUT Location -->
			<div class="col-md-3">
				<div class="about-footer">
					<img class="margin-bottom-30" src="/resources/images/logo-foot.png" alt="">
					<p>
						<i class="icon-pointer"></i> Street No. 12, Newyork 12, <br>
						MD - 123, USA.
					</p>
					<p>
						<i class="icon-call-end"></i> 1.800.123.456789
					</p>
					<p>
						<i class="icon-envelope"></i> info@ecoshop.com
					</p>
				</div>
			</div>

			<!-- HELPFUL LINKS -->
			<div class="col-md-3">
				<h6>HELPFUL LINKS</h6>
				<ul class="link">
					<li><a href="#."> Products</a></li>
					<li><a href="#."> Find a Store</a></li>
					<li><a href="#."> Features</a></li>
					<li><a href="#."> Privacy Policy</a></li>
					<li><a href="#."> Blog</a></li>
					<li><a href="#."> Press Kit </a></li>
				</ul>
			</div>

			<!-- SHOP -->
			<div class="col-md-3">
				<h6>SHOP</h6>
				<ul class="link">
					<li><a href="#."> About Us</a></li>
					<li><a href="#."> Career</a></li>
					<li><a href="#."> Shipping Methods</a></li>
					<li><a href="#."> Contact</a></li>
					<li><a href="#."> Support</a></li>
					<li><a href="#."> Retailer</a></li>
				</ul>
			</div>

			<!-- MY ACCOUNT -->
			<div class="col-md-3">
				<h6>MY ACCOUNT</h6>
				<ul class="link">
					<li><a href="#."> Login</a></li>
					<li><a href="#."> My Account</a></li>
					<li><a href="#."> My Cart</a></li>
					<li><a href="#."> Wishlist</a></li>
					<li><a href="#."> Checkout</a></li>
				</ul>
			</div>
			<!-- Rights -->
			<div class="rights">
				<p>© 2016 ecoshop All right reserved.</p>
				<div class="scroll">
					<a href="#wrap" class="go-up"><i class="lnr lnr-arrow-up"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!--======= RIGHTS =========-->
	<script src="/resources/js/jquery-1.11.3.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/own-menu.js"></script>
	<script src="/resources/js/jquery.lighter.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>

	<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
	<script type="text/javascript" src="/resources/rs-plugin/js/jquery.tp.t.min.js"></script>
	<script type="text/javascript" src="/resources/rs-plugin/js/jquery.tp.min.js"></script>
	<script src="/resources/js/main.js"></script>
	<script src="/resources/js/main.js"></script>
</body>
</html>