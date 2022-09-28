package com.King.infra.modules.member;

import java.util.List;

public interface MemberService {
	public List<Member> selectListService(MemberVo vo) throws Exception; 
	public int selectOneCount(MemberVo vo) throws Exception; 
	public Member selectOne(MemberVo vo) throws Exception; 
	public int selectDuplicate(Member dto) throws Exception; 
	public int insertOne(Member dto) throws Exception; 
	
}
