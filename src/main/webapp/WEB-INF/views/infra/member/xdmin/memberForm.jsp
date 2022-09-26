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
				<input type="hidden" name="li_seq" value="<c:out value="${item.seq }"/>">
                <h6 style="padding-left: 50px;">회원정보 <span style="font-size: 17px; font-weight: lighter;">회원번호: <c:out value="${item.seq }"/></span> </h6>
                <form>
                  <ul class="row">
                    <!-- Name -->
                    <div class="col-md-9" style="padding-left: 100px;">
	                    <div class="col-md-4">
	                      <label> *ID
	                        <input type="text" name="first-name" value="<c:out value="${item.id }"/>" placeholder="">
	                      </label>
	                    </div>
	                    <!-- LAST NAME -->
	                    <div class="col-md-4">
	                      <label> *이름
	                        <input type="text" name="last-name" value="<c:out value="${item.name }"/>" placeholder="">
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
                        <input type="text" name="contry-state" value="<c:out value="${item.email }"/>" placeholder="">
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
                        <input type="text" name="postal-code" value="<c:out value="${item.tell }"/>" placeholder="">
                      </label>
                    </div>
                   <!-- DOB -->
                    <div class="col-md-6">
                      <label> *생년월일
                      	<input type="date" value="<c:out value="${item.dob }"/>">
                      </label>
                    </div>  
                   <!-- reg -->
                    <div class="col-md-6">
                      <label> *가입일
                      	<input type="date" value="<c:out value="${item.reg_date }"/>">
                      </label>
                    </div>  
                   <!-- mod -->
                    <div class="col-md-6">
                      <label> *수정일
                      	<input type="date" value="<c:out value="${item.mod_date }"/>">
                      </label>
                    </div>
                    <input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
<!--                     <span id="guide" style="color:#999;display:none"></span> -->
                    
                    
                    
                    <div class="col-md-6"> 
                      <!-- ADDRESS -->
                      <label>*ZIP 코드
                      	<input type="text" id="sample4_postcode" onclick="sample4_execDaumPostcode()" name="zip_code" value="<c:out value="${item.zip_code }"/>" placeholder="우편번호" readonly>
<%--                         <input type="text" name="address" value="<c:out value="${item.zip_code }"/>" placeholder=""> --%>
                      </label>
                    </div>
                    <div class="col-md-2"> 
                      <!-- ADDRESS -->
<!--                       <label>&nbsp; -->
<!--                       	<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" id="btn_sh_ad"> -->
<!--                       </label> -->
                    </div>
                    <div class="col-md-6"> 
                      <!-- ADDRESS -->
                      <label>*도로명 주소
                     	<input type="text" id="sample4_roadAddress" onclick="sample4_execDaumPostcode()" name="address" value="<c:out value="${item.address }"/>" placeholder="도로명주소" readonly>
                      </label>
                    </div>
                    <!-- ADDRESS_DETAil -->
                    <div class="col-md-12">
                      <label>*상세주소
                      	<input type="text" id="sample4_detailAddress" name="address" value="<c:out value="${item.address_detail }"/>" placeholder="상세주소">
                      </label>
                    </div>
                    <!-- x -->
                    <div class="col-md-6">
                      <label>*위도
                      	<input type="text" id="sample4_x" name="get_x">
                      </label>
                    </div>
                    <!-- y -->
                    <div class="col-md-6">
                      <label>*경도
                      	<input type="text" id="sample4_y" name="get_y">
                      </label>
                    </div>
                    <div class="col-md-12">
						<div id="map" style="width:100%;height:350px;"></div>
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
    
	<!-- news s -->
	<%@include file="../../common/comm/includeV1/newsLetter.jsp"%>
	<!-- news e -->
	<!-- foot s -->
	<%@include file="../../common/comm/includeV1/foot.jsp"%>
	<!-- foot e -->
	<!-- script s -->
	<%@include file="../../common/comm/includeV1/script.jsp"%>
	<!-- script e -->
	<script type="text/javascript">
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
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
	                
	                
						/* lat and lng from address s */
					// 주소-좌표 변환 객체를 생성
					var geocoder = new daum.maps.services.Geocoder();
					// 주소로 좌표를 검색
					geocoder.addressSearch(roadAddr, function(result, status) {
						// 정상적으로 검색이 완료됐으면,
						if (status == daum.maps.services.Status.OK) {
							document.getElementById("sample4_y").value=result[0].y;
							document.getElementById("sample4_x").value=result[0].x;

							
							
							setCenter();
						    
						    
						}
					});
					/* lat and lng from address e */
					
	        function setCenter() {            
	            // 이동할 위도 경도 위치를 생성합니다 
	            var moveLatLon = new kakao.maps.LatLng(33.452613, 126.570888);
	            
	            // 지도 중심을 이동 시킵니다
	            map.setCenter(moveLatLon);
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