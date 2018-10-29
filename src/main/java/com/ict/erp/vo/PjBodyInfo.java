package com.ict.erp.vo;

public class PjBodyInfo {
	private Integer pjb_num;
	private Integer pjh_num;
	private Integer pjb_level;
	private String pjb_title;
	private String pjb_text;
	public Integer getPjb_num() {
		return pjb_num;
	}
	public void setPjb_num(Integer pjb_num) {
		this.pjb_num = pjb_num;
	}
	public Integer getPjh_num() {
		return pjh_num;
	}
	public void setPjh_num(Integer pjh_num) {
		this.pjh_num = pjh_num;
	}
	public Integer getPjb_level() {
		return pjb_level;
	}
	public void setPjb_level(Integer pjb_level) {
		this.pjb_level = pjb_level;
	}
	public String getPjb_title() {
		return pjb_title;
	}
	public void setPjb_title(String pjb_title) {
		this.pjb_title = pjb_title;
	}
	public String getPjb_text() {
		return pjb_text;
	}
	public void setPjb_text(String pjb_text) {
		this.pjb_text = pjb_text;
	}
	@Override
	public String toString() {
		return "PjBodyInfo [pjb_num=" + pjb_num + ", pjh_num=" + pjh_num + ", pjb_level=" + pjb_level + ", pjb_title="
				+ pjb_title + ", pjb_text=" + pjb_text + "]";
	}
	public PjBodyInfo(Integer pjb_num, Integer pjh_num, Integer pjb_level, String pjb_title, String pjb_text) {
		super();
		this.pjb_num = pjb_num;
		this.pjh_num = pjh_num;
		this.pjb_level = pjb_level;
		this.pjb_title = pjb_title;
		this.pjb_text = pjb_text;
	}
	
	public PjBodyInfo() {}
}
