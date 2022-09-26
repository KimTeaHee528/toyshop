<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!-- jstl s -->
<%@include file="../../common/comm/includeV1/jstl.jsp"%>
<!-- jstl e -->
<!DOCTYPE html>
<html lang="ko">
<!-- head s -->
<%@include file="../../common/xdmin/includeV1/head.jsp"%>
<!-- head e -->
<body>
	<!-- top s -->
	<%@include file="../../common/user/includeV1/top.jsp"%>
	<!-- top e -->
<!-- Content -->
  <div id="content"> 
    
    <!-- Popular Products -->
    <section class="padding-top-100 padding-bottom-100">
      <div class="container"> 
        
        <!-- SHOP DETAIL -->
        <div class="shop-detail">
          <div class="row"> 
            
            <!-- Popular Images Slider -->
            <div class="col-md-7"> 
              
              <!-- Images Slider -->
              <div class="images-slider">
                <ul class="slides">
                  <li data-thumb="/resources/images/product-detail-01.png"> <img class="img-responsive" src="/resources/images/product-detail-01.png"  alt=""> </li>
                  <li data-thumb="/resources/images/product-detail-02.png"> <img class="img-responsive" src="/resources/images/product-detail-02.png"  alt=""> </li>
                  <li data-thumb="/resources/images/product-detail-03.png"> <img class="img-responsive" src="/resources/images/product-detail-03.png"  alt=""> </li>
                </ul>
              </div>
            </div>
            
            <!-- COntent -->
            <div class="col-md-5">
              <h4>DRON</h4>
              <span class="price">250,000<small>원</small></span> 
              
              <!-- Sale Tags -->
              <div class="on-sale"> 10% <span>OFF</span> </div>
              <ul class="item-owner">
                <li>Stock :<span style="color: black;"> 83</span></li>
                <li>Brand:<span style="color: black;"> 손오공</span></li>
              </ul>
              
              <!-- Item Detail -->
              <p class="kor-sm">
              	- 브랜드 정보(소개글) 넣을자리
              </p>
              <p class="kor-sm">
              	- 브랜드 주소
              </p>
              <p class="kor-sm">
              	- 브랜드 홈페이지
              </p>
              
              <!-- 상품 옵션들 -->
              <div class="some-info">
                <ul class="row margin-top-30">
                      <!-- 수량 -->
                  <li class="col-xs-2" style="margin-top: 5px; margin-right: 0px; margin-bottom: 0px;">수량
                  </li>
                  <li class="col-xs-6" style="padding-left: 0px; margin-bottom: 0px;">
                    <div class="quinty"> 
                      <input class="qty" type="number" min="1" step="1" value="1" id="qty" style="padding-left:10px; font-size:14px; font-weight:bold; width: 88px; height: 28px; border: 1px solid black">
                    </div>
                  </li>
                  <li class="col-xs-4">&nbsp;
                  </li>
                      <!-- 옵션1 -->
                  <li class="col-xs-2" style="margin-top: 5px; margin-right: 0px; margin-bottom: 0px;">옵션1
                  </li>
                  <li class="col-xs-6" style="padding-left: 0px; margin-bottom: 0px;">
                    <div class="productOption"> 
                      <select class="selectpicker">
                        <option>기본 옵션 (+0원)</option>
                        <option>베터리팩 +1set (+12,000원)</option>
                        <option>프로펠러 +1set (+34,000원)</option>
                        <option>베터리팩&프로펠러 +1 (+46,000원)</option>
                      </select>
                    </div>
                  </li>
                  <li class="col-xs-4" style="margin-bottom: 20px;">&nbsp;
                  </li>
                      <!-- 옵션2 -->
                  <li class="col-xs-2" style="margin-top: 5px; margin-right: 0px; margin-bottom: 0px;">옵션2
                  </li>
                  <li class="col-xs-6" style="padding-left: 0px; margin-bottom: 0px;">
                    <div class="productOption">
                      <select class="selectpicker">
                        <option>검정색 (+0원)</option>
                        <option>흰색 (+0원)</option>
                        <option>회색 (+0원)</option>
                      </select>
                    </div>
                  </li>
                  <li class="col-xs-4" style="margin-bottom: 20px;">&nbsp;
                  </li>
               </ul> 
                  <!-- ADD TO CART -->
                <ul class="row margin-top-30">
                  <li class="col-xs-6"> <a href="checkout.html" class="btn">바로구매</a> </li>
                  <li class="col-xs-6"> <a href="cart.html" class="btn">장바구니에 담기</a> </li>
                  <!-- LIKE -->
                  <li class="col-xs-2" style="margin-left: 20px; padding: 0px;">
                  	<a href="#." class="like-us">
                  		<span style="color: black;">찜하기 💛</span>
												<!-- 🖤💛🖤💛 -->
                  	</a>
                  </li>
                </ul>
                <!-- INFOMATION -->
                <div class="inner-info">
                  <h6>배송정보</h6>
                  <p>
                  	- 15:00이전 주문시 당일 출고.
                  	<br>- 금요일 15:00이후 ~ 일요일 24:00이전 주문시 월요일 출고
                  	<br>- 택배사 사정에 따라 1~2주정도 소요될 수 있습니다.
                  </p><br>
                  <h6>공유</h6>
                  <!-- Social Icons -->
                  <ul class="social_icons">
                    <li><a href="#."><i class="icon-social-facebook"></i></a></li>
                    <li><a href="#."><i class="icon-social-twitter"></i></a></li>
                    <li><a href="#."><i class="icon-social-tumblr"></i></a></li>
                    <li><a href="#."><i class="icon-social-youtube"></i></a></li>
                    <li><a href="#."><i class="icon-social-dribbble"></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <!--======= PRODUCT DESCRIPTION =========-->
        <div class="item-decribe"> 
          <!-- Nav tabs -->
          <ul class="nav nav-tabs animate fadeInUp" data-wow-delay="0.4s" role="tablist">
            <li role="presentation" class="active"><a href="#detail_info" role="tab" data-toggle="tab">상품상세 정보</a></li>
            <li role="presentation"><a href="#review" role="tab" data-toggle="tab">리뷰 (03)</a></li>
            <li role="presentation"><a href="#tags" role="tab" data-toggle="tab">상품 문의</a></li>
          </ul>
          
          <!-- Tab panes -->
          <div class="tab-content animate fadeInUp" data-wow-delay="0.4s"> 
            <!-- DESCRIPTION -->
            <div role="tabpanel" class="tab-pane fade in active" id="detail_info">
              <p>
              	입문용자를 위한 드론. 촬영용 드론. 
              	<br>여행, 촬영 좋아하는사람 강추!!
              	<br>최대 비행시간 : 2시간
              	<br>최대 조종 거리 : 1km
              	<br>최대 시야 거리 : 1km
              	<br>보증기간 : 1년
              	<br>기본 구성 : 베터리팩 1set, 충전 어댑터 1set, 프로펠러 여분 1set, 조종기 1ea

              </p>
              <h6>THE SIMPLE FACTS</h6>
              <ul>
                <li>
                  <p>Praesent faucibus, leo vitae maximus dictum,</p>
                </li>
                <li>
                  <p> Donec porta ut lectus </p>
                </li>
                <li>
                  <p> Phasellus maximus velit id nisl</p>
                </li>
                <li>
                  <p> Quisque a tellus et sapien aliquam sus</p>
                </li>
                <li>
                  <p> Donec porta ut lectus </p>
                </li>
                <li>
                  <p> Phasellus maximus velit id nisl</p>
                </li>
              </ul>
            </div>
            
            <!-- REVIEW -->
            <div role="tabpanel" class="tab-pane fade" id="review">
              <h6>MY REVIEW</h6>
              
              <!-- REVIEW PEOPLE 1 -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Image -->
                  <div class="avatar"> <a href="#"> <img class="media-object" src="/resources/images/avatar-1.jpg" alt=""> </a> </div>
                </div>
                <!--  Details -->
                <div class="media-body">
                  <p class="font-playfair">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.”</p>
                <div style="float: right; position: relative; top: -30px; left: -10px;">
                    <a href="#."><i class="icon-close"></i></a>
                </div>
                  <h6>TYRION LANNISTER &nbsp; MAY 10, 2016 </h6>
                </div>
              </div>
              <h6>3 REVIEWS FOR SHIP YOUR IDEA</h6>
              
              <!-- REVIEW PEOPLE 1 -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Image -->
                  <div class="avatar"> <a href="#"> <img class="media-object" src="/resources/images/avatar-1.jpg" alt=""> </a> </div>
                </div>
                <!--  Details -->
                <div class="media-body">
                  <p class="font-playfair">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.”</p>
                  <h6>TYRION LANNISTER &nbsp; MAY 10, 2016 </h6>
                </div>
              </div>
              
              <!-- REVIEW PEOPLE 1 -->
              
              <div class="media">
                <div class="media-left"> 
                  <!--  Image -->
                  <div class="avatar"> <a href="#"> <img class="media-object" src="/resources/images/avatar-2.jpg" alt=""> </a> </div>
                </div>
                <!--  Details -->
                <div class="media-body">
                  <p class="font-playfair">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.”</p>
                  <h6>TYRION LANNISTER &nbsp; MAY 10, 2016 </h6>
                </div>
              </div>
                            
              <!-- REVIEW PEOPLE 2 -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Image -->
                  <div class="avatar"> <a href="#"> <img class="media-object" src="/resources/images/avatar-1.jpg" alt=""> </a> </div>
                </div>
                <!--  Details -->
                <div class="media-body">
                  <p class="font-playfair">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.”</p>
                  <h6>TYRION LANNISTER &nbsp; MAY 10, 2016 </h6>
                </div>
              </div>
              <!-- ADD REVIEW -->
              <form>
                <ul class="row">
                  <li class="col-sm-12">
                    <label> *YOUR REVIEW
                      <textarea></textarea>
                    </label>
                  </li>
                  <li class="col-sm-6"> 
                    <!-- Rating Stars -->
                    <div class="stars"> <span>YOUR RATING</span> <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>
                  </li>
                  <li class="col-sm-6">
                    <button type="submit" class="btn btn-dark btn-small pull-right no-margin">POST REVIEW</button>
                  </li>
                </ul>
              </form>
            </div>
            
            <!-- TAGS -->
            <div role="tabpanel" class="tab-pane fade" id="tags">
            
              <p>
              	<span style="font-size: 14px; font-weight: bold;">배송 관련 문의</span>
              	<br>010-3015-7203
				<br><br><span style="font-size: 14px; font-weight: bold;">E-mail</span>
              	<br>spmm528@gmail.com
              </p>
            
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Popular Products -->
    <section class="light-gray-bg padding-top-150 padding-bottom-150">
      <div class="container"> 
        
        <!-- Main Heading -->
        <div class="heading text-center">
          <h4>YOU MAY LIKE IT</h4>
          </div>
        
        <!-- Popular Item Slide -->
        <div class="papular-block block-slide"> 
          
          <!-- Item -->
          <div class="item"> 
            <!-- Item img -->
            <div class="item-img"> <img class="img-1" src="/resources/images/product_list3.png" alt="" > <img class="img-2" src="/resources/images/product_list3.png" alt="" > 
              <!-- Overlay -->
              <div class="overlay">
                <div class="position-center-center">
                  <div class="inn"><a href="/resources/images/product_list3.png" data-lighter><i class="icon-magnifier"></i></a> <a href="#."><i class="icon-basket"></i></a> <a href="#." ><i class="icon-heart"></i></a></div>
                </div>
              </div>
            </div>
            <!-- Item Name -->
            <div class="item-name"> <a href="#.">Big Bear</a>
            </div>
            <!-- Price --> 
            <span class="price"><small>$</small>299</span> </div>
          
          <!-- Item -->
          <div class="item"> 
            <!-- Item img -->
            <div class="item-img"> <img class="img-1" src="/resources/images/product_list2.png" alt="" > <img class="img-2" src="/resources/images/product_list2.png" alt="" > 
              <!-- Overlay -->
              <div class="overlay">
                <div class="position-center-center">
                  <div class="inn"><a href="/resources/images/product_list2.png" data-lighter><i class="icon-magnifier"></i></a> <a href="#."><i class="icon-basket"></i></a> <a href="#." ><i class="icon-heart"></i></a></div>
                </div>
              </div>
            </div>
            <!-- Item Name -->
            <div class="item-name"> <a href="#.">Dron</a>
            </div>
            <!-- Price --> 
            <span class="price"><small>$</small>299</span> </div>
          
          <!-- Item -->
          <div class="item"> 
            <!-- Item img -->
            <div class="item-img"> <img class="img-1" src="/resources/images/product_list5.png" alt="" > <img class="img-2" src="/resources/images/product_list5.png" alt="" > 
              <!-- Overlay -->
              <div class="overlay">
                <div class="position-center-center">
                  <div class="inn"><a href="/resources/images/product_list5.png" data-lighter><i class="icon-magnifier"></i></a> <a href="#."><i class="icon-basket"></i></a> <a href="#." ><i class="icon-heart"></i></a></div>
                </div>
              </div>
            </div>
            <!-- Item Name -->
            <div class="item-name"> <a href="#.">cat Fishing rod</a>
            </div>
            <!-- Price --> 
            <span class="price"><small>$</small>299</span> </div>
          
          <!-- Item -->
          <div class="item"> 
            <!-- Item img -->
            <div class="item-img"> <img class="img-1" src="/resources/images/product_list7.png" alt="" > <img class="img-2" src="/resources/images/product_list7.png" alt="" > 
              <!-- Overlay -->
              <div class="overlay">
                <div class="position-center-center">
                  <div class="inn"><a href="/resources/images/product_list7.png" data-lighter><i class="icon-magnifier"></i></a> <a href="#."><i class="icon-basket"></i></a> <a href="#." ><i class="icon-heart"></i></a></div>
                </div>
              </div>
            </div>
            <!-- Item Name -->
            <div class="item-name"> <a href="#.">FLOCK OF DUCKS</a>
            </div>
            <!-- Price --> 
            <span class="price"><small>$</small>299</span> </div>
        </div>
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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=10eb2423c0789bba7beb31339f47651a"></script>
	<script type="text/javascript">
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    var geocoder = new kakao.maps.services.Geocoder();
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	                
// 	                위에 이런식으로 히든 넣어주기   name="voZipCode" id="sample4_postcode" value="vo.voZipCode"
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
// 	                document.getElementById("sample4_x").value = result[0].x;
// 	                document.getElementById("sample4_y").value = result[0].y;
	                
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }
	            }
	        }).open();
	    }
	</script>
	
	
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption); 
	</script>
	
	
	
	
	
	
	
</body>
</html>