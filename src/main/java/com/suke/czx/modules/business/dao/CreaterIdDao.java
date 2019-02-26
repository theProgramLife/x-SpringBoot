package com.suke.czx.modules.business.dao;

import com.suke.czx.modules.user.entity.UserEntity;
import com.suke.czx.modules.sys.dao.BaseDao;
import org.apache.ibatis.annotations.Mapper;

import java.math.BigDecimal;

/**
 * 生成ID
 * @author duanzhe
 * @date 2019-02-21 10:45:54
 */
@Mapper
public interface CreaterIdDao extends BaseDao<UserEntity> {
    int sequence_sys_role();
}
