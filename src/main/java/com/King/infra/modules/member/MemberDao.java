package com.King.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.King.infra.modules.member.MemberMapper";


	public List<Member> selectListDao(MemberVo vo) {
//		return sqlSession.selectList(namespace + ".selectList", vo);
		return sqlSession.selectList("com.King.infra.modules.member.MemberMapper.selectList", vo);

	}
	
	
	public int selectOneCount(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
	}
	
	
	public Member selectOne(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectListOne", vo);
		
	}
	
	
	
	
}
