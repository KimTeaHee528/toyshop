package com.King.infra.modules.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/product/")
public class productController {

	// 리스트 페이지
	@RequestMapping(value = "productListUser")
	public String productListUser() throws Exception {
		return "infra/product/user/productList";
	}	
	
	
	// 디테일
	@RequestMapping(value = "productDetailUser")
	public String productDetailUser() throws Exception {
		return "infra/product/user/productDetail";
	}	


}
