package com.King.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.King.infra.modules.code.CodeMapper";


	public List<member> selectList(codeVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

}
