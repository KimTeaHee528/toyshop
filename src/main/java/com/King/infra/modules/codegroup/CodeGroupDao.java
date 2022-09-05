package com.King.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.King.infra.modules.codegroup.CodeGroupMapperIN";

	public List<CodeGroup> selectListDao0(codeGroupVo vo) {
		return sqlSession.selectList(namespace + ".selectListMap0", vo);
	}
	public List<CodeGroup> selectListDao(codeGroupVo vo) {
		
		if (vo.getSh_div()==1) {
			return sqlSession.selectList(namespace + ".selectListMap", vo);
		}else if (vo.getSh_div()==2) {
			return sqlSession.selectList(namespace + ".selectListMapEn", vo);
		}else {
			return sqlSession.selectList(namespace + ".selectListMap0", vo);
		}
	}
}
