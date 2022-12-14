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
						<li><a href="#."> MY ACCOUNT</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--======= PAGES INNER =========-->
	<section class="chart-page padding-top-100 padding-bottom-100" style="padding-top: 50px;">
		<div class="container">
			<!-- Payments Steps -->
			<div class="shopping-cart">

				<!-- SHOPPING INFORMATION -->
				<div class="cart-ship-info register">
					<div class="row">

						<!-- ESTIMATE SHIPPING & TAX -->
						<div class="col-sm-12">
							<h6>코드 등록</h6> 
							<form id="ins" method="post" action="/code/codeRegInst">
								<ul class="row">
									<li class="col-md-6">
										<label>
											코드그룹
											<select class="selectpicker" name="cr_ccg_seq">
												<c:forEach items="${list}" var="list" varStatus="status">
													<option value="<c:out value="${list.seq }"/>"><c:out value="${list.code_group_name }"/></option>
												</c:forEach>
											</select>
										</label>
									</li>
									<li class="col-md-6">
										<label>
											코드이름(한글)
											<input type="text" name="cr_code_name_ko" value="" placeholder="한글, 숫자">
										</label>
									</li>
									<li class="col-md-6">
										<label>
											코드이름(영문)
											<input type="text" name="cr_code_name_en" value="" placeholder="영문(대소문자), 숫자">
										</label>
									</li>
									<li class="col-md-6" style="margin-right: 0px;">
										<label>
											사용여부
											<select class="selectpicker" name="cr_use_ny">
												<option value="0">N</option>
												<option value="1">Y</option>
											</select>
										</label>
									</li>
									<li class="col-md-6" style="margin-top: 0px;">
										<label>
											설명
											<textarea style="width: 555px; height: 42px; margin-top: 10px; resize: vertical;"></textarea>
										</label>
									</li>
									<li class="col-md-12 text-center">
										<button type="submit" class="btn">등록 완료</button>
										<button type="submit" class="btn">뒤로가기</button>
									</li>
								</ul>
							</form>
						</div>
					</div>
				</div>
			</div>
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