package com.King.infra.modules.member;

import lombok.Data;

@Data
public class Member {

	private String seq;
	private String name;
	private String id;
	private String gender;
	private String dob;
	private String zip_code;
	private String address;
	private String address_detail;
	private String tell;
	private String email;
	private String admin_ny;
	private String reg_date;
	private String mod_date;
	private String del_date;
	private String del_ny;
	private String rt; // 중복체크용 (컨트롤러에서 확인)
	
	
	
}
