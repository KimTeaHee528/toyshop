package com.King.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectListService(codeGroupVo vo) throws Exception; 
	public int insert(CodeGroup dto) throws Exception; 
	public CodeGroup selectOne(codeGroupVo vo) throws Exception; 
	public int update(CodeGroup dto) throws Exception; 
}
