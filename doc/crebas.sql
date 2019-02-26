/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2018/9/7 10:27:05                            */
/*==============================================================*/


alter table qrtz_blob_triggers
   drop constraint QRTZ_BLOB_TRIG_TO_TRIG_FK;

alter table qrtz_cron_triggers
   drop constraint QRTZ_CRON_TRIG_TO_TRIG_FK;

alter table qrtz_simple_triggers
   drop constraint QRTZ_SIMPLE_TRIG_TO_TRIG_FK;

alter table qrtz_simprop_triggers
   drop constraint QRTZ_SIMPROP_TRIG_TO_TRIG_FK;

alter table qrtz_triggers
   drop constraint QRTZ_TRIGGER_TO_JOBS_FK;

drop table qrtz_blob_triggers cascade constraints;

drop table qrtz_calendars cascade constraints;

drop table qrtz_cron_triggers cascade constraints;

drop index idx_qrtz_ft_tg;

drop index idx_qrtz_ft_t_g;

drop index idx_qrtz_ft_jg;

drop index idx_qrtz_ft_j_g;

drop index idx_qrtz_ft_inst_job_req_rcvry;

drop index idx_qrtz_ft_trig_inst_name;

drop table qrtz_fired_triggers cascade constraints;

drop index idx_qrtz_j_grp;

drop index idx_qrtz_j_req_recovery;

drop table qrtz_job_details cascade constraints;

drop table qrtz_locks cascade constraints;

drop table qrtz_paused_trigger_grps cascade constraints;

drop table qrtz_scheduler_state cascade constraints;

drop table qrtz_simple_triggers cascade constraints;

drop table qrtz_simprop_triggers cascade constraints;

drop index idx_qrtz_t_nft_st_misfire_grp;

drop index idx_qrtz_t_nft_st_misfire;

drop index idx_qrtz_t_nft_misfire;

drop index idx_qrtz_t_nft_st;

drop index idx_qrtz_t_next_fire_time;

drop index idx_qrtz_t_n_g_state;

drop index idx_qrtz_t_n_state;

drop index idx_qrtz_t_state;

drop index idx_qrtz_t_g;

drop index idx_qrtz_t_c;

drop index idx_qrtz_t_jg;

drop index idx_qrtz_t_j;

drop table qrtz_triggers cascade constraints;

drop table schedule_job cascade constraints;

drop table schedule_job_log cascade constraints;

drop index key;

drop table sys_config cascade constraints;

drop table sys_log cascade constraints;

drop table sys_menu cascade constraints;

drop table sys_oss cascade constraints;

drop table sys_role cascade constraints;

drop table sys_role_menu cascade constraints;

drop index username;

drop table sys_user cascade constraints;

drop table sys_user_role cascade constraints;

drop index token;

drop table sys_user_token cascade constraints;

drop table tb_app_update cascade constraints;

drop index index1;

drop table tb_user cascade constraints;

drop sequence Sequence_schedule_job;

drop sequence Sequence_schedule_job_log;

drop sequence Sequence_sys_config;

drop sequence Sequence_sys_log;

drop sequence Sequence_sys_menu;

drop sequence Sequence_sys_oss;

drop sequence Sequence_sys_role;

drop sequence Sequence_sys_role_menu;

drop sequence Sequence_sys_user;

drop sequence Sequence_sys_user_role;

drop sequence Sequence_tb_user;

create sequence Sequence_schedule_job
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_schedule_job_log
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_sys_config
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_sys_log
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_sys_menu
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_sys_oss
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_sys_role
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_sys_role_menu
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_sys_user
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_sys_user_role
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

create sequence Sequence_tb_user
increment by 1
start with 1
 maxvalue 99999
 minvalue 1
order;

/*==============================================================*/
/* Table: qrtz_blob_triggers                                    */
/*==============================================================*/
create table qrtz_blob_triggers 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   TRIGGER_NAME         VARCHAR2(200)        not null,
   TRIGGER_GROUP        VARCHAR2(200)        not null,
   BLOB_DATA            BLOB,
   constraint QRTZ_BLOB_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

