package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Component;

@Component
@Alias("Cti")
public class ContractInfo {
	private Integer cont_num;
	private Integer ui_num;
	private Integer crr_num;
	private Integer pjh_num;
	private String cont_credat;
	private String cont_text;
	public Integer getCont_num() {
		return cont_num;
	}
	public void setCont_num(Integer cont_num) {
		this.cont_num = cont_num;
	}
	public Integer getUi_num() {
		return ui_num;
	}
	public void setUi_num(Integer ui_num) {
		this.ui_num = ui_num;
	}
	public Integer getCrr_num() {
		return crr_num;
	}
	public void setCrr_num(Integer crr_num) {
		this.crr_num = crr_num;
	}
	public Integer getPjh_num() {
		return pjh_num;
	}
	public void setPjh_num(Integer pjh_num) {
		this.pjh_num = pjh_num;
	}
	public String getCont_credat() {
		return cont_credat;
	}
	public void setCont_credat(String cont_credat) {
		this.cont_credat = cont_credat;
	}
	public String getCont_text() {
		return cont_text;
	}
	public void setCont_text(String cont_text) {
		this.cont_text = cont_text;
	}
	@Override
	public String toString() {
		return "ContractInfo [cont_num=" + cont_num + ", ui_num=" + ui_num + ", crr_num=" + crr_num + ", pjh_num="
				+ pjh_num + ", cont_credat=" + cont_credat + ", cont_text=" + cont_text + "]";
	}
	public ContractInfo(Integer cont_num, Integer ui_num, Integer crr_num, Integer pjh_num, String cont_credat,
			String cont_text) {
		super();
		this.cont_num = cont_num;
		this.ui_num = ui_num;
		this.crr_num = crr_num;
		this.pjh_num = pjh_num;
		this.cont_credat = cont_credat;
		this.cont_text = cont_text;
	}
	
	public ContractInfo() {}
}
