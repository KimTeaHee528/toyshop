package com.King.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping(value = "/member/")
public class memberController {
	@Autowired
	MemberServiceImpl service;


	// 리스트 페이지
	@RequestMapping(value = "memberList")
	public String memberList(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectListService(vo);
		model.addAttribute("list", list);
				
		System.out.println("vo.getSh_div()"+vo.getSh_div());
		return "infra/member/xdmin/memberList";
	}	
	
	
	// 폼 뷰
	@RequestMapping(value = "memberView")
//	public String memberView(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
	public String memberView(Model model,MemberVo vo) throws Exception {
		vo.setMemberFormMode(0);
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/member/xdmin/memberForm";
	}	
	
	// 유저 회원가입
	@RequestMapping(value = "memberRegUser")
	public String memberRegUser() throws Exception {
		
		return "infra/member/user/memberReg";
	}	
	
	@ResponseBody
	@RequestMapping(value = "checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.selectDuplicate(dto);
		if (result > 0) {
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	// 로그인
	@RequestMapping(value = "memberLogin")
	public String memberLogin() throws Exception {
		
		return "infra/member/user/login";
	}	
	
	// 유저 회원정보
	@RequestMapping(value = "memberFormUser")
	public String memberFormUser() throws Exception {
		
		return "infra/member/user/memberFormUser";
	}	
	

}
