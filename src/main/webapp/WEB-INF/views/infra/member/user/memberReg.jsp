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
                        <input type="text" id="user_name" value="" placeholder="">
                      </label>
                    </li>
                    <!-- LAST NAME -->
                    <li class="col-md-6">
                      <label><span id="idl">*ID</span> 
                        <input type="text" name="user_id" id="user_id" value="" placeholder="">
                      </label>
                    </li>
<!--                     <li class="col-md-1" style="padding-left: 0;"> -->
<!--                         <button type="submit" class="btn" style="padding: 0px; margin-top: 27px; height: 44px; font-size: 13px; width: 100%;">중복 확인</button> -->
<!--                     </li> -->
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
	
	
	<script type="text/javascript">
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption); 
	</script>
	
	<script type="text/javascript">
		 $("#user_id").keyup(function () {
			const pwd1 = $("#user_id").val();
		    //아이디 영문숫자 4~12자리
		    const regul1 = /^[a-zA-Z0-9]{4,12}$/;
		    var rech = regul1.test(pwd1);
		    if(pwd1 == ''){
				$("#user_id").css("border-color","black");
				$("#user_id").css("color","black");
				$("#user_id").text("color","black");
				$("#idl").text("*ID");
				$("#idl").css("color","black");
		    }
		    if ( rech == false) {
				$("#user_id").css("border-color","red");
				$("#user_id").css("color","red");
				$("#user_id").text("color","red");
				$("#idl").text("*대소문자 또는 숫자만,4-12자");
				$("#idl").css("color","red");
		    }else{
				$("#user_id").css("border-color","black");
				$("#user_id").css("color","black");
				$("#user_id").text("color","black");
				$("#idl").text("*일단맞음");
				$("#idl").css("color","black");
				$("#user_id").on("focusout", function(){
					const pwd2 = $("#user_id").val();
					if(pwd2 != null || pwd2 != ''){
						$.ajax({
							type: "post"
							/* ,dataType:"json" */
							,url: "/member/checkId"
							/* ,data : $("#formLogin").serialize() */
							,data : { "id" : $("#user_id").val() }
							,success: function(response) {
								if(response.rt == "success") {
									$(function(){
										$("#user_id").css("border-color","red");
										$("#user_id").css("color","red");
										$("#user_id").text("color","red");
										$("#idl").text("*ID 중복");
										$("#idl").css("color","red");
									})
								} else {
									$("#user_id").css("border-color","black");
									$("#user_id").css("color","black");
									$("#user_id").text("color","black");
									$("#idl").text("*사용가능");
									$("#idl").css("color","black");
								}
							}
						});

					} else{
						$("#user_id").css("border-color","black");
						$("#user_id").css("color","black");
						$("#user_id").text("color","black");
						$("#idl").text("*ID");
						$("#idl").css("color","black");
					}
				});
		    }
		});
	</script>
	
	
</body>
</html>