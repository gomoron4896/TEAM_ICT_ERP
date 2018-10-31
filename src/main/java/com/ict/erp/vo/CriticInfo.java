package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Component;

@Component
@Alias("Crt")
public class CriticInfo {
	private Integer crt_num;
	private Integer pjh_num;
	private Integer ui_num;
	private String crt_credat;
	private String crt_title;
	private String crt_text;
	private double crt_profitscore;
	private double crt_stablescore;
	private double crt_originscore;
	public Integer getCrt_num() {
		return crt_num;
	}
	public void setCrt_num(Integer crt_num) {
		this.crt_num = crt_num;
	}
	public Integer getPjh_num() {
		return pjh_num;
	}
	public void setPjh_num(Integer pjh_num) {
		this.pjh_num = pjh_num;
	}
	public Integer getUi_num() {
		return ui_num;
	}
	public void setUi_num(Integer ui_num) {
		this.ui_num = ui_num;
	}
	public String getCrt_credat() {
		return crt_credat;
	}
	public void setCrt_credat(String crt_credat) {
		this.crt_credat = crt_credat;
	}
	public String getCrt_title() {
		return crt_title;
	}
	public void setCrt_title(String crt_title) {
		this.crt_title = crt_title;
	}
	public String getCrt_text() {
		return crt_text;
	}
	public void setCrt_text(String crt_text) {
		this.crt_text = crt_text;
	}
	public double getCrt_profitscore() {
		return crt_profitscore;
	}
	public void setCrt_profitscore(double crt_profitscore) {
		this.crt_profitscore = crt_profitscore;
	}
	public double getCrt_stablescore() {
		return crt_stablescore;
	}
	public void setCrt_stablescore(double crt_stablescore) {
		this.crt_stablescore = crt_stablescore;
	}
	public double getCrt_originscore() {
		return crt_originscore;
	}
	public void setCrt_originscore(double crt_originscore) {
		this.crt_originscore = crt_originscore;
	}
	@Override
	public String toString() {
		return "CriticInfo [crt_num=" + crt_num + ", pjh_num=" + pjh_num + ", ui_num=" + ui_num + ", crt_credat="
				+ crt_credat + ", crt_title=" + crt_title + ", crt_text=" + crt_text + ", crt_profitscore="
				+ crt_profitscore + ", crt_stablescore=" + crt_stablescore + ", crt_originscore=" + crt_originscore
				+ "]";
	}
	public CriticInfo(Integer crt_num, Integer pjh_num, Integer ui_num, String crt_credat, String crt_title,
			String crt_text, double crt_profitscore, double crt_stablescore, double crt_originscore) {
		super();
		this.crt_num = crt_num;
		this.pjh_num = pjh_num;
		this.ui_num = ui_num;
		this.crt_credat = crt_credat;
		this.crt_title = crt_title;
		this.crt_text = crt_text;
		this.crt_profitscore = crt_profitscore;
		this.crt_stablescore = crt_stablescore;
		this.crt_originscore = crt_originscore;
	}
	
	public CriticInfo() {}
}
