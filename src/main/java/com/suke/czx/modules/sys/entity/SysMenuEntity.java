package com.suke.czx.modules.sys.entity;


import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * 菜单管理
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年9月18日 上午9:26:39
 */
public class SysMenuEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 菜单ID
	 */
	private BigDecimal menuId;

	/**
	 * 父菜单ID，一级菜单为0
	 */
	private BigDecimal parentId;
	
	/**
	 * 父菜单名称
	 */
	private String parentName;

	/**
	 * 菜单名称
	 */
	private String name;

	/**
	 * 菜单URL
	 */
	private String url;

	/**
	 * 授权(多个用逗号分隔，如：user:list,user:create)
	 */
	private String perms;

	/**
	 * 类型     0：目录   1：菜单   2：按钮
	 */
	private BigDecimal type;

	/**
	 * 菜单图标
	 */
	private String icon;

	/**
	 * 排序
	 */
	private BigDecimal orderNum;
	
	/**
	 * ztree属性
	 */
	private Boolean open;
	
	private List<?> list;

	public void setMenuId(BigDecimal menuId) {
		this.menuId = menuId;
	}

	public BigDecimal getMenuId() {
		return menuId;
	}
	
	/**
	 * 设置：父菜单ID，一级菜单为0
	 * @param parentId 父菜单ID，一级菜单为0
	 */
	public void setParentId(BigDecimal parentId) {
		this.parentId = parentId;
	}

	/**
	 * 获取：父菜单ID，一级菜单为0
	 * @return BigDecimal
	 */
	public BigDecimal getParentId() {
		return parentId;
	}
	
	/**
	 * 设置：菜单名称
	 * @param name 菜单名称
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 获取：菜单名称
	 * @return String
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * 设置：菜单URL
	 * @param url 菜单URL
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * 获取：菜单URL
	 * @return String
	 */
	public String getUrl() {
		return url;
	}
	
	public String getPerms() {
		return perms;
	}

	public void setPerms(String perms) {
		this.perms = perms;
	}

	public BigDecimal getType() {
		return type;
	}

	public void setType(BigDecimal type) {
		this.type = type;
	}

	/**
	 * 设置：菜单图标
	 * @param icon 菜单图标
	 */
	public void setIcon(String icon) {
		this.icon = icon;
	}

	/**
	 * 获取：菜单图标
	 * @return String
	 */
	public String getIcon() {
		return icon;
	}
	
	/**
	 * 设置：排序
	 * @param orderNum 排序
	 */
	public void setOrderNum(BigDecimal orderNum) {
		this.orderNum = orderNum;
	}

	/**
	 * 获取：排序
	 * @return Integer
	 */
	public BigDecimal getOrderNum() {
		return orderNum;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public Boolean getOpen() {
		return open;
	}

	public void setOpen(Boolean open) {
		this.open = open;
	}
}
