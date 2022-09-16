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
<link rel="stylesheet" type="text/css" href="/resources/rs-plugin/css/settings.css"
	media="screen" />

<link rel="icon" type="image/x-icon" href="/resources/img/faviconT.ico" />


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
	<section class="chart-page padding-top-100 padding-bottom-100">
		<div class="container">
			<!-- Payments Steps -->
			<div class="shopping-cart">

				<!-- SHOPPING INFORMATION -->
				<div class="cart-ship-info register">
					<div class="row">
						<!-- ESTIMATE SHIPPING & TAX -->
						<div class="col-sm-12">
							<c:choose>
								<c:when test="${vo.ccgFormMode eq 1}">
									<h6>코드그룹 등록</h6>
								</c:when>
								<c:when test="${vo.ccgFormMode eq 2}">
									<h6>코드그룹 수정</h6>
								</c:when>
								<c:otherwise>
									<h6>코드그룹 정보</h6>
								</c:otherwise>
							</c:choose>
	<%-- 							<form id="ins" method="post" action="/codeGroup/codeGroupMod?li_seq=<c:out value="${item.seq }"/>"> --%>
							<form method="GET" name="ccgForm">
								<!-- Vo s -->
								<%@include file="../../codegroup/xdmin/codeGroupVo.jsp"%>
								<!-- Vo e -->
								<ul class="row">
									<input type="hidden" name="ccgFormMode" value="<c:out value="${vo.ccgFormMode }"/>">
									<input type="hidden" name="li_seq" value="<c:out value="${item.seq }"/>">
									<c:choose>
										<c:when test="${vo.ccgFormMode eq 1}">
										</c:when>
										<c:when test="${vo.ccgFormMode eq 2}">
											<li class="col-md-6">
												<label>
													코드그룹 코드 
													<input type="text" name="seq" value="<c:out value="${item.seq }"/>" placeholder="숫자" readonly>
												</label>
											</li>
										</c:when>
										<c:otherwise>
											<li class="col-md-6">
												<label>
													코드그룹 코드 
													<input type="text" name="seq" value="<c:out value="${item.seq }"/>" placeholder="숫자" readonly>
												</label>
											</li>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${vo.ccgFormMode eq 1}">
										</c:when>
										<c:when test="${vo.ccgFormMode eq 2}">
											<li class="col-md-6">
												<label>
													코드그룹 코드 (Another)
													<input type="text" value="<c:out value="${item.seq }"/>" placeholder="영문(대소문자), 숫자" readonly>
												</label>
											</li>
										</c:when>
										<c:otherwise>
											<li class="col-md-6">
												<label>
													코드그룹 코드 (Another)
													<input type="text" value="<c:out value="${item.seq }"/>" placeholder="영문(대소문자), 숫자" readonly>
												</label>
											</li>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${vo.ccgFormMode eq 1}">
											<li class="col-md-6">
												<label>
													코드그룹 이름(한글)
													<input type="text" name="code_group_name" value="" placeholder="한글, 숫자">
												</label> 
											</li>
										</c:when>
										<c:when test="${vo.ccgFormMode eq 2}">
											<li class="col-md-6">
												<label>
													코드그룹 이름(한글)
													<input type="text" name="code_group_name" value="<c:out value="${item.code_group_name }"/>" placeholder="한글, 숫자">
												</label> 
											</li>
										</c:when>
										<c:otherwise>
											<li class="col-md-6">
												<label>
													코드그룹 이름(한글)
													<input type="text" name="code_group_name" value="<c:out value="${item.code_group_name }"/>" placeholder="한글, 숫자" readonly>
												</label> 
											</li>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${vo.ccgFormMode eq 1}">
											<li class="col-md-6">
												<label> 
													코드그룹 이름(영문) 	
													<input type="text" name="code_en_name" value="" placeholder="영문(대소문자), 숫자" >
												</label>
											</li>
										</c:when>
										<c:when test="${vo.ccgFormMode eq 2}">
											<li class="col-md-6">
												<label> 
													코드그룹 이름(영문) 	
													<input type="text" name="code_en_name" value="<c:out value="${item.code_en_name }"/>" placeholder="영문(대소문자), 숫자">
												</label>
											</li>
										</c:when>
										<c:otherwise>
											<li class="col-md-6">
												<label> 
													코드그룹 이름(영문) 	
													<input type="text" name="code_en_name" value="<c:out value="${item.code_en_name }"/>" placeholder="영문(대소문자), 숫자" readonly>
												</label>
											</li>
										</c:otherwise>
									</c:choose>
									<li class="col-md-6" style="margin-top: 0px;">
										<label>순서(아직 없음)
											<input type="text" name="" value="1" placeholder="======" readonly>
										</label>
									</li>
									<c:choose>
										<c:when test="${vo.ccgFormMode eq 1}">
											<li class="col-md-6" style="margin-right: 0px;">
												<label>
													사용여부
													<select class="selectpicker" name="use_ny">
														<option value="0">N</option>
														<option value="1"selected>Y</option>
													</select>
												</label>
											</li>
										</c:when>
										<c:when test="${vo.ccgFormMode eq 2}">
											<li class="col-md-6" style="margin-right: 0px;">
												<label>
													사용여부
													<select class="selectpicker" name="use_ny">
														<option value="0" <c:if test="${item.use_ny == 0}">selected</c:if>>N</option>
														<option value="1" <c:if test="${item.use_ny == 1}">selected</c:if>>Y</option>
													</select>
												</label>
											</li>
										</c:when>
										<c:otherwise>
											<li class="col-md-6" style="margin-right: 0px;">
												<label>
													사용여부
													<select class="selectpicker" name="use_ny" disabled>
														<option value="0" <c:if test="${item.use_ny == 0}">selected</c:if>>N</option>
														<option value="1" <c:if test="${item.use_ny == 1}">selected</c:if>>Y</option>
													</select>
												</label>
											</li>
										</c:otherwise>
									</c:choose>
									<li class="col-md-6" style="margin-right: 0px;">
										<label>
											삭제여부(아직없음)
											<select class="selectpicker" disabled>
												<option value="0" selected>N</option>
												<option value="1">Y</option>
											</select>
										</label>
									</li>
									<c:choose>
										<c:when test="${vo.ccgFormMode eq 1}">
										</c:when>
										<c:when test="${vo.ccgFormMode eq 2}">
										</c:when>
										<c:otherwise>
											<li class="col-md-6">
												<label>
													등록일
													<input type="date" value="2022-08-30" disabled>
												</label>
											</li>
											<li class="col-md-6">
												<label>
													수정일
													<input type="date" value="2022-08-30" disabled>
												</label>
											</li>
										</c:otherwise>
									</c:choose>
									<c:choose>
										<c:when test="${vo.ccgFormMode eq 1}">
											<li class="col-md-6" style="margin-top: 0px;">
												<label>
													설명(아직 없음)
													<textarea style="width: 555px; height: 42px; margin-top: 10px; resize: vertical;" placeholder="내용입력"></textarea>
												</label>
											</li>
										</c:when>
										<c:when test="${vo.ccgFormMode eq 2}">
											<li class="col-md-6" style="margin-top: 0px;">
												<label>
													설명(아직 없음)
													<textarea style="width: 555px; height: 42px; margin-top: 10px; resize: vertical;" placeholder="내용입력"></textarea>
												</label>
											</li>
										</c:when>
										<c:otherwise>
											<li class="col-md-6" style="margin-top: 0px;">
												<label>
													설명(아직 없음)
													<textarea style="width: 555px; height: 42px; margin-top: 10px; resize: vertical;" placeholder="내용입력" disabled></textarea>
												</label>
											</li>
										</c:otherwise>
									</c:choose>
									<li class="col-md-12 text-center">
										<c:choose>
											<c:when test="${vo.ccgFormMode eq 1}">
												<button type="button" class="btn" id="a_list">목록</button></a>
												<button type="button" class="btn" id="btn_save">저장</button>
											</c:when>
											<c:when test="${vo.ccgFormMode eq 2}">
												<button type="button" class="btn" id="a_list">목록</button></a>
												<button type="button" class="btn" id="btn_back">뒤로가기</button>
												<button type="button" class="btn" id="btn_up">수정완료</button>
											</c:when>
											<c:otherwise>
												<button type="button" class="btn" id="a_list">목록</button></a>
												<button type="button" class="btn">삭제</button>
												<button type="button" class="btn" id="btn_mod">수정</button>
											</c:otherwise>
										</c:choose>
									</li>
								</ul>
							</form>
							<form name="form_back">
								<!-- Vo s -->
								<%@include file="../../codegroup/xdmin/codeGroupVo.jsp"%>
								<!-- Vo e -->
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
						<i class="icon-envelope"></i> info@toyshop.com
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
	

	<script type="text/javascript">

	var goUrlView = "/codeGroup/codeGroupView";
	var goUrlUpdt = "/codeGroup/codeGroupUp";	
	var goUrlInst = "/codeGroup/codeGroupInst";	
	var goUrlList = "/codeGroup/codeGroupList";	
	
	
	var form = $("form[name=ccgForm]");
	var form_back = $("form[name=form_back]");


	$("#btn_mod").on("click", function(){
		form.attr("action", goUrlmod).submit();
	});
	$("#btn_up").on("click", function(){
		form.attr("action", goUrlUpdt).submit();
	});
	$("#btn_save").on("click", function(){
		form.attr("action", goUrlInst).submit();
	});
	$("#a_list").on("click", function(){
		form.attr("action", goUrlList).submit();
	});
	$("#btn_back").on("click", function(){
		form.attr("action", goUrlView).submit();
	});
	
	
	
	</script>
	

<!--  	function test(){ -->
<!--  		console.log(" 코드그룹코드 : " + document.getElementById("first-name").value -->
<!--  			+ "\n 코드그룹 코드 (Another) : " + document.getElementById("first-name2").value -->
<!--  			+ "\n 코드그룹 코드 (Another) : " + document.getElementById("code_group_name").value -->
<!--  			+ "\n 코드그룹 코드 (Another) : " + document.getElementById("first-name3").value -->
<!--  			+ "\n 코드그룹 코드 (Another) : " + document.getElementById("sort").value -->
<!--  			+ "\n 코드그룹 코드 (Another) : " + document.getElementById("use_ny").value -->
<!--  			+ "\n 코드그룹 코드 (Another) : " + document.getElementById("del_ny").value -->
<!--  		); -->
<!--  	return false; -->
<!--  	}; -->
	
<!--  	function aaaa(){ -->
<!--  		if(document.getElementById("codeGroup").value == null){ -->
<!--  			alert("입력해라"); -->
<!--  			document.getElementById("codeGroup").value=""; -->
<!--  			document.getElementById("codeGroup").focus(); -->
	
<!--  	return false; -->
<!--  	} -->
</body>
</html>