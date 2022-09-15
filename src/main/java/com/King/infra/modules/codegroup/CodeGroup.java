package com.King.infra.modules.codegroup;

import java.util.Date;

import lombok.Data;

@Data
public class CodeGroup {
	private String seq;
	private String code_group_name;
//	private String name_ko;
	private String code_en_name;
//	private String name_en;
	private String use_ny;
	private Date reg_date;
	private Date mod_date;
	private Integer cnt;
//	private String del_ny;
	
	
}