package com.suke.czx.modules.oss.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import com.suke.czx.modules.oss.dao.SysOssDao;
import com.suke.czx.modules.oss.entity.SysOssEntity;
import com.suke.czx.modules.oss.service.SysOssService;



@Service("sysOssService")
public class SysOssServiceImpl implements SysOssService {
	@Autowired
	private SysOssDao sysOssDao;
	
	@Override
	public SysOssEntity queryObject(BigDecimal id){
		return sysOssDao.queryObject(id);
	}
	
	@Override
	public List<SysOssEntity> queryList(Map<String, Object> map){
		return sysOssDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return sysOssDao.queryTotal(map);
	}
	
	@Override
	public void save(SysOssEntity sysOss){
		sysOssDao.save(sysOss);
	}
	
	@Override
	public void update(SysOssEntity sysOss){
		sysOssDao.update(sysOss);
	}
	
	@Override
	public void delete(BigDecimal id){
		sysOssDao.delete(id);
	}
	
	@Override
	public void deleteBatch(BigDecimal[] ids){
		sysOssDao.deleteBatch(ids);
	}
	
}
