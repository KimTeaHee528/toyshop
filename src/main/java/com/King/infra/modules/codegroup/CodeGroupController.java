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
		System.out.println("리스트 기본");
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	@RequestMapping(value = "codeGroupListR")
	public String codeGroupListR(Model model, codeGroupVo vo) throws Exception {

		
		
		List<CodeGroup> list = service.selectListService(vo);
		model.addAttribute("list", list);
		model.addAttribute("vo", vo);

		return "infra/codegroup/xdmin/codeGroupList";
//		return "redirect:/codeGroup/codeGroupList";
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
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception {
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}	
	
	//코드그룹 뷰 페이지
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model, codeGroupVo vo) throws Exception {
		
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	//코드그룹 수정페이지 페이지
	@RequestMapping(value = "codeGroupMod")
	public String codeGroupMod(Model model, codeGroupVo vo) throws Exception {
		
		CodeGroup item = service.selectOne(vo);
		System.out.println("codeGroupMod-===========");
		model.addAttribute("item", item);
		
		return "infra/codegroup/xdmin/codeGroupModForm";
	}	 
	
	
	@RequestMapping(value = "codeGroupUp")
	public String codeGroupUp(CodeGroup dto) throws Exception {
		
		System.out.println("디티오~~~~~"+dto.getCode_group_name());
		int result = service.update(dto);
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

