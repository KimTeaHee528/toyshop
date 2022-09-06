package com.King.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CodeServiceImpl implements CodeService {
	@Autowired
	CodeDao dao;
	

	@Override
	public List<member> selectList(codeVo vo) throws Exception {
		return dao.selectList(vo);
	}
}
