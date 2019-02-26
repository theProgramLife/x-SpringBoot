package com.suke.czx.modules.sys.entity;


import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 用户与角色对应关系
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年9月18日 上午9:28:39
 */
public class SysUserRoleEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private BigDecimal id;

	/**
	 * 用户ID
	 */
	private BigDecimal userId;

	/**
	 * 角色ID
	 */
	private BigDecimal roleId;

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
	 * 设置：用户ID
	 * @param userId 用户ID
	 */
	public void setUserId(BigDecimal userId) {
		this.userId = userId;
	}

	/**
	 * 获取：用户ID
	 * @return BigDecimal
	 */
	public BigDecimal getUserId() {
		return userId;
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
	
}