/*==============================================================*/
/* Table: qrtz_calendars                                        */
/*==============================================================*/
create table qrtz_calendars 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   CALENDAR_NAME        VARCHAR2(200)        not null,
   CALENDAR             BLOB                 not null,
   constraint QRTZ_CALENDARS_PK primary key (SCHED_NAME, CALENDAR_NAME)
);

/*==============================================================*/
/* Table: qrtz_cron_triggers                                    */
/*==============================================================*/
create table qrtz_cron_triggers 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   TRIGGER_NAME         VARCHAR2(200)        not null,
   TRIGGER_GROUP        VARCHAR2(200)        not null,
   CRON_EXPRESSION      VARCHAR2(120)        not null,
   TIME_ZONE_ID         VARCHAR2(80),
   constraint QRTZ_CRON_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

/*==============================================================*/
/* Table: qrtz_fired_triggers                                   */
/*==============================================================*/
create table qrtz_fired_triggers 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   ENTRY_ID             VARCHAR2(95)         not null,
   TRIGGER_NAME         VARCHAR2(200)        not null,
   TRIGGER_GROUP        VARCHAR2(200)        not null,
   INSTANCE_NAME        VARCHAR2(200)        not null,
   FIRED_TIME           NUMBER(13)           not null,
   SCHED_TIME           NUMBER(13)           not null,
   PRIORITY             NUMBER(13)           not null,
   STATE                VARCHAR2(16)         not null,
   JOB_NAME             VARCHAR2(200),
   JOB_GROUP            VARCHAR2(200),
   IS_NONCONCURRENT     VARCHAR2(1),
   REQUESTS_RECOVERY    VARCHAR2(1),
   constraint QRTZ_FIRED_TRIGGER_PK primary key (SCHED_NAME, ENTRY_ID)
);

/*==============================================================*/
/* Index: idx_qrtz_ft_trig_inst_name                            */
/*==============================================================*/
create index idx_qrtz_ft_trig_inst_name on qrtz_fired_triggers (
   SCHED_NAME ASC,
   INSTANCE_NAME ASC
);

/*==============================================================*/
/* Index: idx_qrtz_ft_inst_job_req_rcvry                        */
/*==============================================================*/
create index idx_qrtz_ft_inst_job_req_rcvry on qrtz_fired_triggers (
   SCHED_NAME ASC,
   INSTANCE_NAME ASC,
   REQUESTS_RECOVERY ASC
);

/*==============================================================*/
/* Index: idx_qrtz_ft_j_g                                       */
/*==============================================================*/
create index idx_qrtz_ft_j_g on qrtz_fired_triggers (
   SCHED_NAME ASC,
   JOB_NAME ASC,
   JOB_GROUP ASC
);

/*==============================================================*/
/* Index: idx_qrtz_ft_jg                                        */
/*==============================================================*/
create index idx_qrtz_ft_jg on qrtz_fired_triggers (
   SCHED_NAME ASC,
   JOB_GROUP ASC
);

/*==============================================================*/
/* Index: idx_qrtz_ft_t_g                                       */
/*==============================================================*/
create index idx_qrtz_ft_t_g on qrtz_fired_triggers (
   SCHED_NAME ASC,
   TRIGGER_NAME ASC,
   TRIGGER_GROUP ASC
);

/*==============================================================*/
/* Index: idx_qrtz_ft_tg                                        */
/*==============================================================*/
create index idx_qrtz_ft_tg on qrtz_fired_triggers (
   SCHED_NAME ASC,
   TRIGGER_GROUP ASC
);

