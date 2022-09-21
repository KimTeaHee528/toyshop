<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="M_Adnan">
<title>회원정보</title>

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
	<!-- top s -->
	<%@include file="../../common/xdmin/includeV1/top.jsp"%>
	<!-- top e -->
		<!--=========내용=========-->

  <!-- Content -->
  <div id="content"> 
    
    <!--======= PAGES INNER =========-->
    <section class="chart-page padding-top-100 padding-bottom-100">
      <div class="container"> 
        
        <!-- Payments Steps -->
        <div class="shopping-cart"> 
          
          <!-- SHOPPING INFORMATION -->
          <div class="cart-ship-info register">
            <div class="row"> 
              
              <!-- ESTIMATE SHIPPING & TAX -->
              <div class="col-sm-12">
                <h6 style="padding-left: 50px;">회원정보</h6>
                <form>
                  <ul class="row">
                    <!-- Name -->
                    <div class="col-md-9" style="padding-left: 100px;">
	                    <div class="col-md-4">
	                      <label> *ID
	                        <input type="text" name="first-name" value="spm528" placeholder="">
	                      </label>
	                    </div>
	                    <!-- LAST NAME -->
	                    <div class="col-md-4">
	                      <label> *이름
	                        <input type="text" name="last-name" value="김태희" placeholder="">
	                      </label>
	                    </div>
	                    <!-- GENDER -->
	                    <div class="col-md-4">
	                      <label> *성별
	                        <select class="selectpicker" name="contry-state">
	                          <option>MALE</option>
	                          <option>FEMALE</option>
	                          <option>OTHER</option>
	                        </select>
	                      </label>
	                    </div>
	                <div class="col-md-4" style="margin-right: 0px;">
                      <label> *이메일
                        <input type="text" name="contry-state" value="spm528" placeholder="">
                      </label>                
                    </div>
                    <div class="col-md-4" id="email-box" name="selboxDirect" style="margin-right: 0px;">
                      <label> &nbsp;
                        <input type="text" name="contry-state" value="" placeholder="@example.com">
                      </label>
                    </div>
                  <div class="col-md-4" style="margin-right: 0px;">
                      <label> &nbsp;
                        <select class="selectpicker" id="email-sel" name="e-mail-add">
                          <option value="gmail.com">@gmail.com</option>
                          <option value="naver.com">@naver.com</option>
                          <option value="hanmail.com">@hanmail.com</option>
                          <option value="type">@직접입력</option>
                        </select>
                      </label>                
                    </div>
	                 <!-- PHONE -->
                    <div class="col-md-6" style="margin-top: 0px;">
                      <label> *전화번호
                        <input type="text" name="postal-code" value="010-3015-7203" placeholder="">
                      </label>
                    </div>
                   <!-- DOB -->
                    <div class="col-md-6">
                      <label> *생년월일
                      	<input type="date" value="1991-05-28">
                      </label>
                    </div>   

                    <div class="col-md-12"> 
                      <!-- ADDRESS -->
                      <label>*ZIP 코드
                        <input type="text" name="address" value="08746" placeholder="">
                      </label>
                    </div>
                    <div class="col-md-12"> 
                      <!-- ADDRESS -->
                      <label>*주소
                        <input type="text" name="address" value="서울특별시 관악구 양녕로6나길 18" placeholder="">
                      </label>
                    </div>
                           
                    <!-- TOWN/CITY -->
                    <div class="col-md-12">
                      <label>*상세주소
                        <input type="text" name="town" value="신봉아파트 102동 407호" placeholder="">
                      </label>
                    </div>
                   <div class="col-md-6" style="margin-top: 0px;">
                     <label><span class="pwl" id="pwid">*비밀번호</span> 
                       <input type="password" class="pw" id="pw" name="" value="" placeholder="">
                     </label>
                   </div>
                   <div class="col-md-6" style="margin-top: 0px;">
                     <label><span class="pwl" id="pwchid">*비밀번호 확인</span> 
                       <input type="password" class="pw" id="pw_re" name="" value="" placeholder="">
                     </label>
                   </div>
                    <li class="col-md-12 text-center">
                      <button type="submit" class="btn" style="margin-bottom: 10px;">회원정보 수정</button>
                    </li>
                  </div>
                  <div class="col-md-3" style="text-align: center;">
					<img alt="" src="/resources/images/man.png" style="border: 4px solid yellow;"><br>
					<button type="submit" class="btn" style="margin-top: 10px;">사진변경</button>
                  </div>
                  </ul>
                </form>
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
          <p>Phasellus lacinia fermentum bibendum. Interdum et malesuada fames ac ante ipsumien lacus, eu posuere odio luctus non. Nulla lacinia,
            eros vel fermentum consectetur, risus purus tempc, et iaculis odio dolor in ex. </p>
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