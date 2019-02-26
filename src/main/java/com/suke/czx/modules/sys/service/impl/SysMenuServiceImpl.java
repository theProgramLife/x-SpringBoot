package com.suke.czx.modules.sys.service.impl;

import com.suke.czx.common.utils.Constant;
import com.suke.czx.modules.sys.dao.SysMenuDao;
import com.suke.czx.modules.sys.entity.SysMenuEntity;
import com.suke.czx.modules.sys.service.SysMenuService;
import com.suke.czx.modules.sys.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.*;


@Service("sysMenuService")
public class SysMenuServiceImpl implements SysMenuService {
	@Autowired
	private SysMenuDao sysMenuDao;
	@Autowired
	private SysUserService sysUserService;
	
	@Override
	public List<SysMenuEntity> queryListParentId(BigDecimal parentId, List<BigDecimal> menuIdList) {
		List<SysMenuEntity> menuList = queryListParentId(parentId);
		if(menuIdList == null){
			return menuList;
		}
		
		List<SysMenuEntity> userMenuList = new ArrayList<>();
		for(SysMenuEntity menu : menuList){
			if(menuIdList.contains(menu.getMenuId())){
				userMenuList.add(menu);
			}
		}
		return userMenuList;
	}

	@Override
	public List<SysMenuEntity> queryListParentId(BigDecimal parentId) {
		return sysMenuDao.queryListParentId(parentId);
	}

	@Override
	public List<SysMenuEntity> queryNotButtonList() {
		return sysMenuDao.queryNotButtonList();
	}

	@Override
	public List<SysMenuEntity> getUserMenuList(BigDecimal userId) {
		//系统管理员，拥有最高权限
		if(userId.compareTo(new BigDecimal(Constant.SUPER_ADMIN))==0){
			return getAllMenuList(null);
		}
		
		//用户菜单列表
		List<BigDecimal> menuIdList = sysUserService.queryAllMenuId(userId);
		return getAllMenuList(menuIdList);
	}
	
	@Override
	public SysMenuEntity queryObject(BigDecimal menuId) {
		return sysMenuDao.queryObject(menuId);
	}

	@Override
	public List<SysMenuEntity> queryList(Map<String, Object> map) {
		return sysMenuDao.queryList(map);
	}

	@Override
	public int queryTotal(Map<String, Object> map) {
		return sysMenuDao.queryTotal(map);
	}

	@Override
	public void save(SysMenuEntity menu) {
		sysMenuDao.save(menu);
	}

	@Override
	public void update(SysMenuEntity menu) {
		sysMenuDao.update(menu);
	}

	@Override
	@Transactional
	public void deleteBatch(BigDecimal[] menuIds) {
		sysMenuDao.deleteBatch(menuIds);
	}
	
	@Override
	public List<SysMenuEntity> queryUserList(BigDecimal userId) {
		return sysMenuDao.queryUserList(userId);
	}

	/**
	 * 获取所有菜单列表
	 */
	private List<SysMenuEntity> getAllMenuList(List<BigDecimal> menuIdList){
		//查询根菜单列表
		List<SysMenuEntity> menuList = queryListParentId(new BigDecimal(0), menuIdList);
		//递归获取子菜单
		getMenuTreeList(menuList, menuIdList);
		
		return menuList;
	}

	/**
	 * 递归
	 */
	private List<SysMenuEntity> getMenuTreeList(List<SysMenuEntity> menuList, List<BigDecimal> menuIdList){
		List<SysMenuEntity> subMenuList = new ArrayList<SysMenuEntity>();

		for(SysMenuEntity entity : menuList){
			if(entity.getType().compareTo(new BigDecimal(Constant.MenuType.CATALOG.getValue()))==0){//目录
				entity.setList(getMenuTreeList(queryListParentId(entity.getMenuId(), menuIdList), menuIdList));
			}
			subMenuList.add(entity);
		}

		return subMenuList;
	}
}
