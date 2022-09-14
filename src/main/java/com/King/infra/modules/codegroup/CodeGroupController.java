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
	
	
	
	// 코드그룹 등록 페이지
	@RequestMapping(value = "codeGroupReg")
	public String codeGroupReg(Model model, codeGroupVo vo) throws Exception {
		System.out.println("등록폼====================");

		CodeGroup item = service.selectOne(vo);
		vo.setCcgFormMode(1);
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
	

	
	
	
	//코드그룹 뷰 페이지
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model, codeGroupVo vo) throws Exception {
		
		System.out.println("뷰폼====================");
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	
	
	//코드그룹 수정페이지 페이지
	@RequestMapping(value = "codeGroupMod")
	public String codeGroupMod(Model model, codeGroupVo vo) throws Exception {
		
		System.out.println("수정폼====================");
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println(item.getSeq());
		System.out.println(item.getCode_group_name());
		System.out.println(item.getCode_en_name());
		System.out.println(item.getUse_ny());
		System.out.println(item.getReg_date());
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}	 
	
	//코드그룹 업데이트
	@RequestMapping(value = "codeGroupUp")
	public String codeGroupUp(CodeGroup dto) throws Exception {
		
		int result = service.update(dto);
		return "redirect:/codeGroup/codeGroupList";
	}	
	
//	
//	
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
	
	
	
	
//	
//// 업데이트
//	@RequestMapping(value = "codeGroupUp")
//	public String codeGroupUp(CodeGroup dto) throws Exception {
//		
//		System.out.println("디티오~~~~~"+dto.getCode_group_name());
//		int result = service.update(dto);
//		System.out.println("result" + result);
//		return "redirect:/codeGroup/codeGroupList";
//	}	
//	
	
	
//	@RequestMapping(value = "codeGroupForm")
//	public String codeGroupForm() throws Exception {
//		return "infra/codegroup/xdmin/codeGroupForm";
//	}	
//	@RequestMapping(value = "codeGroupMod")
//	public String codeGroupMod() throws Exception {
//		return "infra/codegroup/xdmin/codeGroupMod";
//	}
}

