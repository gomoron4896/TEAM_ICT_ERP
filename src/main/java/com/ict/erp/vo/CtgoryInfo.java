package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Component;

@Component
@Alias("Ci")
public class CtgoryInfo {
	private Integer cate_num;
	private String cate_code;
	private String cate_name;
	private String cate_desc;
	public Integer getCate_num() {
		return cate_num;
	}
	public void setCate_num(Integer cate_num) {
		this.cate_num = cate_num;
	}
	public String getCate_code() {
		return cate_code;
	}
	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	public String getCate_desc() {
		return cate_desc;
	}
	public void setCate_desc(String cate_desc) {
		this.cate_desc = cate_desc;
	}
	@Override
	public String toString() {
		return "CtgoryInfo [cate_num=" + cate_num + ", cate_code=" + cate_code + ", cate_name=" + cate_name
				+ ", cate_desc=" + cate_desc + "]";
	}
	public CtgoryInfo(Integer cate_num, String cate_code, String cate_name, String cate_desc) {
		super();
		this.cate_num = cate_num;
		this.cate_code = cate_code;
		this.cate_name = cate_name;
		this.cate_desc = cate_desc;
	}
	
	public CtgoryInfo() {}
}
