package com.ict.erp.service;

import java.util.List;

import com.ict.erp.vo.ContractInfo;

public interface ContractInfoService {
	public List<ContractInfo> getContractInfoList(ContractInfo cti);
	public ContractInfo getContractInfo(ContractInfo cti);
	public int putContractInfo(ContractInfo cti);
	public int setContractInfo(ContractInfo cti);
	public int removeContractInfo(ContractInfo cti);
}
