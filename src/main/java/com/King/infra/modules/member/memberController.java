package com.King.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/member/")
public class memberController {
	@Autowired
	MemberServiceImpl service;


	// 리스트 페이지
	@RequestMapping(value = "memberList")
	public String codeGroupList(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectListService(vo);
		model.addAttribute("list", list);
				
		return "infra/member/xdmin/memberList";
	}	
	


}
