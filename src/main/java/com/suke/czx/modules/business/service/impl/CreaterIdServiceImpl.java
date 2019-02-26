package com.suke.czx.modules.business.service.impl;


import com.suke.czx.modules.business.dao.CreaterIdDao;
import com.suke.czx.modules.business.service.CreaterIdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;


@Service("CreaterIdService")
public class CreaterIdServiceImpl implements CreaterIdService {
	@Autowired
	private CreaterIdDao createrIdDao;

	@Override
	public BigDecimal CreaterId(String num) {
		int id = 0;
		//角色ID
		if("1".equals(num)){
			id= createrIdDao.sequence_sys_role();
		}

		return new BigDecimal(id);
	}

}
