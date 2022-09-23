<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
        <div class="logo"> <a href="home.html"><img class="img-responsive" src="/resources/images/logo.png" alt="" ></a> </div>
        <nav class="navbar ownmenu">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-open-btn" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"><i class="fa fa-navicon"></i></span> </button>
          </div>
          
           <!-- NAV -->
          <div class="collapse navbar-collapse" id="nav-open-btn">
            <ul class="nav">
              <li> <a href="/" style="margin-right: 20px;">Home</a> </li>
              <li> <a href="event.html" style="margin-right: 20px;">Event</a> </li>
              
              <!-- MEGA MENU -->
              <li class="dropdown megamenu" style="margin-right: 20px;"> <a href="#." class="dropdown-toggle" data-toggle="dropdown">store</a>
                <div class="dropdown-menu">
                  <div class="row"> 
                    
                    <!-- Shop Pages -->
                    <div class="col-md-3">
                      <h6>Shop Pages</h6>
                      <ul>
                        <li> <a href="shop.html">전체 </a> </li>
                        <li> <a href="shop.html">유아용 </a> </li>
                        <li> <a href="shop.html">남자아이 </a> </li>
                        <li> <a href="shop.html">여자아이 </a> </li>
                        <li> <a href="shop.html">청소년 </a> </li>
                        <li> <a href="shop.html">가족 </a> </li>
                        <li> <a href="shop.html">어덜트</a> </li>
                      </ul>
                    </div>
                    
                    <!-- TOp Rate Products -->
                    <div class="col-md-4">
                      <h6>Top Rate Products</h6>
                      <div class="top-rated">
                        <ul>
                          <li>
                            <div class="media-left">
                              <div class="cart-img"> <a href="product_detail.html"> <img class="media-object img-responsive" src="/resources/images/cart-1.png" alt="..."> </a> </div>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">rocket</h6>
                              <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                              <span class="price">30000 원</span> </div>
                          </li>
                          <li>
                            <div class="media-left">
                              <div class="cart-img"> <a href="product_detail.html"> <img class="media-object img-responsive" src="/resources/images/cart-2.png" alt="..."> </a> </div>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">SUSPENDERS DOLL</h6>
                              <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                              <span class="price">20000 원</span> </div>
                          </li>
                          <li>
                            <div class="media-left">
                              <div class="cart-img"> <a href="product_detail.html"> <img class="media-object img-responsive" src="/resources/images/cart-3.png" alt="..."> </a> </div>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">BIG BEAR</h6>
                              <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                              <span class="price">15000 원</span> </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                    
                    
                    <!-- New Arrival -->
                    <div class="col-md-5">
                      <h5>2022년 최신상품 <span>(Best Collection)</span></h5>
                      <img class="nav-img" src="/resources/images/top-drop.png" alt="" >
                      <p>신규회원을 위한<br>
                        2022년 최신상품 전 품목 <br>
                        할일행사징행중<br>
                        2022-05-01 ~ 0200-10-01</p>
                      <a href="#." class="btn btn-small btn-round">SHOP NOW</a> </div>
                  </div>
                </div>
              </li>
              <li> <a href="contact.html"> contact</a> </li>
            </ul>
          </div>
          
          <!-- Nav Right -->
          <div class="nav-right">
            <ul class="navbar-right">
              
              <!-- USER INFO -->
              <li class="dropdown user-acc"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" ><i class="icon-user">&nbsp;&nbsp;</i> </a>
                <ul class="dropdown-menu">
                  <li>
                    <h6>김태희 회원님 환영합니다.</h6>
                  </li>
                  <li><a href="/member/memberFormUser">회원정보</a></li>
                  <li><a href="/member/memberLogin">로그인</a></li>
                  <li><a href="/member/memberRegUser">회원가입</a></li>
                  <li><a href="#">로그아웃</a></li>
                </ul>
              </li>
              
              <!-- USER BASKET -->
              <li class="dropdown user-basket"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><i class="icon-basket-loaded">&nbsp;&nbsp;</i> </a>
                <ul class="dropdown-menu">
                  <li>
                    <div class="media-left">
                      <div class="cart-img"> <a href="#"> <img class="media-object img-responsive" src="/resources/images/cart-1.png" alt="..."> </a> </div>
                    </div>
                    <div class="media-body">
                      <h6 class="media-heading">rocket</h6>
                      <span class="price">30,000 원</span> <span class="qty">QTY: 01</span> </div>
                  </li>
                  <li>
                    <div class="media-left">
                      <div class="cart-img"> <a href="#"> <img class="media-object img-responsive" src="/resources/images/cart-3.png" alt="..."> </a> </div>
                    </div>
                    <div class="media-body">
                      <h6 class="media-heading">BIG BEAR</h6>
                      <span class="price">15,000 원</span> <span class="qty">QTY: 01</span> </div>
                  </li>
                  <li>
                    <h5 class="text-center">총금액: 45,000 원</h5>
                  </li>
                  <li class="margin-0">
                    <div class="row">
                      <div class="col-xs-6"> <a href="shopping-cart.html" class="btn">장바구니 확인</a></div>
                      <div class="col-xs-6 "> <a href="checkout.html" class="btn">결제하기</a></div>
                    </div>
                  </li>
                </ul>
              </li>
              
              <!-- SEARCH BAR -->
              <li class="dropdown"> <a href="javascript:void(0);" class="search-open"><i class=" icon-magnifier"></i></a>
                <div class="search-inside animated bounceInUp"> <i class="icon-close search-close"></i>
                  <div class="search-overlay"></div>
                  <div class="position-center-center">
                    <div class="search">
                      <form>
                        <input type="search" placeholder="Search Shop">
                        <button type="submit"><i class="icon-check"></i></button>
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
  <!--======= SUB BANNER =========-->
  <section class="sub-bnr" data-stellar-background-ratio="0.5">
    <div class="position-center-center">
      <div class="container">
        <h2>가정의달 할인행사</h2>
        <p>어린이용 장난감</p> <p>5월 한정 20%~70% 할인쿠폰 받으러가기</p>
        <a href="#." class="btn btn-small btn-round">go</a>
<!--         <i class="fa-regular fa-arrow-right"></i> -->
      </div>
    </div>
  </section>
  