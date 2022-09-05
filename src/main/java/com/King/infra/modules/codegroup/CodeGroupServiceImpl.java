package com.King.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectListService(codeGroupVo vo) throws Exception {
		return dao.selectListDao(vo);
	}	
	@Override
	public List<CodeGroup> selectListService0(codeGroupVo vo) throws Exception {
		return dao.selectListDao0(vo);
	}



}
