drop sequence Sequence_sys_log;
drop sequence sequence_sys_role;
drop sequence sequence_schedule_job;
drop sequence sequence_schedule_job_log;
drop sequence sequence_sys_config;
drop sequence sequence_sys_menu;
drop sequence sequence_sys_oss;
drop sequence sequence_sys_role_menu;
 
 --日志表
 CREATE SEQUENCE  sequence_sys_log MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;

 CREATE OR REPLACE TRIGGER sequence_sys_log 
 BEFORE INSERT ON sys_log   
 FOR EACH ROW  
  BEGIN  
  SELECT sequence_sys_log.nextval INTO :new.id  FROM dual;  
 END; 
 --角色表
  CREATE SEQUENCE  sequence_sys_role MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;

 CREATE OR REPLACE TRIGGER sequence_sys_role 
 BEFORE INSERT ON sys_role    
 FOR EACH ROW  
  BEGIN  
  SELECT sequence_sys_role.nextval INTO :new.ROLE_ID  FROM dual;  
 END; 
  --定时任务表
  CREATE SEQUENCE  sequence_schedule_job MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;

 CREATE OR REPLACE TRIGGER sequence_schedule_job 
 BEFORE INSERT ON schedule_job    
 FOR EACH ROW  
  BEGIN  
  SELECT sequence_schedule_job.nextval INTO :new.job_id  FROM dual;  
 END; 
   --定时任务日志表
  CREATE SEQUENCE  sequence_schedule_job_log MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;

 CREATE OR REPLACE TRIGGER sequence_schedule_job_log 
 BEFORE INSERT ON schedule_job_log     
 FOR EACH ROW  
  BEGIN  
  SELECT sequence_schedule_job_log.nextval INTO :new.log_id  FROM dual;  
 END; 
   --系统配置信息表
  CREATE SEQUENCE  sequence_sys_config MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;

 CREATE OR REPLACE TRIGGER sequence_sys_config 
 BEFORE INSERT ON sys_config
 FOR EACH ROW  
  BEGIN  
  SELECT sequence_sys_config.nextval INTO :new.id  FROM dual;  
 END; 
    --菜单表
  CREATE SEQUENCE  sequence_sys_menu MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 31 NOCACHE  NOORDER  NOCYCLE ;

 CREATE OR REPLACE TRIGGER sequence_sys_menu 
 BEFORE INSERT ON sys_menu
 FOR EACH ROW  
  BEGIN  
  SELECT sequence_sys_menu.nextval INTO :new.menu_id  FROM dual;  
 END; 
     --文件上传表
  CREATE SEQUENCE  sequence_sys_oss MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;

 CREATE OR REPLACE TRIGGER sequence_sys_oss 
 BEFORE INSERT ON sys_oss
 FOR EACH ROW  
  BEGIN  
  SELECT sequence_sys_oss.nextval INTO :new.menu_id  FROM dual;  
 END; 
      --角色与菜单对应关系表
  CREATE SEQUENCE  sequence_sys_role_menu MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 14 NOCACHE  NOORDER  NOCYCLE ;

 CREATE OR REPLACE TRIGGER sequence_sys_role_menu 
 BEFORE INSERT ON sys_role_menu 
 FOR EACH ROW  
  BEGIN  
  SELECT sequence_sys_role_menu.nextval INTO :new.id  FROM dual;  
 END; 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 