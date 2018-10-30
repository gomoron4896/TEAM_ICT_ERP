package com.ict.erp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.ContractInfoDAO;
import com.ict.erp.vo.ContractInfo;

@Repository("ContractInfoDAO")
public class ContractInfoDAOImpl implements ContractInfoDAO{

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<ContractInfo> selectContractInfoList(ContractInfo cti) {
		return ss.selectList("SQL.CONTRACTINFO.selectContractInfoList", cti);
	}

	@Override
	public ContractInfo selectContractInfo(ContractInfo cti) {
		return ss.selectOne("SQL.CONTRACTINFO.selectContractInfo", cti);
	}

	@Override
	public int insertContractInfo(ContractInfo cti) {
		return ss.insert("SQL.CONTRACTINFO.insertContractInfoList", cti);
	}

	@Override
	public int updateContractInfo(ContractInfo cti) {
		return ss.update("SQL.CONTRACTINFO.updateContractInfoList", cti);
	}

	@Override
	public int deleteContractInfo(ContractInfo cti) {
		return ss.delete("SQL.CONTRACTINFO.deleteContractInfo", cti);
	}

}
