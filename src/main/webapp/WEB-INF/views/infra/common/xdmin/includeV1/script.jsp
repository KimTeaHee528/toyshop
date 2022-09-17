<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


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
	

	<script type="text/javascript">

	var goUrlView = "/codeGroup/codeGroupView";
	var goUrlUpdt = "/codeGroup/codeGroupUp";	
	var goUrlInst = "/codeGroup/codeGroupInst";	
	var goUrlList = "/codeGroup/codeGroupList";	
	var goUrlmod = "/codeGroup/codeGroupMod";	
	
	
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
		form_back.attr("action", goUrlList).submit();
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