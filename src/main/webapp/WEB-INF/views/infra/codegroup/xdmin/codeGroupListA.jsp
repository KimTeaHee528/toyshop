<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css"
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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

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
			<div class="container">

				<!-- Login Info -->
				<div class="login-info">
					<ul>
						<li><a href="#.">HOME</a></li>
						<li><a href="#.">LOG OUT</a></li>
						<li><a href="#."> MY ACCOUNT</a></li>	
					</ul>
				</div>
			</div>
		</div>
	</div>
		<!--=========내용=========-->
	<div class="ccg">
		<div class="ccg-top">
			<div style="display: inline-block; margin-right: 25px; margin-bottom: 30px;">
				<label>사용유무&nbsp;&nbsp;
					<select>
						<option>N</option>
						<option>Y</option>
					</select>
				</label>
			</div>
			<div style="display: inline-block; margin-right: 25px;">
				<label>수정일&nbsp;&nbsp;
					<input type="date">
				</label>
			</div>
			<div style="display: inline-block; margin-right: 25px;">
				<label>시작일&nbsp;&nbsp;
					<input type="date">
				</label>
			</div>
			<div style="display: inline-block; margin-right: 25px;">
				<label>종료일&nbsp;&nbsp;
					<input type="date">
				</label>
			</div>
			<div style="display: inline-block; margin-right: 25px;">
				<label>검색구분&nbsp;&nbsp;
					<select>
						<option>N</option>
						<option>Y</option>
					</select>
				</label>
			</div>
			<div style="display: block; margin-right: 25px; float: right;">
				<label>검색어&nbsp;&nbsp;
					<input type="text">
				</label>
				<a><i class="icon-magnifier"></i></a>
			</div>
		</div>
		<div class="adm-list-head" style="padding-top: 10px; height: 30px; padding-top: 10px; margin-bottom: 20px;">
			<div class="list-1">
				<input type="checkbox">
			</div>
			<div class="list-2">
				#
			</div>
			<div class="list-3">
				코드그룹 코드
			</div>
			<div class="list-4">
				코드그룹 이름(한글)
			</div>
			<div class="list-5">
				코드그룹 이름(영문)
			</div>
			<div class="list-6">
				코드 갯수
			</div>
			<div class="list-7">
				등록일
			</div>
			<div class="list-8">
				수정일<br>
			</div>
		</div>
		<div class="adm-list-body">
			<div class="list-1">
				<input type="checkbox">
			</div>
			<div class="list-2">
				55
			</div>
			<div class="list-3">
				1
			</div>
			<div class="list-4">
				통신사
			</div>
			<div class="list-5">
				carrier
			</div>
			<div class="list-6">
				4
			</div>
			<div class="list-7">
				2022-08-30
			</div>
			<div class="list-8">
				2022-08-30
			</div>
		</div>
		<div class="adm-list-body">
			<div class="list-1">
				<input type="checkbox">
			</div>
			<div class="list-2">
				55
			</div>
			<div class="list-3">
				1
			</div>
			<div class="list-4">
				통신사
			</div>
			<div class="list-5">
				carrier
			</div>
			<div class="list-6">
				4
			</div>
			<div class="list-7">
				2022-08-30
			</div>
			<div class="list-8">
				2022-08-30
			</div>
		</div>
		<div class="adm-list-body">
			<div class="list-1">
				<input type="checkbox">
			</div>
			<div class="list-2">
				55
			</div>
			<div class="list-3">
				1
			</div>
			<div class="list-4">
				통신사
			</div>
			<div class="list-5">
				carrier
			</div>
			<div class="list-6">
				4
			</div>
			<div class="list-7">
				2022-08-30
			</div>
			<div class="list-8">
				2022-08-30
			</div>
		</div>
	</div>		
					
					
<!--   리스트 넣는곳   -->
					



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
					<img class="margin-bottom-30" src="images/logo-foot.png" alt="">
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