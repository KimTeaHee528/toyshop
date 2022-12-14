<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!-- jstl s -->
<%@include file="../../common/comm/includeV1/jstl.jsp"%>
<!-- jstl e -->
<!DOCTYPE html>
<html lang="en">
	<!-- head s -->
	<%@include file="../../common/xdmin/includeV1/head.jsp"%>
	<!-- head e -->
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
							<input type="hidden" name="li_seq" value="<c:out value="${seq}"/>"/>
							<c:forEach items="${list}" var="list" varStatus="status">
<%-- 								<a href="/codeGroup/codeGroupView?li_seq=<c:out value="${list.seq }"/>"> --%>
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
					<%@include file="../../common/comm/includeV1/pagination.jsp"%>
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

	<!-- foot s -->
	<%@include file="../../common/comm/includeV1/foot.jsp"%>
	<!-- foot e -->
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
	<script src="https://kit.fontawesome.com/0089819b08.js" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	
		var goUrlView = "/codeGroup/codeGroupView";
		var goUrlList = "/codeGroup/codeGroupList";
		var goUrlReg = "/codeGroup/codeGroupReg";
		
		
		var form = $("form[name=ccgList]");
		var li_seq = $("input:hidden[name=li_seq]");
		
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