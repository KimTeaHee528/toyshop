package com.King.infra.modules.member;

import com.King.infra.common.base.BaseVo;


public class MemberVo extends BaseVo {

	private Integer sh_admin_ny;
	private Integer sh_date_option;
	private String sh_start_date;
	private String sh_end_date;
	private String sh_val;
	private Integer sh_div;
	private Integer memberMode;
	
	public Integer getMemberMode() {
		return memberMode;
	}
	public void setMemberMode(Integer memberMode) {
		this.memberMode = memberMode;
	}
	public Integer getSh_admin_ny() {
		return sh_admin_ny;
	}
	public void setSh_admin_ny(Integer sh_admin_ny) {
		this.sh_admin_ny = sh_admin_ny;
	}
	public Integer getSh_date_option() {
		return sh_date_option;
	}
	public void setSh_date_option(Integer sh_date_option) {
		this.sh_date_option = sh_date_option;
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
	public String getSh_val() {
		return sh_val;
	}
	public void setSh_val(String sh_val) {
		this.sh_val = sh_val;
	}
	public Integer getSh_div() {
		return sh_div;
	}
	public void setSh_div(Integer sh_div) {
		this.sh_div = sh_div;
	}
	
}