/*==============================================================*/
/* Table: qrtz_job_details                                      */
/*==============================================================*/
create table qrtz_job_details 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   JOB_NAME             VARCHAR2(200)        not null,
   JOB_GROUP            VARCHAR2(200)        not null,
   DESCRIPTION          VARCHAR2(250),
   JOB_CLASS_NAME       VARCHAR2(250)        not null,
   IS_DURABLE           VARCHAR2(1)          not null,
   IS_NONCONCURRENT     VARCHAR2(1)          not null,
   IS_UPDATE_DATA       VARCHAR2(1)          not null,
   REQUESTS_RECOVERY    VARCHAR2(1)          not null,
   JOB_DATA             BLOB,
   constraint QRTZ_JOB_DETAILS_PK primary key (SCHED_NAME, JOB_NAME, JOB_GROUP)
);

/*==============================================================*/
/* Index: idx_qrtz_j_req_recovery                               */
/*==============================================================*/
create index idx_qrtz_j_req_recovery on qrtz_job_details (
   SCHED_NAME ASC,
   REQUESTS_RECOVERY ASC
);

/*==============================================================*/
/* Index: idx_qrtz_j_grp                                        */
/*==============================================================*/
create index idx_qrtz_j_grp on qrtz_job_details (
   SCHED_NAME ASC,
   JOB_GROUP ASC
);

/*==============================================================*/
/* Table: qrtz_locks                                            */
/*==============================================================*/
create table qrtz_locks 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   LOCK_NAME            VARCHAR2(40)         not null,
   constraint QRTZ_LOCKS_PK primary key (SCHED_NAME, LOCK_NAME)
);

/*==============================================================*/
/* Table: qrtz_paused_trigger_grps                              */
/*==============================================================*/
create table qrtz_paused_trigger_grps 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   TRIGGER_GROUP        VARCHAR2(200)        not null,
   constraint QRTZ_PAUSED_TRIG_GRPS_PK primary key (SCHED_NAME, TRIGGER_GROUP)
);

/*==============================================================*/
/* Table: qrtz_scheduler_state                                  */
/*==============================================================*/
create table qrtz_scheduler_state 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   INSTANCE_NAME        VARCHAR2(200)        not null,
   LAST_CHECKIN_TIME    NUMBER(13)           not null,
   CHECKIN_INTERVAL     NUMBER(13)           not null,
   constraint QRTZ_SCHEDULER_STATE_PK primary key (SCHED_NAME, INSTANCE_NAME)
);

/*==============================================================*/
/* Table: qrtz_simple_triggers                                  */
/*==============================================================*/
create table qrtz_simple_triggers 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   TRIGGER_NAME         VARCHAR2(200)        not null,
   TRIGGER_GROUP        VARCHAR2(200)        not null,
   REPEAT_COUNT         NUMBER(7)            not null,
   REPEAT_INTERVAL      NUMBER(12)           not null,
   TIMES_TRIGGERED      NUMBER(10)           not null,
   constraint QRTZ_SIMPLE_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

/*==============================================================*/
/* Table: qrtz_simprop_triggers                                 */
/*==============================================================*/
create table qrtz_simprop_triggers 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   TRIGGER_NAME         VARCHAR2(200)        not null,
   TRIGGER_GROUP        VARCHAR2(200)        not null,
   STR_PROP_1           VARCHAR2(512),
   STR_PROP_2           VARCHAR2(512),
   STR_PROP_3           VARCHAR2(512),
   INT_PROP_1           NUMBER(10),
   INT_PROP_2           NUMBER(10),
   LONG_PROP_1          NUMBER(13),
   LONG_PROP_2          NUMBER(13),
   DEC_PROP_1           NUMERIC(13,4),
   DEC_PROP_2           NUMERIC(13,4),
   BOOL_PROP_1          VARCHAR2(1),
   BOOL_PROP_2          VARCHAR2(1),
   constraint QRTZ_SIMPROP_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

