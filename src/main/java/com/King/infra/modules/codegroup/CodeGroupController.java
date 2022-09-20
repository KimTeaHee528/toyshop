package com.King.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;

	
	
	// 페이지 유지 
	public void setSearchAndPaging(codeGroupVo vo) throws Exception {
		
		vo.setSh_date_rm(vo.getSh_date_rm() == null ? null : vo.getSh_date_rm());
		vo.setSh_use_ny(vo.getSh_use_ny() == null ? null : vo.getSh_use_ny());
//		vo.setSh_start_date(vo.getSh_start_date() == null || vo.getSh_start_date() == "" ? null : UtilDateTime.add00TimeString(vo.getSh_start_date()));
//		vo.setSh_end_date(vo.getSh_end_date() == null || vo.getSh_end_date() == "" ? null : UtilDateTime.add59TimeString(vo.getSh_end_date()));\
		vo.setParamsPaging(service.selectOneCount(vo));
	}	
	
	
	
	
	// 리스트 페이지
	@GetMapping(value = "codeGroupList")
	public String codeGroupList(Model model,@ModelAttribute("vo") codeGroupVo vo) throws Exception {
		
		setSearchAndPaging(vo);
//		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<CodeGroup> list = service.selectListService(vo);
		model.addAttribute("list", list);
				
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	
	
	//코드그룹 뷰 페이지
	@GetMapping(value = "codeGroupView")
	public String codeGroupView(Model model,@ModelAttribute("vo") codeGroupVo vo) throws Exception {
		vo.setCcgFormMode(0);
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	// 코드그룹 등록 페이지
	@GetMapping(value = "codeGroupReg")
	public String codeGroupReg(Model model,@ModelAttribute("vo") codeGroupVo vo) throws Exception {
		vo.setCcgFormMode(1);
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	//코드그룹 수정페이지 페이지
	@GetMapping(value = "codeGroupMod")
	public String codeGroupMod(Model model,@ModelAttribute("vo") codeGroupVo vo) throws Exception {
		
		vo.setCcgFormMode(2);
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/codegroup/xdmin/codeGroupForm";
	}	 
	
	// 코드그룹 인서트
	@GetMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto, codeGroupVo vo, RedirectAttributes RedirectAttributes) throws Exception {
		int result = service.insert(dto);
		System.out.println(result);
		vo.setLi_seq(dto.getSeq());
		RedirectAttributes.addFlashAttribute("vo", vo);
		
//		return "redirect:/codeGroup/codeGroupList";
		return "redirect:/codeGroup/codeGroupView";
	}	
	
	//코드그룹 업데이트
	@GetMapping(value = "codeGroupUp")
	public String codeGroupUp(CodeGroup dto, codeGroupVo vo, RedirectAttributes RedirectAttributes) throws Exception {
		service.update(dto);
		vo.setLi_seq(dto.getSeq());
		RedirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/codeGroup/codeGroupView";
//		return "redirect:/codeGroup/codeGroupList";
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

