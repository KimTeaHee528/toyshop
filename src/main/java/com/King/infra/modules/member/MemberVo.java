package com.King.infra.modules.member;

import com.King.infra.common.base.BaseVo;

import lombok.Data;

@Data
public class MemberVo extends BaseVo {

	private Integer sh_admin_ny;
	private Integer sh_date_option;
	private String sh_start_date;
	private String sh_end_date;
	private String sh_val;
	private Integer sh_div;
	private Integer memberFormMode;
	private String li_seq; // 리스트에서 클릭시 보여줄 항목 시퀀스 셀렉트원에서 사용
}
