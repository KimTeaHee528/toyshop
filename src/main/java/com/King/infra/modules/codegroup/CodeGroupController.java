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
		
		
		System.out.println("vo.getSh_val()" + vo.getSh_val());
		System.out.println("vo.getsh_Seq()" + vo.getSh_seq());
		System.out.println("vo.getsh_div()" + vo.getSh_div());
		System.out.println("vo.getSh_use_ny()" + vo.getSh_use_ny());
		System.out.println("vo.getSh_date_rm()" + vo.getSh_date_rm());
		System.out.println("vo.getSh_start_date()" + vo.getSh_start_date());
		System.out.println("vo.getSh_end_date()" + vo.getSh_end_date());
		
		
		List<CodeGroup> list = service.selectListService(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}

}
