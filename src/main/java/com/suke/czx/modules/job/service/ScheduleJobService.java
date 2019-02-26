package com.suke.czx.modules.job.service;

import com.suke.czx.modules.job.entity.ScheduleJobEntity;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * 定时任务
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年11月28日 上午9:55:32
 */
public interface ScheduleJobService {

	/**
	 * 根据ID，查询定时任务
	 */
	ScheduleJobEntity queryObject(BigDecimal jobId);
	
	/**
	 * 查询定时任务列表
	 */
	List<ScheduleJobEntity> queryList(Map<String, Object> map);
	
	/**
	 * 查询总数
	 */
	int queryTotal(Map<String, Object> map);
	
	/**
	 * 保存定时任务
	 */
	void save(ScheduleJobEntity scheduleJob);
	
	/**
	 * 更新定时任务
	 */
	void update(ScheduleJobEntity scheduleJob);
	
	/**
	 * 批量删除定时任务
	 */
	void deleteBatch(BigDecimal[] jobIds);
	
	/**
	 * 批量更新定时任务状态
	 */
	int updateBatch(BigDecimal[] jobIds, int status);
	
	/**
	 * 立即执行
	 */
	void run(BigDecimal[] jobIds);
	
	/**
	 * 暂停运行
	 */
	void pause(BigDecimal[] jobIds);
	
	/**
	 * 恢复运行
	 */
	void resume(BigDecimal[] jobIds);
}
