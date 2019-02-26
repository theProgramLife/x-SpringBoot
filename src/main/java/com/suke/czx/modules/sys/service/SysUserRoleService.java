package com.suke.czx.modules.sys.service;

import java.math.BigDecimal;
import java.util.List;



/**
 * 用户与角色对应关系
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年9月18日 上午9:43:24
 */
public interface SysUserRoleService {
	
	void saveOrUpdate(BigDecimal userId, List<BigDecimal> roleIdList);
	
	/**
	 * 根据用户ID，获取角色ID列表
	 */
	List<BigDecimal> queryRoleIdList(BigDecimal userId);
	
	void delete(BigDecimal userId);
}
