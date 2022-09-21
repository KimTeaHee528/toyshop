package com.King.infra.modules.codegroup;

import com.King.infra.common.base.BaseVo;

import lombok.Data;


@Data
public class codeGroupVo extends BaseVo {

	private String sh_seq;
	private Integer sh_div;
	private String sh_val;
	private Integer sh_use_ny;
	private String sh_mod_date;
	private String sh_start_date;
	private String sh_end_date;
	private Integer sh_date_rm;
	private String li_seq; // 리스트에서 클릭시 보여줄 항목 시퀀스 셀렉트원에서 사용
	private Integer ccgFormMode; // 폼 화면 변경용 컨트롤러에서 사용
	private Integer lso; // 안쓰는 것 같음
	
	
	
}