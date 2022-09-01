package com.King.infra.modules.codegroup;

import java.util.Date;

public class CodeGroup {

	private Integer seq;
	private String code_group_name;
	private String code_en_name;
	private Integer use_ny;
	private Date reg_date;
	private Date mod_date;
	private Integer cnt;
//======================================
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getCode_group_name() {
		return code_group_name;
	}
	public void setCode_group_name(String code_group_name) {
		this.code_group_name = code_group_name;
	}
	public Integer getUse_ny() {
		return use_ny;
	}
	public void setUse_ny(Integer use_ny) {
		this.use_ny = use_ny;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getCode_en_name() {
		return code_en_name;
	}
	public void setCode_en_name(String code_en_name) {
		this.code_en_name = code_en_name;
	}
	public Date getMod_date() {
		return mod_date;
	}
	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	
}
