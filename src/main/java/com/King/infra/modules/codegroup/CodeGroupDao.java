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


	public List<CodeGroup> selectListDao(codeGroupVo vo) {
		return sqlSession.selectList(namespace + ".selectListMap", vo);

	}
	public int insert(CodeGroup dto) {
		
		return sqlSession.insert(namespace + ".insert", dto);
	}
}
