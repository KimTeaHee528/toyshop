package com.King.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;

	
	// 리스트 페이지
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model,@ModelAttribute("vo") codeGroupVo vo) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<CodeGroup> list = service.selectListService(vo);
		model.addAttribute("list", list);
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	
	
	//코드그룹 뷰 페이지
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model,@ModelAttribute("vo") codeGroupVo vo) throws Exception {
		
		vo.setCcgFormMode(0);
		
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	
	// 코드그룹 등록 페이지
	@RequestMapping(value = "codeGroupReg")
	public String codeGroupReg(Model model,@ModelAttribute("vo") codeGroupVo vo) throws Exception {

		vo.setCcgFormMode(1);
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	// 코드그룹 인서트
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println(result);
		return "redirect:/codeGroup/codeGroupList";
	}	
	
	
	//코드그룹 수정페이지 페이지
	@RequestMapping(value = "codeGroupMod")
	public String codeGroupMod(Model model,@ModelAttribute("vo") codeGroupVo vo) throws Exception {
		
		vo.setCcgFormMode(2);
		
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/codegroup/xdmin/codeGroupForm";
	}	 
	
	//코드그룹 업데이트
	@RequestMapping(value = "codeGroupUp")
	public String codeGroupUp(CodeGroup dto) throws Exception {
		
		service.update(dto);
		return "redirect:/codeGroup/codeGroupList";
	}	
	
	
//	
//	@RequestMapping(value="codeGroupUp")
//	public String codeGroupUp(codeGroupVo vo, CodeGroup dto, RedirectAttributes RedirectAttributes) throws Exception {
//		service.update(dto);
//		RedirectAttributes.addFlashAttribute("vo", vo);
//		
//		return "redirect:/codeGroup/codeGroupList";
//		
//		
//	}
	

}

