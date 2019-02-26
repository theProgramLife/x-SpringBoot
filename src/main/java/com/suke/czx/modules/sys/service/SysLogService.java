package com.suke.czx.modules.sys.service;

import com.suke.czx.modules.sys.entity.SysLogEntity;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * 系统日志
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2017-03-08 10:40:56
 */
public interface SysLogService {
	
	SysLogEntity queryObject(BigDecimal id);
	
	List<SysLogEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(SysLogEntity sysLog);

	void delete(BigDecimal id);
	
	void deleteBatch(BigDecimal[] ids);
}
