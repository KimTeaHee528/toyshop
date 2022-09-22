<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!-- jstl s -->
<%@include file="../../common/xdmin/includeV1/jstl.jsp"%>
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
                <h6>회원가입</h6>
                <form>
                  <ul class="row">
                    
                    <!-- Name -->
                    <li class="col-md-6">
                      <label> *이름
                        <input type="text" name="first-name" id="user_name" value="" placeholder="">
                      </label>
                    </li>
                    <!-- LAST NAME -->
                    <li class="col-md-5">
                      <label> *ID
                        <input type="text" name="last-name" id="user_id" value="" placeholder="">
                      </label>
                    </li>
                    <li class="col-md-1" style="padding-left: 0;">
                        <button type="submit" class="btn" style="padding: 0px; margin-top: 27px; height: 44px; font-size: 13px; width: 100%;">중복 확인</button>
                    </li>
                    <!-- EMAIL ADDRESS111 -->
                    <li class="col-md-3" style="margin-right: 0px;">
                      <label> *이메일
                        <input type="text" name="contry-state" id="email_id" value="" placeholder="">
                      </label>                
                    </li>
                    <li class="col-md-3" id="email-box" name="selboxDirect" style="margin-right: 0px;">
                      <label> &nbsp;
                        <input type="text" name="contry-state" id="email_div" value="" placeholder="@example.com">
                      </label>                
                    </li>
                    
                    
                  <li class="col-md-3" style="margin-right: 0px;">
                      <label> &nbsp;
                        <select class="selectpicker" id="email-sel" name="e-mail-add">
                          <option value="@gmail.com">@gmail.com</option>
                          <option value="@naver.com">@naver.com</option>
                          <option value="@hanmail.com">@hanmail.com</option>
                          <option value="type">@직접입력</option>
                        </select>
                      </label>                
                    </li>
                    <li class="col-md-3" id="email-box2" name="selboxDirect" style="margin-right: 0px; height: 92px;">
                      <label> &nbsp;</label>                
                    </li>
                    <!-- LAST NAME -->
                    <li class="col-md-6" style="margin-top: 0px;">
                      <label><span class="pwl" id="pwid">*비밀번호</span> 
                        <input type="password" class="pw" id="pw" name="" value="" placeholder="">
                      </label>
                    </li>
                    <li class="col-md-6" style="margin-top: 0px;">
                      <label><span class="pwl" id="pwchid">*비밀번호 확인</span> 
                        <input type="password" class="pw" id="pw_re" name="" value="" placeholder="">
                      </label>
                    </li>
                                        <!-- PHONE -->
                    <li class="col-md-6" style="margin-top: 0px;">
                      <label> *전화번호
                        <input type="text" name="postal-code" id="tell" value="" placeholder="">
                      </label>
                    </li>
                    <!-- GENDER -->
                    <li class="col-md-6">
                      <label> *성별
                        <select class="selectpicker" id="gender" name="contry-state">
                          <option>MALE</option>
                          <option>FEMALE</option>
                          <option>OTHER</option>
                        </select>
                      </label>
                    </li>  
                      <!-- ADDRESS -->
                    <li class="col-md-6"> 
                      <label>*ZIP 코드
                        <input type="text" name="address" id="zip" value="" placeholder="">
                      </label>
                    </li>
                    <li class="col-md-6"> 
                      <!-- ADDRESS -->
                      <label>*주소
                        <input type="text" name="address" id="add" value="" placeholder="">
                      </label>
                    </li>
                    <!-- TOWN/CITY -->
                    <li class="col-md-6">
                      <label>*상세주소
                        <input type="text" name="town" id="add_detail" value="" placeholder="">
                      </label>
                    </li>
                    <!-- DOB -->
                    <li class="col-md-6">
                      <label> *생년월일
                      	<input type="date" id="dob">
                      </label>
                    </li>   
                    <!-- PHONE -->
                    <li class="col-md-12 text-center">
                      <button type="button" class="btn" id="submit_btn">가입 완료</button>
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