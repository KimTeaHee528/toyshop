package com.King.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	@Autowired
	CodeDao dao;
	

	@Override
	public List<Code> selectList(codeVo vo) throws Exception {
		vo.setSh_start_date(vo.getSh_start_date() + " 00:00:00");
		vo.setSh_end_date(vo.getSh_end_date() + " 23:59:59");
		return dao.selectList(vo);
	}	

	@Override
	public List<Code> selectCcgName(codeVo vo) throws Exception {
		return dao.selectCcgName(vo);
	}
	

	@Override
	public int insert(codeVo vo) throws Exception {
		
		return dao.insert(vo);
	}	
	
	@Override
	public Code selectOne(codeVo vo) throws Exception {
		
		return dao.selectOne(vo);
	}	
}
