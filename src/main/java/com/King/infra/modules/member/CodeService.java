package com.King.infra.modules.member;

import java.util.List;


public interface CodeService {
	public List<member> selectList(codeVo vo) throws Exception; 
}
