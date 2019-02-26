package com.suke.czx.datasources;

import com.suke.czx.modules.user.entity.UserEntity;

import java.math.BigDecimal;

/**
 * Created by czx on 2018/3/15.
 */
public interface DataSourceTestInterface {

    UserEntity queryObject(BigDecimal userId);

    UserEntity queryObject2(BigDecimal userId);
}
