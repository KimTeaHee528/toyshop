package com.King.infra.modules.code;

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


	public List<Code> selectList(codeVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

	public List<Code> selectCcgName(codeVo vo) {
		return sqlSession.selectList(namespace + ".selectCcgName", vo);
	}
	public int insert(codeVo vo) {
		
		return sqlSession.insert(namespace + ".insert", vo);
	}
	
	public Code selectOne(codeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
	
	
}
