package com.suke.czx.modules.sys.service;

import com.suke.czx.common.utils.R;
import com.suke.czx.modules.sys.entity.SysUserTokenEntity;

import java.math.BigDecimal;

/**
 * 用户Token
 * 
 * @author czx
 * @email object_czx@163.com
 * @date 2017-03-23 15:22:07
 */
public interface SysUserTokenService {

	SysUserTokenEntity queryByUserId(BigDecimal userId);

	void save(SysUserTokenEntity token);
	
	void update(SysUserTokenEntity token);

	/**
	 * 生成token
	 * @param userId  用户ID
	 */
	R createToken(BigDecimal userId);

	/**
	 * 退出，修改token值
	 * @param userId  用户ID
	 */
	void logout(BigDecimal userId);

}
