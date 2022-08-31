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
<title>장바구니</title>

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
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900'
	rel='stylesheet' type='text/css'>

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

		<!-- header -->
		<header>
			<div class="sticky">
				<div class="container">

					<!-- Logo -->
					<div class="logo">
						<a href="index.html"><img class="img-responsive"
							src="/resources/images/logo.png" alt=""></a>
					</div>
					<nav class="navbar ownmenu">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target="#nav-open-btn"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"><i class="fa fa-navicon"></i></span>
							</button>
						</div>

						<!-- NAV -->
						<div class="collapse navbar-collapse" id="nav-open-btn">
							<ul class="nav">
								<li><a href="home.html" style="margin-right: 20px;">Home</a>
								</li>
								<li><a href="event.html" style="margin-right: 20px;">Event</a>
								</li>

								<!-- MEGA MENU -->
								<li class="dropdown megamenu" style="margin-right: 20px;">
									<a href="#." class="dropdown-toggle" data-toggle="dropdown">store</a>
									<div class="dropdown-menu">
										<div class="row">

											<!-- Shop Pages -->
											<div class="col-md-3">
												<h6>Shop Pages</h6>
												<ul>
													<li><a href="shop.html">전체 </a></li>
													<li><a href="shop.html">유아용 </a></li>
													<li><a href="shop.html">남자아이 </a></li>
													<li><a href="shop.html">여자아이 </a></li>
													<li><a href="shop.html">청소년 </a></li>
													<li><a href="shop.html">가족 </a></li>
													<li><a href="shop.html">키덜트</a></li>
												</ul>
											</div>

											<!-- TOp Rate Products -->
											<div class="col-md-4">
												<h6>Top Rate Products</h6>
												<div class="top-rated">
													<ul>
														<li>
															<div class="media-left">
																<div class="cart-img">
																	<a href="product_detail.html"> <img
																		class="media-object img-responsive"
																		src="images/cart-1.png" alt="...">
																	</a>
																</div>
															</div>
															<div class="media-body">
																<h6 class="media-heading">rocket</h6>
																<div class="stars">
																	<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																		class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																		class="fa fa-star"></i>
																</div>
																<span class="price">30000 원</span>
															</div>
														</li>
														<li>
															<div class="media-left">
																<div class="cart-img">
																	<a href="product_detail.html"> <img
																		class="media-object img-responsive"
																		src="images/cart-2.png" alt="...">
																	</a>
																</div>
															</div>
															<div class="media-body">
																<h6 class="media-heading">SUSPENDERS DOLL</h6>
																<div class="stars">
																	<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																		class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																		class="fa fa-star"></i>
																</div>
																<span class="price">20000 원</span>
															</div>
														</li>
														<li>
															<div class="media-left">
																<div class="cart-img">
																	<a href="product_detail.html"> <img
																		class="media-object img-responsive"
																		src="images/cart-3.png" alt="...">
																	</a>
																</div>
															</div>
															<div class="media-body">
																<h6 class="media-heading">BIG BEAR</h6>
																<div class="stars">
																	<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																		class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																		class="fa fa-star"></i>
																</div>
																<span class="price">15000 원</span>
															</div>
														</li>
													</ul>
												</div>
											</div>


											<!-- New Arrival -->
											<div class="col-md-5">
												<h5>
													2022년 최신상품 <span>(Best Collection)</span>
												</h5>
												<img class="nav-img" src="images/top-drop.png" alt="">
												<p>
													신규회원을 위한<br> 2022년 최신상품 전 품목 <br> 할일행사징행중<br>
													2022-05-01 ~ 0200-10-01
												</p>
												<a href="#." class="btn btn-small btn-round">SHOP NOW</a>
											</div>
										</div>
									</div>
								</li>
								<li><a href="contact.html"> contact</a></li>
							</ul>
						</div>

						<!-- Nav Right -->
						<div class="nav-right">
							<ul class="navbar-right">

								<!-- USER INFO -->
								<li class="dropdown user-acc"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown" role="button"><i
										class="icon-user">&nbsp;&nbsp;</i> </a>
									<ul class="dropdown-menu">
										<li>
											<h6>김태희 회원님 환영합니다.</h6>
										</li>
										<li><a href="member_info.html">회원정보</a></li>
										<li><a href="#">로그아웃</a></li>
									</ul></li>

								<!-- USER BASKET -->
								<li class="dropdown user-basket"><a href="#"
									class="dropdown-toggle" data-toggle="dropdown" role="button"
									aria-haspopup="true" aria-expanded="true"><i
										class="icon-basket-loaded">&nbsp;&nbsp;</i> </a>
									<ul class="dropdown-menu">
										<li>
											<div class="media-left">
												<div class="cart-img">
													<a href="#"> <img class="media-object img-responsive"
														src="images/cart-1.png" alt="...">
													</a>
												</div>
											</div>
											<div class="media-body">
												<h6 class="media-heading">rocket</h6>
												<span class="price">30,000 원</span> <span class="qty">QTY:
													01</span>
											</div>
										</li>
										<li>
											<div class="media-left">
												<div class="cart-img">
													<a href="#"> <img class="media-object img-responsive"
														src="images/cart-3.png" alt="...">
													</a>
												</div>
											</div>
											<div class="media-body">
												<h6 class="media-heading">BIG BEAR</h6>
												<span class="price">15,000 원</span> <span class="qty">QTY:
													01</span>
											</div>
										</li>
										<li>
											<h5 class="text-center">총금액: 45,000 원</h5>
										</li>
										<li class="margin-0">
											<div class="row">
												<div class="col-xs-6">
													<a href="cart.html" class="btn">장바구니 확인</a>
												</div>
												<div class="col-xs-6 ">
													<a href="checkout.html" class="btn">결제하기</a>
												</div>
											</div>
										</li>
									</ul></li>

								<!-- SEARCH BAR -->
								<li class="dropdown"><a href="javascript:void(0);" class="search-open"><i class=" icon-magnifier"></i></a>
									<div class="search-inside animated bounceInUp">
										<i class="icon-close search-close"></i>
										<div class="search-overlay"></div>
										<div class="position-center-center">
											<div class="search">
												<form>
													<input type="search" placeholder="Search Shop">
													<button type="submit">
														<i class="icon-check"></i>
													</button>
												</form>
											</div>
										</div>
									</div></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</header>

		<!--======= SUB BANNER =========-->
		<section class="sub-bnr" data-stellar-background-ratio="0.5">
			<div class="position-center-center">
				<div class="container">
					<h2>가정의달 할인행사</h2>
					<p>어린이용 장난감</p>
					<p>5월 한정 20%~70% 할인쿠폰 받으러가기</p>
					<a href="#." class="btn btn-small btn-round">go</a>
					<!--         <i class="fa-regular fa-arrow-right"></i> -->
				</div>
			</div>
		</section>

		<!-- Content -->
		<div id="content">

			<!--======= PAGES INNER =========-->
			<section
				class="padding-top-100 padding-bottom-100 pages-in chart-page">
				<div class="container">

					<!-- Payments Steps -->
					<div class="shopping-cart text-center">
						<div class="cart-head">
							<ul class="row">
								<!-- PRODUCTS -->
								<li class="col-sm-2 text-left">
									<h6>PRODUCTS</h6>
								</li>
								<!-- NAME -->
								<li class="col-sm-4 text-left">
									<h6>NAME</h6>
								</li>
								<!-- PRICE -->
								<li class="col-sm-2">
									<h6>PRICE</h6>
								</li>
								<!-- QTY -->
								<li class="col-sm-1">
									<h6>QTY</h6>
								</li>

								<!-- TOTAL PRICE -->
								<li class="col-sm-2">
									<h6>TOTAL</h6>
								</li>
								<li class="col-sm-1"></li>
							</ul>
						</div>

						<!-- Cart Details -->
						<ul class="row cart-details">
							<li class="col-sm-6">
								<div class="media">
									<!-- Media Image -->
									<div class="media-left media-middle">
										<a href="#." class="item-img"> <img class="media-object"
											src="/resources/images/cart-1.png" alt="">
										</a>
									</div>

									<!-- Item Name -->
									<div class="media-body">
										<div class="position-center-center">
											<h5>rocket</h5>
											<br>
											<p>옵션1:베터리팩 +1set, 옵션2:검정색</p>
										</div>
									</div>
								</div>
							</li>

							<!-- PRICE -->
							<li class="col-sm-2">
								<div class="position-center-center">
									<span class="price">30000 <small>원</small></span>
								</div>
							</li>

							<!-- QTY -->
							<li class="col-sm-1">
								<div class="position-center-center">
									<div class="quinty">
										<!-- QTY -->
										<select class="selectpicker">
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select>
									</div>
								</div>
							</li>

							<!-- TOTAL PRICE -->
							<li class="col-sm-2">
								<div class="position-center-center">
									<span class="price">30000 <small>원</small></span>
								</div>
							</li>

							<!-- REMOVE -->
							<li class="col-sm-1">
								<div class="position-center-center">
									<a href="#."><i class="icon-close"></i></a>
								</div>
							</li>
						</ul>

						<!-- Cart Details -->
						<ul class="row cart-details">
							<li class="col-sm-6">
								<div class="media">
									<!-- Media Image -->
									<div class="media-left media-middle">
										<a href="#." class="item-img"> <img class="media-object"
											src="/resources/images/cart-3.png" alt="">
										</a>
									</div>

									<!-- Item Name -->
									<div class="media-body">
										<div class="position-center-center">
											<h5>BIG BEAR</h5>
											<br>
											<p>옵션 없음</p>
										</div>
									</div>
								</div>
							</li>

							<!-- PRICE -->
							<li class="col-sm-2">
								<div class="position-center-center">
									<span class="price">15000 <small>원</small></span>
								</div>
							</li>

							<!-- QTY -->
							<li class="col-sm-1">
								<div class="position-center-center">
									<div class="quinty">
										<!-- QTY -->
										<select class="selectpicker">
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</select>
									</div>
								</div>
							</li>

							<!-- TOTAL PRICE -->
							<li class="col-sm-2">
								<div class="position-center-center">
									<span class="price">15000 <small>원</small></span>
								</div>
							</li>

							<!-- REMOVE -->
							<li class="col-sm-1">
								<div class="position-center-center">
									<a href="#."><i class="icon-close"></i></a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</section>

			<!--======= PAGES INNER =========-->
			<section
				class="padding-top-100 padding-bottom-100 light-gray-bg shopping-cart small-cart">
				<div class="container">

					<!-- SHOPPING INFORMATION -->
					<div class="cart-ship-info margin-top-0">
						<div class="row">

							<!-- DISCOUNT CODE -->
							<div class="col-sm-7">
								<h6>쿠폰 코드</h6>
								<button id="cupon_add" class="btn btn-small btn-dark">추가</button>
								<button id="cupon_com" class="btn btn-small btn-dark">쿠폰적용</button>
								<form id="cupon_reg">
									<div>
										<input type="text" id="cupon_num" value="" placeholder="쿠폰입력">
										<button id="cupon_del" class="btn btn-small btn-dark">삭제
											-</button>
									</div>
								</form>
								<div class="coupn-btn">
									<a href="shop.html" class="btn">계속 쇼핑하기</a> <a
										href="checkout.html" class="btn">결제하기</a>
								</div>
							</div>

							<!-- SUB TOTAL -->
							<div class="col-sm-5">
								<h6>총 결제 금액</h6>
								<div class="grand-total">
									<div class="order-detail">
										<p>
											rocket <span>30,000 (+0) 원 </span>
										</p>
										<p>
											BIG BEAR <span>15,000 원 </span>
										</p>
										<p>
											할인 <span>5,000 원 </span>
										</p>

										<!-- SUB TOTAL -->
										<p class="all-total">
											결제금액 <span>45,000 원 </span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- About -->
			<section class="small-about padding-top-150 padding-bottom-150">
				<div class="container">

					<!-- Main Heading -->
					<div class="heading text-center">
						<h4>about ecoshop</h4>
						<p>Phasellus lacinia fermentum bibendum. Interdum et malesuada
							fames ac ante ipsumien lacus, eu posuere odio luctus non. Nulla
							lacinia, eros vel fermentum consectetur, risus purus tempc, et
							iaculis odio dolor in ex.</p>
					</div>

					<!-- Social Icons -->
					<ul class="social_icons">
						<li><a href="#."><i class="icon-social-facebook"></i></a></li>
						<li><a href="#."><i class="icon-social-twitter"></i></a></li>
						<li><a href="#."><i class="icon-social-tumblr"></i></a></li>
						<li><a href="#."><i class="icon-social-youtube"></i></a></li>
						<li><a href="#."><i class="icon-social-dribbble"></i></a></li>
					</ul>
				</div>
			</section>

			<!-- News Letter -->
			<section class="news-letter padding-top-150 padding-bottom-150">
				<div class="container">
					<div class="heading light-head text-center margin-bottom-30">
						<h4>NEWSLETTER</h4>
						<span>Phasellus lacinia fermentum bibendum. Interdum et
							malesuada fames ac ante ipsumien lacus, eu posuere odi </span>
					</div>
					<form>
						<input type="email" placeholder="Enter your email address"
							required>
						<button type="submit">SEND ME</button>
					</form>
				</div>
			</section>
		</div>

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

	</div>
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