package com.King.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	@Autowired
	CodeServiceImpl service;


	@RequestMapping(value = "codeList")
	public String codeList(Model model,@ModelAttribute("vo") codeVo vo) throws Exception {

		System.out.println("vo.getSh_val()" + vo.getSh_val());
		System.out.println("vo.getSh_div()" + vo.getSh_div());
		System.out.println("vo.getSh_use_ny()" + vo.getSh_use_ny());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/code/xdmin/codeList";
	}

	
	@RequestMapping(value = "codeRegForm")
	public String codeRegForm(Model model, codeVo vo) throws Exception {

		
		List<Code> list = service.selectCcgName(vo);
		vo.setCcFormMode("1");
		model.addAttribute("list", list);
		return "infra/code/xdmin/codeRegForm";
	}
	
	@RequestMapping(value = "codeRegInst")
	public String codeRegInst(Model model, codeVo vo) throws Exception {
		
		List<Code> list = service.selectCcgName(vo);
		model.addAttribute("list", list);
		System.out.println(vo.getCr_ccg_seq());
		int result = service.insert(vo);
		System.out.println(result);
		return "redirect:/code/codeList";
	}
	
	
	

	@RequestMapping(value = "codeView")
	public String codeView(Model model, @ModelAttribute("vo") codeVo vo) throws Exception {
		
		Code item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/code/xdmin/codeRegForm";
	}
	
	

}


