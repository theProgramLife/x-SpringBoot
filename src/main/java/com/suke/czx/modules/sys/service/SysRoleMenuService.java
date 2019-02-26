package com.suke.czx.modules.sys.service;

import java.math.BigDecimal;
import java.util.List;



/**
 * 角色与菜单对应关系
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年9月18日 上午9:42:30
 */
public interface SysRoleMenuService {
	
	void saveOrUpdate(BigDecimal roleId, List<BigDecimal> menuIdList);
	
	/**
	 * 根据角色ID，获取菜单ID列表
	 */
	List<BigDecimal> queryMenuIdList(BigDecimal roleId);
	
}
