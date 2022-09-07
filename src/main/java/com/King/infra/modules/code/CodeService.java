package com.King.infra.modules.code;

import java.util.List;



public interface CodeService {
	public List<Code> selectList(codeVo vo) throws Exception; 
	public List<Code> selectCcgName(codeVo vo) throws Exception; 
	public int insert(codeVo vo) throws Exception;
}
