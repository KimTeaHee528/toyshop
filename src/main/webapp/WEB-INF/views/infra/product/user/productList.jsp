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

			<!-- Products -->
			<section class="shop-page padding-top-100 padding-bottom-100">
				<div class="container">
					<div class="row">

						<!-- Shop SideBar -->
						<div class="col-sm-3">
							<div class="shop-sidebar">

								<!-- Category -->
								<h5 class="shop-tittle margin-bottom-30">category</h5>
								<ul class="shop-cate">
									<li><a href="#."> 전체 <span>24</span></a></li>
									<li><a href="#."> 유아용 <span>122</span></a></li>
									<li><a href="#."> 남자아이 <span>09</span></a></li>
									<li><a href="#."> 여자아이 <span>12</span></a></li>
									<li><a href="#."> 청소년 <span>98</span></a></li>
									<li><a href="#."> 가족 <span>34</span></a></li>
									<li><a href="#."> 어덜트 <span>23</span></a></li>
								</ul>

								<!-- FILTER BY PRICE -->
								<h5 class="shop-tittle margin-top-60 margin-bottom-30">FILTER
									BY PRICE</h5>
								<input type="range" min="0" max="500000" step="10000"
									value="500000"
									oninput="document.getElementById('value1').innerHTML=this.value;">
								<span id="value1"></span><span>원</span>


								<!-- TAGS -->
								<h5 class="shop-tittle margin-top-60 margin-bottom-30">TAGS</h5>
								<ul class="shop-tags">
									<li><a href="#.">레고</a></li>
									<li><a href="#.">유튜버</a></li>
									<li><a href="#.">바다</a></li>
									<li><a href="#.">수영장</a></li>
									<li><a href="#.">어린이</a></li>
									<li><a href="#.">우주</a></li>
									<li><a href="#.">RC</a></li>
									<li><a href="#.">자동차</a></li>
									<li><a href="#.">두뇌발달</a></li>
									<li><a href="#.">보드게임</a></li>
									<li><a href="#.">반려동물</a></li>
									<li><a href="#.">여행</a></li>
									<li><a href="#.">서바이벌</a></li>
									<li><a href="#.">소꿉놀이</a></li>
									<li><a href="#.">게임기</a></li>
								</ul>

								<!-- BRAND -->
								<h5 class="shop-tittle margin-top-60 margin-bottom-30">brands</h5>
								<ul class="shop-cate">
									<li><a href="#."> 닌텐도</a></li>
									<li><a href="#."> 레고</a></li>
									<li><a href="#."> 손오공</a></li>
									<li><a href="#."> 영실업 </a></li>
									<li><a href="#."> 반다이 </a></li>
									<li><a href="#."> 디즈니 </a></li>
								</ul>

								<!-- SIDE BACR BANER -->
								<div class="side-bnr margin-top-50">
									<img class="img-responsive" src="/resources/images/side_banner.png" alt="">
									<div class="position-center-center">
										<span class="price"><br> <br> <small>$</small>35~</span>
										<div class="bnr-text">look popular toys for infants</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Item Content -->
						<div class="col-sm-9">
							<div class="item-display">
								<div class="row">
									<!-- Products Select -->
									<div class="col-xs-12">
										<div class="pull-right">

											<!-- Short By -->
											<select class="selectpicker">
												<option>Short By</option>
												<option>Short By</option>
												<option>Short By</option>
											</select>
											<!-- Filter By -->
											<select class="selectpicker">
												<option>Filter By</option>
												<option>Short By</option>
												<option>Short By</option>
											</select>

											<!-- GRID & LIST -->
											<a href="#." class="grid-style"><i class="icon-grid"></i></a>
											<a href="#." class="list-style"><i class="icon-list"></i></a>
										</div>
									</div>
								</div>
							</div>

							<!-- Popular Item Slide -->
							<div class="papular-block row">

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list1.png" alt="">
											<img class="img-2" src="/resources/images/product_list1.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list1.png" data-lighter>
															<i class="icon-magnifier"></i>
														</a>
														<a href="#.">
															<i class="icon-basket"></i>
														</a> <a href="#.">
															<i class="icon-heart"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">bear family</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">60,000<small>원</small></span>
									</div>
								</div>

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Sale Tags -->
										<div class="on-sale">
											10% <span>OFF</span>
										</div>

										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list2.png" alt="">
											<img class="img-2" src="/resources/images/product_list2.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list2.png" data-lighter><i
															class="icon-magnifier"></i></a> <a href="#."><i
															class="icon-basket"></i></a> <a href="#."><i
															class="icon-heart"></i></a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">dron</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">250,000<small>원</small></span>
									</div>
								</div>

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list3.png" alt="">
											<img class="img-2" src="/resources/images/product_list3.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list3.png" data-lighter><i
															class="icon-magnifier"></i></a> <a href="#."><i
															class="icon-basket"></i></a> <a href="#."><i
															class="icon-heart"></i></a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">big bear</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">15,000<small>원</small></span>
									</div>
								</div>

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list4.png" alt="">
											<img class="img-2" src="/resources/images/product_list4.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list4.png" data-lighter><i
															class="icon-magnifier"></i></a> <a href="#."><i
															class="icon-basket"></i></a> <a href="#."><i
															class="icon-heart"></i></a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">rocket</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">30,000<small>원</small></span>
									</div>
								</div>

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list5.png" alt="">
											<img class="img-2" src="/resources/images/product_list5.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list5.png" data-lighter><i
															class="icon-magnifier"></i></a> <a href="#."><i
															class="icon-basket"></i></a> <a href="#."><i
															class="icon-heart"></i></a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">cat fishing rod</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">8,000<small>원</small></span>
									</div>
								</div>

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list6.png" alt="">
											<img class="img-2" src="/resources/images/product_list6.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list6.png" data-lighter><i
															class="icon-magnifier"></i></a> <a href="#."><i
															class="icon-basket"></i></a> <a href="#."><i
															class="icon-heart"></i></a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">suspenders doll</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">20,000<small>원</small></span>
									</div>
								</div>

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list7.png" alt="">
											<img class="img-2" src="/resources/images/product_list7.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list7.png" data-lighter><i
															class="icon-magnifier"></i></a> <a href="#."><i
															class="icon-basket"></i></a> <a href="#."><i
															class="icon-heart"></i></a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">flock of ducks</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">3,000<small>원</small></span>
									</div>
								</div>

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list8.png" alt="">
											<img class="img-2" src="/resources/images/product_list8.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list8.png" data-lighter><i
															class="icon-magnifier"></i></a> <a href="#."><i
															class="icon-basket"></i></a> <a href="#."><i
															class="icon-heart"></i></a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">game boy</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">30,000<small>원</small></span>
									</div>
								</div>

								<!-- Item -->
								<div class="col-md-4">
									<div class="item">
										<!-- Item img -->
										<div class="item-img">
											<img class="img-1" src="/resources/images/product_list9.png" alt="">
											<img class="img-2" src="/resources/images/product_list9.png" alt="">
											<!-- Overlay -->
											<div class="overlay">
												<div class="position-center-center">
													<div class="inn">
														<a href="/resources/images/product_list9.png" data-lighter><i
															class="icon-magnifier"></i></a> <a href="#."><i
															class="icon-basket"></i></a> <a href="#."><i
															class="icon-heart"></i></a>
													</div>
												</div>
											</div>
										</div>
										<!-- Item Name -->
										<div class="item-name">
											<a href="/product/productDetailUser">shovel & bucket</a>
											<p>Lorem ipsum dolor sit amet</p>
										</div>
										<!-- Price -->
										<span class="price">12,000<small>원</small></span>
									</div>
								</div>
							</div>

							<!-- Pagination -->
							<ul class="pagination">
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
							</ul>
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
					<img class="margin-bottom-30" src="/resources//resources/images/logo-foot.png" alt="">
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