/*==============================================================*/
/* Table: qrtz_triggers                                         */
/*==============================================================*/
create table qrtz_triggers 
(
   SCHED_NAME           VARCHAR2(120)        not null,
   TRIGGER_NAME         VARCHAR2(200)        not null,
   TRIGGER_GROUP        VARCHAR2(200)        not null,
   JOB_NAME             VARCHAR2(200)        not null,
   JOB_GROUP            VARCHAR2(200)        not null,
   DESCRIPTION          VARCHAR2(250),
   NEXT_FIRE_TIME       NUMBER(13),
   PREV_FIRE_TIME       NUMBER(13),
   PRIORITY             NUMBER(13),
   TRIGGER_STATE        VARCHAR2(16)         not null,
   TRIGGER_TYPE         VARCHAR2(8)          not null,
   START_TIME           NUMBER(13)           not null,
   END_TIME             NUMBER(13),
   CALENDAR_NAME        VARCHAR2(200),
   MISFIRE_INSTR        NUMBER(2),
   JOB_DATA             BLOB,
   constraint QRTZ_TRIGGERS_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
);

/*==============================================================*/
/* Index: idx_qrtz_t_j                                          */
/*==============================================================*/
create index idx_qrtz_t_j on qrtz_triggers (
   SCHED_NAME ASC,
   JOB_NAME ASC,
   JOB_GROUP ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_jg                                         */
/*==============================================================*/
create index idx_qrtz_t_jg on qrtz_triggers (
   SCHED_NAME ASC,
   JOB_GROUP ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_c                                          */
/*==============================================================*/
create index idx_qrtz_t_c on qrtz_triggers (
   SCHED_NAME ASC,
   CALENDAR_NAME ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_g                                          */
/*==============================================================*/
create index idx_qrtz_t_g on qrtz_triggers (
   SCHED_NAME ASC,
   TRIGGER_GROUP ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_state                                      */
/*==============================================================*/
create index idx_qrtz_t_state on qrtz_triggers (
   SCHED_NAME ASC,
   TRIGGER_STATE ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_n_state                                    */
/*==============================================================*/
create index idx_qrtz_t_n_state on qrtz_triggers (
   SCHED_NAME ASC,
   TRIGGER_NAME ASC,
   TRIGGER_GROUP ASC,
   TRIGGER_STATE ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_n_g_state                                  */
/*==============================================================*/
create index idx_qrtz_t_n_g_state on qrtz_triggers (
   SCHED_NAME ASC,
   TRIGGER_GROUP ASC,
   TRIGGER_STATE ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_next_fire_time                             */
/*==============================================================*/
create index idx_qrtz_t_next_fire_time on qrtz_triggers (
   SCHED_NAME ASC,
   NEXT_FIRE_TIME ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_nft_st                                     */
/*==============================================================*/
create index idx_qrtz_t_nft_st on qrtz_triggers (
   SCHED_NAME ASC,
   TRIGGER_STATE ASC,
   NEXT_FIRE_TIME ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_nft_misfire                                */
/*==============================================================*/
create index idx_qrtz_t_nft_misfire on qrtz_triggers (
   SCHED_NAME ASC,
   MISFIRE_INSTR ASC,
   NEXT_FIRE_TIME ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_nft_st_misfire                             */
/*==============================================================*/
create index idx_qrtz_t_nft_st_misfire on qrtz_triggers (
   SCHED_NAME ASC,
   MISFIRE_INSTR ASC,
   NEXT_FIRE_TIME ASC,
   TRIGGER_STATE ASC
);

/*==============================================================*/
/* Index: idx_qrtz_t_nft_st_misfire_grp                         */
/*==============================================================*/
create index idx_qrtz_t_nft_st_misfire_grp on qrtz_triggers (
   SCHED_NAME ASC,
   MISFIRE_INSTR ASC,
   NEXT_FIRE_TIME ASC,
   TRIGGER_GROUP ASC,
   TRIGGER_STATE ASC
);

/*==============================================================*/
/* Table: schedule_job                                          */
/*==============================================================*/
create table schedule_job 
(
   job_id               INT                  not null,
   bean_name            VARCHAR(2000),
   method_name          VARCHAR(2000),
   params               VARCHAR(2000),
   cron_expression      VARCHAR(2000),
   status               INT,
   remark               VARCHAR(2000),
   create_time          TIMESTAMP,
   constraint PK_SCHEDULE_JOB primary key (job_id)
);

comment on table schedule_job is
'定时任务';

comment on column schedule_job.job_id is
'任务id';

comment on column schedule_job.bean_name is
'spring bean名称';

comment on column schedule_job.method_name is
'方法名';

comment on column schedule_job.params is
'参数';

comment on column schedule_job.cron_expression is
'cron表达式';

comment on column schedule_job.status is
'任务状态  0：正常  1：暂停';

comment on column schedule_job.remark is
'备注';

comment on column schedule_job.create_time is
'创建时间';

/*==============================================================*/
/* Table: schedule_job_log                                      */
/*==============================================================*/
create table schedule_job_log 
(
   log_id               INT                  not null,
   job_id               INT                  not null,
   bean_name            VARCHAR(2000),
   method_name          VARCHAR(2000),
   params               VARCHAR(2000),
   status               INT,
   error                VARCHAR(2000),
   times                INT,
   create_time          TIMESTAMP,
   constraint PK_SCHEDULE_JOB_LOG primary key (log_id, job_id)
);

comment on table schedule_job_log is
'定时任务日志';

comment on column schedule_job_log.log_id is
'任务日志id';

comment on column schedule_job_log.job_id is
'任务id';

comment on column schedule_job_log.bean_name is
'spring bean名称';

comment on column schedule_job_log.method_name is
'方法名';

comment on column schedule_job_log.params is
'参数';

comment on column schedule_job_log.status is
'任务状态    0：成功    1：失败';

comment on column schedule_job_log.error is
'失败信息';

comment on column schedule_job_log.times is
'耗时(单位：毫秒)';

comment on column schedule_job_log.create_time is
'创建时间';

/*==============================================================*/
/* Table: sys_config                                            */
/*==============================================================*/
create table sys_config 
(
   id                   INT                  not null,
   key                  VARCHAR(2000),
   value                VARCHAR(2000)        default '1',
   status               INT,
   remark               VARCHAR(2000),
   constraint PK_SYS_CONFIG primary key (id)
);

comment on table sys_config is
'系统配置信息';

comment on column sys_config.id is
'id';

comment on column sys_config.key is
'key';

comment on column sys_config.value is
'value';

comment on column sys_config.status is
'状态   0：隐藏   1：显示';

comment on column sys_config.remark is
'备注';

/*==============================================================*/
/* Index: key                                                   */
/*==============================================================*/
create index key on sys_config (
   key ASC
);

/*==============================================================*/
/* Table: sys_log                                               */
/*==============================================================*/
create table sys_log 
(
   id                   INT                  not null,
   username             VARCHAR(2000),
   operation            VARCHAR(2000),
   method               VARCHAR(2000),
   params               VARCHAR(2000),
   time                 INT,
   ip                   VARCHAR(2000),
   create_date          TIMESTAMP,
   constraint PK_SYS_LOG primary key (id)
);

comment on table sys_log is
'系统日志';

comment on column sys_log.id is
'id';

comment on column sys_log.username is
'用户名';

comment on column sys_log.operation is
'用户操作';

comment on column sys_log.method is
'请求方法';

comment on column sys_log.params is
'请求参数';

comment on column sys_log.time is
'执行时长(毫秒)';

comment on column sys_log.ip is
'IP地址';

comment on column sys_log.create_date is
'创建时间';

/*==============================================================*/
/* Table: sys_menu                                              */
/*==============================================================*/
create table sys_menu 
(
   menu_id              INT                  not null,
   parent_id            INT,
   name                 VARCHAR(2000),
   url                  VARCHAR(2000),
   perms                VARCHAR(2000),
   type                 INT,
   icon                 VARCHAR(2000),
   order_num            INT,
   constraint PK_SYS_MENU primary key (menu_id)
);

comment on table sys_menu is
'菜单管理';

comment on column sys_menu.menu_id is
'主键';

comment on column sys_menu.parent_id is
'父菜单ID，一级菜单为0';

comment on column sys_menu.name is
'菜单名称';

comment on column sys_menu.url is
'菜单URL';

comment on column sys_menu.perms is
'授权(多个用逗号分隔，如：user:list,user:create)';

comment on column sys_menu.type is
'类型   0：目录   1：菜单   2：按钮';

comment on column sys_menu.icon is
'菜单图标';

comment on column sys_menu.order_num is
'排序';

/*==============================================================*/
/* Table: sys_oss                                               */
/*==============================================================*/
create table sys_oss 
(
   id                   INT                  not null,
   url                  VARCHAR(2000),
   create_date          TIMESTAMP,
   constraint PK_SYS_OSS primary key (id)
);

comment on table sys_oss is
'云存储服务相关SQL，如果不使用该功能,则用不到';

comment on column sys_oss.id is
'id';

comment on column sys_oss.url is
'URL地址';

comment on column sys_oss.create_date is
'创建时间';

/*==============================================================*/
/* Table: sys_role                                              */
/*==============================================================*/
create table sys_role 
(
   role_id              INT                  not null,
   role_name            VARCHAR(2000),
   remark               VARCHAR(2000),
   create_user_id       INT,
   create_time          TIMESTAMP,
   constraint PK_SYS_ROLE primary key (role_id)
);

comment on table sys_role is
'角色';

comment on column sys_role.role_id is
'role_id';

comment on column sys_role.role_name is
'角色名称';

comment on column sys_role.remark is
'备注';

comment on column sys_role.create_user_id is
'创建者ID';

comment on column sys_role.create_time is
'创建时间';

/*==============================================================*/
/* Table: sys_role_menu                                         */
/*==============================================================*/
create table sys_role_menu 
(
   id                   INT                  not null,
   role_id              INT,
   menu_id              INT,
   constraint PK_SYS_ROLE_MENU primary key (id)
);

comment on table sys_role_menu is
'角色与菜单对应关系';

comment on column sys_role_menu.id is
'id';

comment on column sys_role_menu.role_id is
'角色ID';

comment on column sys_role_menu.menu_id is
'菜单ID';

/*==============================================================*/
/* Table: sys_user                                              */
/*==============================================================*/
create table sys_user 
(
   user_id              INT                  not null,
   username             VARCHAR(2000),
   password             VARCHAR(2000),
   salt                 VARCHAR(2000),
   email                VARCHAR(2000),
   mobile               VARCHAR(2000),
   status               INT,
   create_user_id       INT,
   create_time          TIMESTAMP,
   constraint PK_SYS_USER primary key (user_id)
);

comment on table sys_user is
'系统用户';

comment on column sys_user.user_id is
'用户id';

comment on column sys_user.username is
'用户名';

comment on column sys_user.password is
'密码';

comment on column sys_user.salt is
'盐';

comment on column sys_user.email is
'邮箱';

comment on column sys_user.mobile is
'手机号';

comment on column sys_user.status is
'状态  0：禁用   1：正常';

comment on column sys_user.create_user_id is
'创建者ID';

comment on column sys_user.create_time is
'创建时间';

/*==============================================================*/
/* Index: username                                              */
/*==============================================================*/
create index username on sys_user (
   username ASC
);

/*==============================================================*/
/* Table: sys_user_role                                         */
/*==============================================================*/
create table sys_user_role 
(
   id                   INT                  not null,
   user_id              INT,
   role_id              INT,
   constraint PK_SYS_USER_ROLE primary key (id)
);

comment on table sys_user_role is
'用户与角色对应关系';

comment on column sys_user_role.id is
'id';

comment on column sys_user_role.user_id is
'用户ID';

comment on column sys_user_role.role_id is
'角色ID';

/*==============================================================*/
/* Table: sys_user_token                                        */
/*==============================================================*/
create table sys_user_token 
(
   user_id              INT                  not null,
   token                VARCHAR(2000)        not null,
   expire_time          TIMESTAMP,
   update_time          TIMESTAMP,
   constraint PK_SYS_USER_TOKEN primary key (user_id, token)
);

comment on table sys_user_token is
'系统用户Token';

comment on column sys_user_token.user_id is
'user_id';

comment on column sys_user_token.token is
'token';

comment on column sys_user_token.expire_time is
'过期时间';

comment on column sys_user_token.update_time is
'更新时间';

/*==============================================================*/
/* Index: token                                                 */
/*==============================================================*/
create index token on sys_user_token (
   token ASC
);

/*==============================================================*/
/* Table: tb_app_update                                         */
/*==============================================================*/
create table tb_app_update 
(
   appid                VARCHAR(2000)        not null,
   update_content       VARCHAR(2000),
   version_code         INT,
   version_name         VARCHAR(2000),
   url                  VARCHAR(2000),
   app_file_name        VARCHAR(2000),
   md5                  VARCHAR(2000),
   "size"               VARCHAR(2000),
   is_force             VARCHAR(2000),
   is_ignorable         VARCHAR(2000),
   is_silent            VARCHAR(2000),
   upload_time          TIMESTAMP,
   constraint PK_TB_APP_UPDATE primary key (appid)
);

comment on table tb_app_update is
'APP版本更新表';

comment on column tb_app_update.appid is
'APPID';

comment on column tb_app_update.update_content is
'更新内容';

comment on column tb_app_update.version_code is
'版本码';

comment on column tb_app_update.version_name is
'版本号';

comment on column tb_app_update.url is
'URL地址';

comment on column tb_app_update.app_file_name is
'文件名';

comment on column tb_app_update.md5 is
'MD5值';

comment on column tb_app_update."size" is
'文件大小';

comment on column tb_app_update.is_force is
'是否强制安装';

comment on column tb_app_update.is_ignorable is
'是否可忽略该版本';

comment on column tb_app_update.is_silent is
'是否静默下载：有新版本时不提示直接下载';

comment on column tb_app_update.upload_time is
'上传时间';

/*==============================================================*/
/* Table: tb_user                                               */
/*==============================================================*/
create table tb_user 
(
   user_id              INT                  not null,
   username             VARCHAR(2000),
   mobile               VARCHAR(2000),
   password             VARCHAR(2000),
   create_time          TIMESTAMP,
   constraint PK_TB_USER primary key (user_id)
);

comment on table tb_user is
'用户表';

comment on column tb_user.user_id is
'user_id';

comment on column tb_user.username is
'用户名';

comment on column tb_user.mobile is
'手机号';

comment on column tb_user.password is
'密码';

comment on column tb_user.create_time is
'创建时间';

/*==============================================================*/
/* Index: index1                                                */
/*==============================================================*/
create index index1 on tb_user (
   username ASC
);

alter table qrtz_blob_triggers
   add constraint QRTZ_BLOB_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
      references qrtz_triggers (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

alter table qrtz_cron_triggers
   add constraint QRTZ_CRON_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
      references qrtz_triggers (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

alter table qrtz_simple_triggers
   add constraint QRTZ_SIMPLE_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
      references qrtz_triggers (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

alter table qrtz_simprop_triggers
   add constraint QRTZ_SIMPROP_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
      references qrtz_triggers (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

alter table qrtz_triggers
   add constraint QRTZ_TRIGGER_TO_JOBS_FK foreign key (SCHED_NAME, JOB_NAME, JOB_GROUP)
      references qrtz_job_details (SCHED_NAME, JOB_NAME, JOB_GROUP);

