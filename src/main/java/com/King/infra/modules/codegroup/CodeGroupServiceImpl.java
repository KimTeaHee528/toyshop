package com.King.infra.modules.codegroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	@Autowired
	CodeGroupDao dao;

	@Override
	public List<CodeGroup> selectListService(codeGroupVo vo) throws Exception {
		
		vo.setSh_start_date(vo.getSh_start_date() + " 00:00:00");
		vo.setSh_end_date(vo.getSh_end_date() + " 23:59:59");
		return dao.selectListDao(vo);
	}

	@Override
	public int insert(CodeGroup dto) throws Exception {
		
		return dao.insert(dto);
	}	
	
	@Override
	public CodeGroup selectOne(codeGroupVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public int selectOneCount(codeGroupVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int update(CodeGroup dto) throws Exception {
		return dao.update(dto);
	}
	
}
