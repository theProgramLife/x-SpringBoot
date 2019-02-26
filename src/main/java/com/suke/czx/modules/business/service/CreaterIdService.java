package com.suke.czx.modules.business.service;

import com.suke.czx.modules.user.entity.UserEntity;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * 用户
 * @author duanzhe
 * @date 2019-02-21 10:45:54
 */
public interface CreaterIdService {
	/**
	 * 生成ID
	 */
	BigDecimal CreaterId(String num);

}
