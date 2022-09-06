package com.King.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectListService(codeGroupVo vo) throws Exception; 
	public int insert(CodeGroup dto) throws Exception; 
}
