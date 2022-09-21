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



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>




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
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>


<!-- Online Fonts -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<!-- top s -->
	<%@include file="../../common/xdmin/includeV1/top.jsp"%>
	<!-- top e -->
		<!--=========내용=========-->
	<div style="display:block; width: 100%; text-align: center;">
		<div style="display: inline-block; text-align: center; width: 1500px;">
		<div style="display: block; float: top; float: left; font-size: 30px; margin-top: 30px;">코드 그룹 관리
		</div>
			<div class="tab-pane" style="margin-bottom: 50px; margin-top: 40px;">
				<form id="sh" method="post" name="ccgList" action="/codeGroup/codeGroupList">
					<div class="ccg-top">
						<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<%-- 						<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>"> --%>
<!-- 						<input type="hidden" name="checkboxSeqArray"> -->
						<div style="display: inline-block; margin-right: 25px; margin-bottom: 30px; float: left;">
							<label>페이지 수
								<select name="rowNumToShow">
									<option value=10 <c:if test="${vo.rowNumToShow == 10}">selected</c:if>>10</option>
									<option value=30 <c:if test="${vo.rowNumToShow == 30}">selected</c:if>>30</option>
									<option value=50 <c:if test="${vo.rowNumToShow == 50}">selected</c:if>>50</option>
								</select>
							</label>
						</div>
						<div style="display: inline-block; margin-right: 25px; margin-bottom: 30px; float: left;">
							<label>사용유무
								<select name="sh_use_ny">
									<option value="" <c:if test="${empty vo.sh_use_ny}">selected</c:if>>전체</option>
									<option value=0 <c:if test="${vo.sh_use_ny == 0}">selected</c:if>>N</option>
									<option value=1 <c:if test="${vo.sh_use_ny == 1}">selected</c:if>>Y</option>
								</select>
							</label>
						</div>
						<div style="display: inline-block; margin-right: 25px; margin-bottom: 30px; float: left;">
							<label>날짜
								<select name="sh_date_rm">
									<option value="" <c:if test="${empty vo.sh_date_rm}">selected</c:if>>전체</option>
									<option value=0 <c:if test="${vo.sh_date_rm == 0}">selected</c:if>>등록일</option>
									<option value=1 <c:if test="${vo.sh_date_rm == 1}">selected</c:if>>수정일</option>
								</select>
							</label>
						</div>
						<div style="display: inline-block; margin-right: 25px; float: left;">
							<label>시작일&nbsp;&nbsp;
<!-- 								<input type="text" id="startDate" name="sh_start_date"> -->
								<input type="date" name="sh_start_date" value="<c:out value="${vo.sh_start_date}"/>">
							</label>
						</div>
						<div style="display: inline-block; margin-right: 25px; float: left;">
							<label>종료일&nbsp;&nbsp;
<!-- 								<input type="text" id="endDate" name="sh_start_date"> -->
								<input type="date" name="sh_end_date" value="<c:out value="${vo.sh_end_date}"/>">
							</label>
						</div>
						<div style="display: inline-block; margin-right: 25px; float: left;">
							<label>검색구분&nbsp;&nbsp;
								<select name="sh_div">
									<option value="" <c:if test="${empty vo.sh_div}">selected</c:if>>--</option>
									<option value=0 <c:if test="${vo.sh_div == 0}">selected</c:if>>코드그룹 이름(한글)</option>
									<option value=1 <c:if test="${vo.sh_div == 1}">selected</c:if>>코드그룹 이름(영문)</option>
								</select>
							</label>
						</div>
						<div style="display: block; margin-right: 25px; float: right;">
							<label>검색어&nbsp;&nbsp;
								<input type="text" name="sh_val" value="<c:out value="${vo.sh_val}"/>"/>
							</label>
							<a href="#" onclick="document.getElementById('sh').submit();"><i class="icon-magnifier"></i></a>
						</div>
				</div>
				<div class="ccg-list-head">
					<div class="list-1">
						<input type="checkbox">
					</div>
					<div class="list-2">
						#
					</div>
					<div class="list-3">
						코드그룹 코드
					</div>
					<div class="list-4">
						코드그룹 이름(한글)
					</div>
					<div class="list-5">
						코드그룹 이름(영문)
					</div>
					<div class="list-6">
						코드 갯수
					</div>
					<div class="list-7">
						등록일
					</div>
					<div class="list-8">
						수정일
					</div>
				</div>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<div class="ccg-list-body" style="height: 45px; text-align:center;">
							데이터가 없습니다.
						</div>
					</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="list" varStatus="status">
