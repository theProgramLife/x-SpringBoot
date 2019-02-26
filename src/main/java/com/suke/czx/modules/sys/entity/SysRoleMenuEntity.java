package com.suke.czx.modules.sys.entity;


import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 角色与菜单对应关系
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年9月18日 上午9:28:13
 */
public class SysRoleMenuEntity implements Serializable {
	private static final Long serialVersionUID = 1L;
	
	private BigDecimal id;

	/**
	 * 角色ID
	 */
	private BigDecimal roleId;

	/**
	 * 菜单ID
	 */
	private BigDecimal menuId;

	/**
	 * 设置：
	 * @param id 
	 */
	public void setId(BigDecimal id) {
		this.id = id;
	}

	/**
	 * 获取：
	 * @return BigDecimal
	 */
	public BigDecimal getId() {
		return id;
	}
	
	/**
	 * 设置：角色ID
	 * @param roleId 角色ID
	 */
	public void setRoleId(BigDecimal roleId) {
		this.roleId = roleId;
	}

	/**
	 * 获取：角色ID
	 * @return BigDecimal
	 */
	public BigDecimal getRoleId() {
		return roleId;
	}
	
	/**
	 * 设置：菜单ID
	 * @param menuId 菜单ID
	 */
	public void setMenuId(BigDecimal menuId) {
		this.menuId = menuId;
	}

	/**
	 * 获取：菜单ID
	 * @return BigDecimal
	 */
	public BigDecimal getMenuId() {
		return menuId;
	}
	
}
