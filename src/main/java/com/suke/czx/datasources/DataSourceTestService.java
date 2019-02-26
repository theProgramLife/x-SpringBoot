package com.suke.czx.datasources;

import com.suke.czx.datasources.annotation.DataSource;
import com.suke.czx.modules.user.entity.UserEntity;
import com.suke.czx.modules.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

/**
 * 测试
 * @author czx
 * @email object_czx@163.com
 * @date 2017/9/16 23:10
 */
@Service
public class DataSourceTestService implements DataSourceTestInterface{

    @Autowired
    private UserService userService;

    @Override
    public UserEntity queryObject(BigDecimal userId){
        return userService.queryObject(userId);
    }

    @DataSource(name = DataSourceNames.SECOND)
    @Override
    public UserEntity queryObject2(BigDecimal userId){
        return userService.queryObject(userId);
    }
}
