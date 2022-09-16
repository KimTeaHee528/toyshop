<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="sh_use_ny" value="<c:out value="${vo.sh_use_ny}"/>"/>
<input type="hidden" name="sh_date_rm" value="<c:out value="${vo.sh_date_rm}"/>"/>

<input type="hidden" name="sh_start_date" value="<c:out value="${vo.sh_start_date}"/>"/>
<input type="hidden" name="sh_end_date" value="<c:out value="${vo.sh_end_date}"/>"/>

<input type="hidden" name="sh_div" value="<c:out value="${vo.sh_div}"/>"/>
<input type="hidden" name="sh_val" value="<c:out value="${vo.sh_val}"/>"/>
<input type="hidden" name="sh_seq" value="<c:out value="${vo.sh_seq}"/>"/>

<%-- 						<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>"> --%>
<!-- 						<input type="hidden" name="checkboxSeqArray"> -->