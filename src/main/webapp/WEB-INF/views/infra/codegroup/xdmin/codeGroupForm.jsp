<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- jstl s -->
<%@include file="../../common/xdmin/includeV1/jstl.jsp"%>
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
	
	<!-- foot s -->
	<%@include file="../../common/xdmin/includeV1/foot.jsp"%>
	<!-- foot e -->
	
	<!-- script s -->
	<%@include file="../../common/xdmin/includeV1/script.jsp"%>
	<!-- script e -->
</body>
</html>