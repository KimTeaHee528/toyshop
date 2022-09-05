package com.King.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	@Autowired
	CodeServiceImpl service;


	@RequestMapping(value = "codeList")
	public String codeList(Model model, codeVo vo) throws Exception {

		System.out.println("vo.getSh_val()" + vo.getSh_val());
		System.out.println("vo.getSh_div()" + vo.getSh_div());
		System.out.println("vo.getSh_use_ny()" + vo.getSh_use_ny());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/code/xdmin/codeList";
	}

}
