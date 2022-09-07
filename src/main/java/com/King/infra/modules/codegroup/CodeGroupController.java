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

		List<CodeGroup> list = service.selectListService(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	@RequestMapping(value = "codeGroupListR")
	public String codeGroupListR(Model model, codeGroupVo vo) throws Exception {

		List<CodeGroup> list = service.selectListService(vo);
		model.addAttribute("list", list);
		
		return "redirect:/codeGroup/codeGroupList";
	}	
	
	@RequestMapping(value = "codeGroupReg")
	public String codeGroupReg() throws Exception {
		return "infra/codegroup/xdmin/codeGroupRegForm";
	}
	
	
	
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println(result);
		return "redirect:/codeGroup/codeGroupList";
	}	
	
	
	
//	@RequestMapping(value = "codeGroupForm")
//	public String codeGroupForm() throws Exception {
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}	
//	@RequestMapping(value = "codeGroupMod")
//	public String codeGroupMod() throws Exception {
//		return "infra/codegroup/xdmin/codeGroupMod";
//	}
}
