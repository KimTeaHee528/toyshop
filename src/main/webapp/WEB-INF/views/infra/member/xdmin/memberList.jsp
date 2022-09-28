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
	<div style="display:block; width: 100%; text-align: center;">
		<div style="display: inline-block; text-align: center; width: 1500px;">
		<div style="display: block; float: top; float: left; font-size: 30px; margin-top: 30px;">회원 관리</div>
			<div class="tab-pane" style="margin-bottom: 50px; margin-top: 40px;">
				<form id="sh" name="memberList" action="/member/memberList">
				<div class="member-top">
					<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
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
						<label>관리자 유무
								<select name="sh_admin_ny">
									<option value="" <c:if test="${empty vo.sh_admin_ny}">selected</c:if>>전체</option>
									<option value=0 <c:if test="${vo.sh_admin_ny == 0}">selected</c:if>>N</option>
									<option value=1 <c:if test="${vo.sh_admin_ny == 1}">selected</c:if>>Y</option>
							</select>
						</label>
					</div>
					<div style="display: inline-block; margin-right: 25px; float: left;">
						<label>날짜선택
								<select name="sh_date_rm">
									<option value="" <c:if test="${empty vo.sh_date_option}">selected</c:if>>--</option>
									<option value=0 <c:if test="${vo.sh_date_option == 0}">selected</c:if>>가입일</option>
									<option value=1 <c:if test="${vo.sh_date_option == 1}">selected</c:if>>수정일</option>
									<option value=2 <c:if test="${vo.sh_date_option == 2}">selected</c:if>>탈퇴일</option>
									<option value=3 <c:if test="${vo.sh_date_option == 3}">selected</c:if>>생일</option>
								</select>
						</label>
					</div>
					<div style="display: inline-block; margin-right: 25px; float: left;">
						<label>시작일&nbsp;&nbsp;
								<input type="date" name="sh_start_date" value="<c:out value="${vo.sh_start_date}"/>">
						</label>
					</div>
					<div style="display: inline-block; margin-right: 25px; float: left;">
						<label>종료일&nbsp;&nbsp;
								<input type="date" name="sh_end_date" value="<c:out value="${vo.sh_end_date}"/>">
						</label>
					</div>
					<div style="display: inline-block; margin-right: 25px; float: left;">
						<label>검색구분&nbsp;&nbsp;
							<select name="sh_div">
								<option value="" <c:if test="${empty vo.sh_div}">selected</c:if>>--</option>
								<option value=0 <c:if test="${vo.sh_div == 0}">selected</c:if>>번호</option>
								<option value=1 <c:if test="${vo.sh_div == 1}">selected</c:if>>이름</option>
								<option value=2 <c:if test="${vo.sh_div == 2}">selected</c:if>>ID</option>
								<option value=3 <c:if test="${vo.sh_div == 3}">selected</c:if>>성별</option>
								<option value=4 <c:if test="${vo.sh_div == 4}">selected</c:if>>주소</option>
								<option value=5 <c:if test="${vo.sh_div == 5}">selected</c:if>>전화번호</option>
								<option value=6 <c:if test="${vo.sh_div == 6}">selected</c:if>>mail</option>
							</select>
						</label>
					</div>
					<div style="display: block; float: right;">
						<label>검색어&nbsp;&nbsp;
							<input type="text" name="sh_val" value="<c:out value="${vo.sh_val}"/>"/>
						</label>
						<a href="#" onclick="document.getElementById('sh').submit();"><i class="icon-magnifier"></i></a>
					</div>
				</div>
				<div class="member-list-head">
					<div class="list-1">
						<input type="checkbox">
					</div>
					<div class="list-2">
						#
					</div>
					<div class="list-3">
						이름
					</div>
					<div class="list-4">
						ID
					</div>
					<div class="list-5">
						성별
					</div>
					<div class="list-6">
						나이
					</div>
					<div class="list-7">
						주소
					</div>
					<div class="list-8">
						전화번호
					</div>
					<div class="list-9">
						E-mail
					</div>
					<div class="list-10">
						관리자 여부
					</div>
					<div class="list-11">
						가입일
					</div>
					<div class="list-12">
						탈퇴일
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
							<a href="javascript:goForm(<c:out value="${list.seq}"/>)">
								<div class="member-list-body">
									<div class="list-1">
										<input type="checkbox">
									</div>
									<div class="list-2">
										<c:out value="${list.seq }"/>
									</div>
									
									<div class="list-3">
										<c:out value="${list.name }"/>
									</div>
									<div class="list-4">
										<c:out value="${list.id }"/>
									</div>
									<div class="list-5">
										<c:out value="${list.gender }"/>
									</div>
									<div class="list-6">
										${fn:substring(list.dob,0,10)}
									</div>
									<div class="list-7">
										<c:out value="${list.address }"/>
									</div>
									<div class="list-8">
										<c:out value="${list.tell }"/>
									</div>
									<div class="list-9">
										<c:out value="${list.email }"/>
									</div>
									<div class="list-10">
										<c:choose>
											<c:when test="${list.admin_ny eq 1}">Y</c:when>
											<c:otherwise>N</c:otherwise>
										</c:choose>
									</div>
									<div class="list-11">
										${fn:substring(list.reg_date,0,10)}
<%-- 										<c:out value=""/> --%>
<%-- 										<fmt:formatDate value="${list.reg_date}" pattern="yy-MM-dd HH:mm:ss"/> --%>
									</div>
									<div class="list-12">
										<fmt:formatDate value="${list.del_date}" pattern="yy-MM-dd HH:mm:ss"/>
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
<!--   리스트 넣는곳   -->
		</div>
	</div>
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
	
		var goUrlView = "/member/memberView";
		var goUrlList = "/member/memberList";
		var goUrlReg = "/member/memberReg";
		
		
		var form = $("form[name=memberList]");
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