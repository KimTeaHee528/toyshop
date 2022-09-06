package com.King.infra.modules.code;

import java.util.Date;

import lombok.Data;


@Data
public class Code {
	
	private String seq;
	private String ccg_seq;
	private String code_group_name;
	private String code_name;
	private String code_name_en;
	private Integer use_ny;
	private Integer sort;
	private Date reg_date;
	private Date mod_date;
	private Integer cnt;
	
}
