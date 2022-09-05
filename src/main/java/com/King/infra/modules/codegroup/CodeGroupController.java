package com.King.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;
	
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, codeGroupVo vo) throws Exception {
		
		
		System.out.println("vo.getsh_ccg_name_ko()" + vo.getSh_ccg_name());
		System.out.println("vo.getsh_Seq()" + vo.getSh_seq());
		System.out.println("vo.getsh_div()" + vo.getSh_div());
		
		List<CodeGroup> list = service.selectListService0(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}

	@RequestMapping(value = "codeGroupListRe")
	public String codeGroupListRe(Model model, codeGroupVo vo) throws Exception {

		
		System.out.println("vo.getsh_ccg_name_ko()" + vo.getSh_ccg_name());
		System.out.println("vo.getsh_Seq()" + vo.getSh_seq());
		System.out.println("vo.getsh_div()" + vo.getSh_div());
		
		List<CodeGroup> list = service.selectListService(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}	

}
