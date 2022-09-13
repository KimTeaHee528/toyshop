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
<title>메인화면</title>

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="/resources/rs-plugin/css/settings.css" media="screen" />

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

		<!-- Nav Popup -->
		<div id="cd-nav" class="cd-nav">
			<div class="cd-navigation-wrapper">
				<div class="position-center-center">
					<div class="col-sm-5">

						<!-- Nav -->
						<nav>
							<ul class="cd-primary-nav">
								<li class="active"><a href="/">Home </a></li>
								<li><a href="event.html">Event </a></li>
								<li class="drop-menu"><a href="#." class="title collapsed" data-toggle="collapse" data-target="#down-1"> store </a>
									<div class="collapse" id="down-1">
										<div class="well">
											<ul>
												<li><a href="shop.html">전체</a></li>
												<li><a href="shop.html">유아용</a></li>
												<li><a href="shop.html">남자아이</a></li>
												<li><a href="shop.html">여자아이</a></li>
												<li><a href="shop.html">청소년</a></li>
												<li><a href="shop.html">가족</a></li>
												<li><a href="shop.html">키덜트</a></li>
												<li><a href="shopping-cart.html">장바구니</a></li>
											</ul>
										</div>
									</div></li>
								<li><a href="contact.html"> contact</a></li>
							</ul>
						</nav>

						<!-- Social Icons -->
						<ul class="social_icons">
							<li><a href="#."><i class="icon-social-facebook"></i></a></li>
							<li><a href="#."><i class="icon-social-twitter"></i></a></li>
							<li><a href="#."><i class="icon-social-tumblr"></i></a></li>
							<li><a href="#."><i class="icon-social-youtube"></i></a></li>
							<li><a href="#."><i class="icon-social-dribbble"></i></a></li>
						</ul>
					</div>

					<!-- Right Section -->
					<div class="col-sm-7"></div>
				</div>
			</div>
		</div>

		<!-- Header -->
		<header class="header-2">
			<div class="container-fluid">
				<div class="sticky">

					<!-- Nav Icon -->
					<a href="#cd-nav" class="cd-nav-trigger">
						<span class="cd-nav-icon"></span> 
						<!-- Svg Icon --> 
						<svg x="0px" y="0px" width="54px" height="54px" viewBox="0 0 54 54">
        					<circle fill="transparent" stroke="#2d3a4b" stroke-width="1"
								cx="27" cy="27" r="25" stroke-dasharray="157 157"
								stroke-dashoffset="157">
							</circle>
        				</svg> </a>

					<!-- Logo -->
					<div class="logo logo-center">
						<a href="#."><img class="img-responsive" src="/resources/images/logo.png" alt=""></a>
					</div>
					<!-- Navigation -->
					<nav class="navbar">
						<!-- Nav Right -->
						<div class="nav-right">
							<ul class="navbar-right">

								<!-- USER INFO -->
								<li class="dropdown user-acc">
									<a href="/login" class="dropdown-toggle" data-toggle="dropdown" role="button">
										<i class="icon-user">&nbsp;&nbsp;</i> 
									</a>
									<ul class="dropdown-menu">
										<li>
											<h6>김태희 회원님 환영합니다.</h6>
										</li>
										<li><a href="/login">로그인</a></li>
										<li><a href="#">회원가입</a></li>
									</ul></li>

								<!-- USER BASKET -->
								<li class="dropdown user-basket">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><i class="icon-basket-loaded">&nbsp;&nbsp;</i> 
									</a>
									<ul class="dropdown-menu">
										<li>
											<div class="media-left">
												<div class="cart-img">
													<a href="#"> <img class="media-object img-responsive"
														src="/resources/images/cart-1.png" alt="...">
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
														src="/resources/images/cart-3.png" alt="...">
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
									</ul>
								</li>

								<!-- SEARCH BAR -->
								<li class="dropdown"><a href="javascript:void(0);"
									class="search-open"><i class=" icon-magnifier"></i></a>
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
									</div>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</header>

		<!-- MAIN  CONTENT -->
		<main>

			<!-- HOME MAIN  -->
			<section class="home-slider simple-head"
				data-stellar-background-ratio="0.5">

				<!-- Container Fluid -->
				<div class="container-fluid">
					<div class="position-center-center">

						<!-- Header Text -->
						<div class="col-lg-7 col-lg-offset-5">
							<span class="price"><small>$</small>32.9</span>
							<h4>The Latest Product from BNT</h4>
							<h1 class="extra-huge-text">look hot baby toys</h1>
							<div class="text-center">
								<a href="#." class="btn btn-round margin-top-40">SHOP NOW</a>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Content -->
			<div id="content">

				<!-- Popular Products -->
				<section class="padding-top-150 padding-bottom-150">
					<div class="container">

						<!-- Main Heading -->
						<div class="heading text-center">
							<h4>Kategorie</h4>
						</div>

						<!-- NEW ARRIVAL -->
						<div class="new-arrival-list">
							<ul class="row">

								<!-- SHOP_ITEMS -->
								<li class="col-md-6">
									<!-- SHOP ITEM 1 -->
									<article>
										<img class="img-responsive" src="/resources/images/product1.png" alt="">
										<div class="position-center-center">
											<h4>
												<a href="#.">boy</a>
											</h4>
											<a href="#." class="btn btn-small btn-round">MORE</a>
										</div>
									</article> <!-- SHOP ITEM 3 -->
									<article>
										<img class="img-responsive" src="/resources/images/product3.png" alt="">
										<div class="position-center-center">
											<h4>
												<a href="#.">girl</a>
											</h4>
											<a href="#." class="btn btn-small btn-round">MORE</a>
										</div>
									</article>
								</li>
								<li class="col-md-6">
									<!-- SHOP_ITEM 2 -->
									<article>
										<img class="img-responsive" src="/resources/images/product2.png" alt="">
										<div class="position-center-center">
											<h4>
												<a href="#.">Cat/dog</a>
											</h4>
											<a href="#." class="btn btn-small btn-round">MORE</a>
										</div>
									</article> <!-- SHOP_ITEM 4 -->
									<article>
										<img class="img-responsive" src="/resources/images/product4.png" alt="">
										<div class="position-center-center">
											<h4>
												<a href="#.">trip</a>
											</h4>
											<a href="#." class="btn btn-small btn-round">MORE</a>
										</div>
									</article>
								</li>
							</ul>

							<!-- SHOW MORE -->
							<div class="text-center margin-top-50">
								<a href="#." class="btn btn-small btn-round"> SHOW MORE...</a>
							</div>
						</div>
					</div>
				</section>

				<!-- Popular Products -->
				<section class="padding-bottom-150">
					<div class="container">

						<!-- Main Heading -->
						<div class="heading text-center">
							<h4>popular products</h4>
							<span></span>
						</div>

						<!-- Popular Item Slide -->
						<div class="papular-block block-slide">

							<!-- Item -->
							<div class="item">
								<!-- Item img -->
								<div class="item-img">
									<img class="img-1" src="/resources/images/carousel1.png" alt=""> <img
										class="img-2" src="/resources/images/carousel1.png" alt="">
									<!-- Overlay -->
									<div class="overlay">
										<div class="position-center-center">
											<a href="#." class="btn btn-small btn-round">DTAIL</a>
										</div>
									</div>
								</div>
								<!-- Item Name -->
								<div class="item-name">
									<a href="#.">White Bear</a>
								</div>
								<!-- Price -->
							</div>

							<!-- Item -->
							<div class="item">
								<!-- Item img -->
								<div class="item-img">
									<img class="img-1" src="/resources/images/carousel2.png" alt=""> <img
										class="img-2" src="/resources/images/carousel2.png" alt="">
									<!-- Overlay -->
									<div class="overlay">
										<div class="position-center-center">
											<a href="#." class="btn btn-small btn-round">DTAIL</a>
										</div>
									</div>
								</div>
								<!-- Item Name -->
								<div class="item-name">
									<a href="#.">Flying Disk</a>
								</div>
								<!-- Price -->
							</div>

							<!-- Item -->
							<div class="item">
								<!-- Item img -->
								<div class="item-img">
									<img class="img-1" src="/resources/images/carousel3.png" alt=""> <img
										class="img-2" src="/resources/images/carousel3.png" alt="">
									<!-- Overlay -->
									<div class="overlay">
										<div class="position-center-center">
											<a href="#." class="btn btn-small btn-round">DTAIL</a>
										</div>
									</div>
								</div>
								<!-- Item Name -->
								<div class="item-name">
									<a href="#.">Dron</a>
								</div>
								<!-- Price -->
							</div>

							<!-- Item -->
							<div class="item">
								<!-- Item img -->
								<div class="item-img">
									<img class="img-1" src="/resources/images/carousel4.png" alt=""> <img
										class="img-2" src="/resources/images/carousel4.png" alt="">
									<!-- Overlay -->
									<div class="overlay">
										<div class="position-center-center">
											<a href="#." class="btn btn-small btn-round">DTAIL</a>
										</div>
									</div>
								</div>
								<!-- Item Name -->
								<div class="item-name">
									<a href="#.">red robot</a>
								</div>
								<!-- Price -->
							</div>
						</div>
					</div>
				</section>

				<!-- SPECIALS OFFERS -->
				<section class="special-offers">
					<div class="container">
						<div class="col-md-8 center-block">
							<h4>special</h4>
							<h1 class="extra-huge-text">summer sale</h1>
							<a href="#." class="btn btn-round margin-top-50"> SHOP NOW</a>
						</div>
					</div>
				</section>

				<!-- About -->
				<section class="small-about padding-top-150 padding-bottom-150">
					<div class="container">

						<!-- Main Heading -->
						<div class="heading text-center">
							<h4>about ecoshop</h4>
							<p>Phasellus lacinia fermentum bibendum. Interdum et
								malesuada fames ac ante ipsumien lacus, eu posuere odio luctus
								non. Nulla lacinia, eros vel fermentum consectetur, risus purus
								tempc, et iaculis odio dolor in ex.</p>
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
				<!--       
      News Letter
      <section class="news-letter style-2 padding-top-150 padding-bottom-150">
        <div class="container">
          <div class="heading light-head text-center margin-bottom-30">
            <h4>NEWSLETTER</h4>
            <span>Phasellus lacinia fermentum bibendum. Interdum et malesuada fames ac ante ipsumien lacus, eu posuere odi </span> </div>
          <form>
            <input type="email" placeholder="Enter your email address" required>
            <button type="submit">SEND ME</button>
          </form>
        </div>
      </section>
    </div>
     -->
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
		</main>
	</div>
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
	

	
	
</body>
</html>