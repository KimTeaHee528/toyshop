package com.King.infra.modules.game;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/game/")
public class gameController {

	// 리스트 페이지
	@RequestMapping(value = "test")
	public String test() throws Exception {
		System.out.println("asfasdfsadfasdfasdfasdfasdfasdfs");
		return "infra/game/test";
	}	
}