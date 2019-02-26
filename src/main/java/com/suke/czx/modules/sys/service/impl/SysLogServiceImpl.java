package com.suke.czx.modules.sys.service.impl;

import com.suke.czx.modules.sys.dao.SysLogDao;
import com.suke.czx.modules.sys.entity.SysLogEntity;
import com.suke.czx.modules.sys.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;



@Service("sysLogService")
public class SysLogServiceImpl implements SysLogService {
	@Autowired
	private SysLogDao sysLogDao;
	
	@Override
	public SysLogEntity queryObject(BigDecimal id){
		return sysLogDao.queryObject(id);
	}
	
	@Override
	public List<SysLogEntity> queryList(Map<String, Object> map){
		return sysLogDao.queryList(map);
	}
	
	@Override
	public int queryTotal(Map<String, Object> map){
		return sysLogDao.queryTotal(map);
	}
	
	@Override
	public void save(SysLogEntity sysLog){
		sysLogDao.save(sysLog);
	}
	
	@Override
	public void delete(BigDecimal id){
		sysLogDao.delete(id);
	}
	
	@Override
	public void deleteBatch(BigDecimal[] ids){
		sysLogDao.deleteBatch(ids);
	}
	
}
