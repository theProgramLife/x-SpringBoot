package com.suke.czx.modules.user.service;

import com.suke.czx.modules.user.entity.UserEntity;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * 用户
 * 
 * @author Andy
 * @email andyeasons@163.com
 * @date 2017-10-23 21:23:54
 */
public interface UserService {
	
	UserEntity queryObject(BigDecimal userId);
	
	List<UserEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(UserEntity userEntity);

	void save(String mobile, String password);

	void update(UserEntity user);
	
	void delete(BigDecimal userId);
	
	void deleteBatch(BigDecimal[] userIds);

	UserEntity queryByMobile(String mobile);

	/**
	 * 用户登录
	 * @param mobile    手机号
	 * @param password  密码
	 * @return          返回用户ID
	 */
	BigDecimal login(String mobile, String password);
}
