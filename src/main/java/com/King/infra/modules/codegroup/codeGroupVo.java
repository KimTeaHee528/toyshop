package com.King.infra.modules.codegroup;

import com.King.infra.common.base.BaseVo;



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
	
	public String getLi_seq() {
		return li_seq;
	}
	public void setLi_seq(String li_seq) {
		this.li_seq = li_seq;
	}
	public String getSh_seq() {
		return sh_seq;
	}
	public void setSh_seq(String sh_seq) {
		this.sh_seq = sh_seq;
	}
	public Integer getSh_div() {
		return sh_div;
	}
	public void setSh_div(Integer sh_div) {
		this.sh_div = sh_div;
	}
	public String getSh_val() {
		return sh_val;
	}
	public void setSh_val(String sh_val) {
		this.sh_val = sh_val;
	}
	public Integer getSh_use_ny() {
		return sh_use_ny;
	}
	public void setSh_use_ny(Integer sh_use_ny) {
		this.sh_use_ny = sh_use_ny;
	}
	public String getSh_mod_date() {
		return sh_mod_date;
	}
	public void setSh_mod_date(String sh_mod_date) {
		this.sh_mod_date = sh_mod_date;
	}
	public String getSh_start_date() {
		return sh_start_date;
	}
	public void setSh_start_date(String sh_start_date) {
		this.sh_start_date = sh_start_date;
	}
	public String getSh_end_date() {
		return sh_end_date;
	}
	public void setSh_end_date(String sh_end_date) {
		this.sh_end_date = sh_end_date;
	}
	public Integer getSh_date_rm() {
		return sh_date_rm;
	}
	public void setSh_date_rm(Integer sh_date_rm) {
		this.sh_date_rm = sh_date_rm;
	}
	public Integer getLso() {
		return lso;
	}
	public void setLso(Integer lso) {
		this.lso = lso;
	}
	public Integer getCcgFormMode() {
		return ccgFormMode;
	}
	public void setCcgFormMode(Integer ccgFormMode) {
		this.ccgFormMode = ccgFormMode;
	}
	public void setParamsPaging(CodeGroup selectOne) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
}