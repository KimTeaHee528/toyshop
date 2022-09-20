package com.King.infra.modules.code;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
//	
//	private String seq;
//	private String name_ko;
//	private String name_en;
//	private String use_ny;
//	private Date reg_date;
//	private Date mod_date;
//	private String del_ny;
//	private String comment;
//	private String tb_ccg_seq;
//	private String sort;
//	private Integer cnt;
//	
	
	
}
