package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.ContractInfo;

public interface ContractInfoDAO {
	public List<ContractInfo> selectContractInfoList(ContractInfo cti);
	public ContractInfo selectContractInfo(ContractInfo cti);
	public int insertContractInfo(ContractInfo cti);
	public int updateContractInfo(ContractInfo cti);
	public int deleteContractInfo(ContractInfo cti);
}
