package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.ContractInfoDAO;
import com.ict.erp.service.ContractInfoService;
import com.ict.erp.vo.ContractInfo;

@Service("ContractInfoService")
public class ContractInfoServiceImpl implements ContractInfoService{
	
	@Autowired
	private ContractInfoDAO ctidao;
	
	@Override
	public List<ContractInfo> getContractInfoList(ContractInfo cti) {
		return ctidao.selectContractInfoList(cti);
	}

	@Override
	public ContractInfo getContractInfo(ContractInfo cti) {
		return ctidao.selectContractInfo(cti);
	}

	@Override
	public int putContractInfo(ContractInfo cti) {
		return ctidao.insertContractInfo(cti);
	}

	@Override
	public int setContractInfo(ContractInfo cti) {
		return ctidao.updateContractInfo(cti);
	}

	@Override
	public int removeContractInfo(ContractInfo cti) {
		return ctidao.deleteContractInfo(cti);
	}

}
