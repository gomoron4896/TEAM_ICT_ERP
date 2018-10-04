package com.ict.erp;

import static org.junit.Assert.assertEquals;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ict.erp.vo.LevelInfo;

/*@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/root-context.xml")
public class Test {
	@Autowired
	private DataSource ds;
	@Autowired
	private SqlSessionFactory ssf;
	@Autowired
	private SqlSession ss;
	private LevelInfo li = null;

	@org.junit.Test
	public void selectTest() {
		List<LevelInfo> list = ss.selectList("SQL.LEVELINFO.selectLevelInfo");
		System.out.println(list);
	}
	
	@org.junit.Test
	public void insertTest() {
		li = new LevelInfo(null,2,"테스트 2","테스트 2");
		assertEquals(ss.insert("SQL.LEVELINFO.insertLevelInfo",li), 1);
	}
	
	@org.junit.Test
	public void updateTest() {
		li = new LevelInfo(21,3,"테스트 3","테스트 3");
		assertEquals(ss.update("SQL.LEVELINFO.updateLevelInfo",li), 1);
	}
	
	@org.junit.Test
	public void deleteTest() {
		li = new LevelInfo(21,null,null,null);
		assertEquals(ss.delete("SQL.LEVELINFO.deleteLevelInfo",li), 1);
	}

}*/