<%-- 								<a href="/codeGroup/codeGroupView?li_seq=<c:out value="${list.seq }"/>"> --%>
								<input type="hidden" name="li_seq" value="<c:out value="${list.seq}"/>"/>
								<a href="javascript:goForm(<c:out value="${list.seq}"/>)">
									<div class="ccg-list-body">
										<div class="list-1">
											<input type="checkbox">
										</div>
										<div class="list-2">
											<c:out value="${list.seq }"/>
										</div>
										<div class="list-3">
											<c:out value="${list.seq }"/>
										</div>
										<div class="list-4">
											<c:choose>
												<c:when test="${not empty list.code_group_name}"><c:out value="${list.code_group_name }"/></c:when>
												<c:otherwise>--</c:otherwise>
											</c:choose>
										</div>
										<div class="list-5">
											<c:choose>
												<c:when test="${not empty list.code_en_name}"><c:out value="${list.code_en_name }"/></c:when>
												<c:otherwise>--</c:otherwise>
											</c:choose>
										</div>
										<div class="list-6">
											<c:out value="${list.cnt }"/>
										</div>
										<div class="list-7">
											
											<c:choose>
												<c:when test="${not empty list.reg_date}"><fmt:formatDate value="${list.reg_date }" pattern="yy-MM-dd HH:mm:ss"/></c:when>
												<c:otherwise>--</c:otherwise>
											</c:choose>
										</div>
										<div class="list-8">
											<c:choose>
												<c:when test="${not empty list.mod_date}"><fmt:formatDate value="${list.mod_date }" pattern="yy-MM-dd HH:mm:ss"/></c:when>
												<c:otherwise>--</c:otherwise>
											</c:choose>
										</div>
									</div>
								</a>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<!-- pagination s -->
					<%@include file="../../common/xdmin/includeV1/pagination.jsp"%>
					<!-- pagination e -->
					</form>
					<div class="col-md-12 text-center" style="margin-bottom: 50px; margin-top: 20px;">
						<button type="button" class="btn" id="btn_reg">등록</button>
						<button type="submit" class="btn">삭제</button>
					</div>
				</div>
			</div>
		</div>
					
<!--   리스트 넣는곳   -->





<!-- 	<section class="news-letter padding-top-150 padding-bottom-150"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="heading light-head text-center margin-bottom-30"> -->
<!-- 				<h4>NEWSLETTER</h4> -->
<!-- 				<span>Phasellus lacinia fermentum bibendum. Interdum et -->
<!-- 					malesuada fames ac ante ipsumien lacus, eu posuere odi </span> -->
<!-- 			</div> -->
<!-- 			<form> -->
<!-- 				<input type="email" placeholder="Enter your email address" required> -->
<!-- 				<button type="submit">SEND ME</button> -->
<!-- 			</form> -->
<!-- 		</div> -->
<!-- 	</section> -->

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
	<script src="https://kit.fontawesome.com/0089819b08.js" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	
		var goUrlView = "/codeGroup/codeGroupView";
		var goUrlList = "/codeGroup/codeGroupList";
		var goUrlReg = "/codeGroup/codeGroupReg";
		
		
		var form = $("form[name=ccgList]");
		var li_seq = $("input[name=li_seq]");
		
// 		function list_one(){
// 			document.getElementById("first-name2").value
// 		return false;
// 		};
		
		goList = function(thisPage){
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action",goUrlList).submit();
		}
		goForm = function(seq){
			li_seq.val(seq);
			form.attr("action",goUrlView).submit();
		}
		
		$("#list_view").on("click", function(){
			form.attr("action", goUrlView).submit();
		});
		
		$("#btn_reg").on("click", function(){
			form.attr("action", goUrlReg).submit();
		});
		
		

	</script>
	
	
</body>
</html>