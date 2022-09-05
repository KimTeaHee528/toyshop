package com.King.infra.modules.code;

import java.util.List;


public interface CodeService {
	public List<Code> selectList(codeVo vo) throws Exception; 
}
