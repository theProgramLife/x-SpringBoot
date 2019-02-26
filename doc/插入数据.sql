


INSERT INTO sys_user (user_id, username, password, salt, email, mobile, status, create_user_id, create_time) VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'yzcheng90@qq.com', '13888888888', '1', '1', '2018-1-18 11:11:11');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('1', '0', '系统管理', NULL, NULL, '0', 'fa fa-cog', '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('2', '1', '管理员列表', 'modules/sys/user.html', NULL, '1', 'fa fa-user', '1');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('3', '1', '角色管理', 'modules/sys/role.html', NULL, '1', 'fa fa-user-secret', '2');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('4', '1', '菜单管理', 'modules/sys/menu.html', NULL, '1', 'fa fa-th-list', '3');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('5', '1', 'SQL监控', 'druid/sql.html', NULL, '1', 'fa fa-bug', '4');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('15', '2', '查看', NULL, 'sys:user:list,sys:user:info', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('16', '2', '新增', NULL, 'sys:user:save,sys:role:select', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('17', '2', '修改', NULL, 'sys:user:update,sys:role:select', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('18', '2', '删除', NULL, 'sys:user:delete', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('19', '3', '查看', NULL, 'sys:role:list,sys:role:info', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('20', '3', '新增', NULL, 'sys:role:save,sys:menu:list', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('21', '3', '修改', NULL, 'sys:role:update,sys:menu:list', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('22', '3', '删除', NULL, 'sys:role:delete', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('23', '4', '查看', NULL, 'sys:menu:list,sys:menu:info', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('24', '4', '新增', NULL, 'sys:menu:save,sys:menu:select', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('25', '4', '修改', NULL, 'sys:menu:update,sys:menu:select', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('26', '4', '删除', NULL, 'sys:menu:delete', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('27', '1', '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', '1', 'fa fa-sun-o', '6');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('29', '1', '系统日志', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');



INSERT INTO sys_config (id,key, value, status, remark) VALUES (0,'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', '0', '云存储配置信息');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('30', '1', '文件上传', 'modules/oss/oss.html', 'sys:oss:all', '1', 'fa fa-file-image-o', '6');


INSERT INTO tb_user (USER_ID,username, mobile, password, create_time) VALUES (1,'mark', '13612345678', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2017-03-23 22:37:41');


INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('6', '1', '定时任务', 'modules/job/schedule.html', NULL, '1', 'fa fa-tasks', '5');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('7', '6', '查看', NULL, 'sys:schedule:list,sys:schedule:info', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('8', '6', '新增', NULL, 'sys:schedule:save', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('9', '6', '修改', NULL, 'sys:schedule:update', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('10', '6', '删除', NULL, 'sys:schedule:delete', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('11', '6', '暂停', NULL, 'sys:schedule:pause', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('12', '6', '恢复', NULL, 'sys:schedule:resume', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('13', '6', '立即执行', NULL, 'sys:schedule:run', '2', NULL, '0');
INSERT INTO sys_menu (menu_id, parent_id, name, url, perms, type, icon, order_num) VALUES ('14', '6', '日志列表', NULL, 'sys:schedule:log', '2', NULL, '0');


INSERT INTO schedule_job (JOB_ID,bean_name, method_name, params, cron_expression, status, remark, create_time) VALUES (1,'testTask', 'test1', 'test', '0 0/30 * * * ?', '0', '有参数测试', '2016-12-01 23:16:46');
INSERT INTO schedule_job (JOB_ID,bean_name, method_name, params, cron_expression, status, remark, create_time) VALUES (2,'testTask', 'test2', NULL, '0 0/30 * * * ?', '1', '无参数测试', '2016-12-03 14:55:56');
