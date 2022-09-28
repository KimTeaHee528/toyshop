package com.King.infra.modules.member;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.King.infra.common.utill.UtillSecurity;



@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectListService(MemberVo vo) throws Exception {
		
//		vo.setSh_start_date(vo.getSh_start_date() + " 00:00:00");
		vo.setSh_end_date(vo.getSh_end_date() + " 23:59:59");
		return dao.selectListDao(vo);
	}
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public int selectDuplicate(Member dto) throws Exception {
		return dao.selectDuplicate(dto);
	}
	@Override
	public int insertOne(Member dto) throws Exception {
		return dao.insertOne(dto);
	}
	
	// PW암호화 및 ID/PW확인
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setPw(UtillSecurity.encryptSha256(dto.getPw()));
		return dao.selectLogin(dto);
	}
}
