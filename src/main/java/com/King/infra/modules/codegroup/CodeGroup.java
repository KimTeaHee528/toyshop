package com.King.infra.modules.codegroup;

import java.util.Date;

import lombok.Data;

@Data
public class CodeGroup {
	private String seq;
	private String code_group_name;
	private String code_en_name;
	private String use_ny;
	private Date reg_date;
	private Date mod_date;
	private Integer cnt;

}