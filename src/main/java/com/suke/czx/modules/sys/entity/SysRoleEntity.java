package com.suke.czx.modules.sys.entity;


import org.hibernate.validator.constraints.NotBlank;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 角色
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年9月18日 上午9:27:38
 */
public class SysRoleEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 角色ID
	 */
	private BigDecimal roleId;

	/**
	 * 角色名称
	 */
	@NotBlank(message="角色名称不能为空")
	private String roleName;

	/**
	 * 备注
	 */
	private String remark;
	
	/**
	 * 创建者ID
	 */
	private BigDecimal createUserId;
	
	private List<BigDecimal> menuIdList;
	
	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 设置：
	 * @param roleId 
	 */
	public void setRoleId(BigDecimal roleId) {
		this.roleId = roleId;
	}

	/**
	 * 获取：
	 * @return BigDecimal
	 */
	public BigDecimal getRoleId() {
		return roleId;
	}
	
	/**
	 * 设置：角色名称
	 * @param roleName 角色名称
	 */
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	/**
	 * 获取：角色名称
	 * @return String
	 */
	public String getRoleName() {
		return roleName;
	}
	
	/**
	 * 设置：备注
	 * @param remark 备注
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/**
	 * 获取：备注
	 * @return String
	 */
	public String getRemark() {
		return remark;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public List<BigDecimal> getMenuIdList() {
		return menuIdList;
	}

	public void setMenuIdList(List<BigDecimal> menuIdList) {
		this.menuIdList = menuIdList;
	}

	public BigDecimal getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(BigDecimal createUserId) {
		this.createUserId = createUserId;
	}
	
}
