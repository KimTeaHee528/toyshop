package com.King.infra.modules.member;

import java.util.Date;

public class member {
	
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
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(String ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	public String getCode_group_name() {
		return code_group_name;
	}
	public void setCode_group_name(String code_group_name) {
		this.code_group_name = code_group_name;
	}
	public String getCode_name() {
		return code_name;
	}
	public void setCode_name(String code_name) {
		this.code_name = code_name;
	}
	public String getCode_name_en() {
		return code_name_en;
	}
	public void setCode_name_en(String code_name_en) {
		this.code_name_en = code_name_en;
	}
	public Integer getUse_ny() {
		return use_ny;
	}
	public void setUse_ny(Integer use_ny) {
		this.use_ny = use_ny;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
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
