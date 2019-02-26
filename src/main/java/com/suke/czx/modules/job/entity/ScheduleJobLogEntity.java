package com.suke.czx.modules.job.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 定时执行日志
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2016年12月1日 下午10:26:18
 */
public class ScheduleJobLogEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 日志id
	 */
	private BigDecimal logId;
	
	/**
	 * 任务id
	 */
	private BigDecimal jobId;
	
	/**
	 * spring bean名称
	 */
	private String beanName;
	
	/**
	 * 方法名
	 */
	private String methodName;
	
	/**
	 * 参数
	 */
	private String params;
	
	/**
	 * 任务状态    0：成功    1：失败
	 */
	private BigDecimal status;
	
	/**
	 * 失败信息
	 */
	private String error;
	
	/**
	 * 耗时(单位：毫秒)
	 */
	private BigDecimal times;
	
	/**
	 * 创建时间
	 */
	private Date createTime;

	public BigDecimal getLogId() {
		return logId;
	}

	public void setLogId(BigDecimal logId) {
		this.logId = logId;
	}

	public BigDecimal getJobId() {
		return jobId;
	}

	public void setJobId(BigDecimal jobId) {
		this.jobId = jobId;
	}

	public String getBeanName() {
		return beanName;
	}

	public void setBeanName(String beanName) {
		this.beanName = beanName;
	}

	public String getMethodName() {
		return methodName;
	}

	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public BigDecimal getStatus() {
		return status;
	}

	public void setStatus(BigDecimal status) {
		this.status = status;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public BigDecimal getTimes() {
		return times;
	}

	public void setTimes(BigDecimal times) {
		this.times = times;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
}
