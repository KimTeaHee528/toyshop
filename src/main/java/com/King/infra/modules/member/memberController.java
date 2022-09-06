package com.King.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/member/")
public class memberController {


	@RequestMapping(value = "memberList")
	public String codeList() throws Exception {




		return "infra/member/xdmin/memberList";
	}

}
