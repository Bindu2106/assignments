--------------------------------------------------------
--  File created - Tuesday-March-19-2019   
--------------------------------------------------------
DROP SEQUENCE "BINDU"."SEQ_ST";
DROP TABLE "BINDU"."BBBB" cascade constraints;
DROP TABLE "BINDU"."BINDU_SCHEMA_AUDIT" cascade constraints;
DROP TABLE "BINDU"."BIN_EVNT_AUDIT" cascade constraints;
DROP TABLE "BINDU"."DEPARTMENT" cascade constraints;
DROP TABLE "BINDU"."EMP1" cascade constraints;
DROP TABLE "BINDU"."EMPLOYEE" cascade constraints;
DROP TABLE "BINDU"."EMPLOYEE_AUDIT" cascade constraints;
DROP TABLE "BINDU"."EMP_DEMO" cascade constraints;
DROP TABLE "BINDU"."JOB" cascade constraints;
DROP TABLE "BINDU"."JOB_AUDIT" cascade constraints;
DROP TABLE "BINDU"."LOCATION" cascade constraints;
DROP TABLE "BINDU"."STUDENT" cascade constraints;
DROP TABLE "BINDU"."SUBJECT" cascade constraints;
DROP TABLE "BINDU"."SUPPLIERS" cascade constraints;
DROP TABLE "BINDU"."TABLENAME" cascade constraints;
DROP TABLE "BINDU"."TRAINER" cascade constraints;
DROP VIEW "BINDU"."VW_TR_SU";
DROP PROCEDURE "BINDU"."DISPLAYNAME";
DROP PROCEDURE "BINDU"."DISPLAYNAME1";
DROP PROCEDURE "BINDU"."EMP_SALARY_INCREASE";
DROP PROCEDURE "BINDU"."TRANSFER_SAL";
DROP PACKAGE "BINDU"."PACK_EXAMPLE";
DROP PACKAGE BODY "BINDU"."PACK_EXAMPLE";
DROP FUNCTION "BINDU"."AREA_OF_CIRCLE";
DROP FUNCTION "BINDU"."GREET";
DROP FUNCTION "BINDU"."WELCOME_MSG_FUNC";
--------------------------------------------------------
--  DDL for Sequence SEQ_ST
--------------------------------------------------------

   CREATE SEQUENCE  "BINDU"."SEQ_ST"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 3 START WITH 80 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BBBB
--------------------------------------------------------

  CREATE TABLE "BINDU"."BBBB" 
   (	"N" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BINDU_SCHEMA_AUDIT
--------------------------------------------------------

  CREATE TABLE "BINDU"."BINDU_SCHEMA_AUDIT" 
   (	"DDL_DATE" DATE, 
	"DDL_USER" VARCHAR2(20 BYTE), 
	"OBJECT_CREATED" VARCHAR2(20 BYTE), 
	"OBJECT_NAME" VARCHAR2(20 BYTE), 
	"DDL_OPERATION" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BIN_EVNT_AUDIT
--------------------------------------------------------

  CREATE TABLE "BINDU"."BIN_EVNT_AUDIT" 
   (	"EVENT_TYPE" VARCHAR2(30 BYTE), 
	"LOGON_DATE" DATE, 
	"LOGON_TIME" VARCHAR2(30 BYTE), 
	"LOGOF_DATE" DATE, 
	"LOGOF_TIME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "BINDU"."DEPARTMENT" 
   (	"DEPTNO" NUMBER, 
	"DNAME" VARCHAR2(20 BYTE), 
	"LCODE" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMP1
--------------------------------------------------------

  CREATE TABLE "BINDU"."EMP1" 
   (	"EMPNO" NUMBER, 
	"ENAME" VARCHAR2(30 BYTE), 
	"DEPTNO" NUMBER, 
	"HIREDATE" DATE, 
	"SALARY" NUMBER(10,3), 
	"COMMISSION" NUMBER(4,2), 
	"JCODE" VARCHAR2(10 BYTE), 
	"MGRNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "BINDU"."EMPLOYEE" 
   (	"EMPNO" NUMBER, 
	"ENAME" VARCHAR2(30 BYTE), 
	"DEPTNO" NUMBER, 
	"HIREDATE" DATE DEFAULT sysdate, 
	"SALARY" NUMBER(10,3), 
	"COMMISSION" NUMBER(4,2), 
	"JCODE" VARCHAR2(10 BYTE), 
	"MGRNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE_AUDIT
--------------------------------------------------------

  CREATE TABLE "BINDU"."EMPLOYEE_AUDIT" 
   (	"EMPNO" NUMBER, 
	"DOA" DATE, 
	"OLDVALUE" NUMBER, 
	"NEWVALUE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMP_DEMO
--------------------------------------------------------

  CREATE TABLE "BINDU"."EMP_DEMO" 
   (	"EMPNO" NUMBER, 
	"ENAME" VARCHAR2(30 BYTE), 
	"DEPTNO" NUMBER, 
	"HIREDATE" DATE, 
	"SALARY" NUMBER(10,3), 
	"COMMISSION" NUMBER(4,2), 
	"JCODE" VARCHAR2(10 BYTE), 
	"MGRNO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table JOB
--------------------------------------------------------

  CREATE TABLE "BINDU"."JOB" 
   (	"JCODE" VARCHAR2(10 BYTE), 
	"JNAME" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table JOB_AUDIT
--------------------------------------------------------

  CREATE TABLE "BINDU"."JOB_AUDIT" 
   (	"OLDJCODE" VARCHAR2(6 BYTE), 
	"NEWJCODE" VARCHAR2(6 BYTE), 
	"DOA" DATE, 
	"OLDJNAME" VARCHAR2(20 BYTE), 
	"NEWJNAME" VARCHAR2(20 BYTE), 
	"L_USER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOCATION
--------------------------------------------------------

  CREATE TABLE "BINDU"."LOCATION" 
   (	"LCODE" VARCHAR2(5 BYTE), 
	"LNAME" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "BINDU"."STUDENT" 
   (	"ST_ID" NUMBER, 
	"ST_NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUBJECT
--------------------------------------------------------

  CREATE TABLE "BINDU"."SUBJECT" 
   (	"SUBJECT_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SUPPLIERS
--------------------------------------------------------

  CREATE TABLE "BINDU"."SUPPLIERS" 
   (	"SUP_ID" VARCHAR2(20 BYTE), 
	"SUP_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TABLENAME
--------------------------------------------------------

  CREATE TABLE "BINDU"."TABLENAME" 
   (	"TID" NUMBER, 
	"TNAME" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TRAINER
--------------------------------------------------------

  CREATE TABLE "BINDU"."TRAINER" 
   (	"TRAINER_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View VW_TR_SU
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "BINDU"."VW_TR_SU" ("TRAINER_NAME", "SUBJECT_NAME") AS 
  select trainer_name,subject_name from trainer, subject
;
REM INSERTING into BINDU.BBBB
SET DEFINE OFF;
REM INSERTING into BINDU.BINDU_SCHEMA_AUDIT
SET DEFINE OFF;
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TABLE','BIN_EVNT_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGON_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGON_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGON_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGON_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TABLE','BIN_EVNT_AUDIT','DROP');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TABLE','BIN_EVNT_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGON_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','BIN_LGOFF_AUDIT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TABLE','TRAINER','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TABLE','SUBJECT','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','VIEW','VW_TR_SU','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','VW_UPDATE','CREATE');
Insert into BINDU.BINDU_SCHEMA_AUDIT (DDL_DATE,DDL_USER,OBJECT_CREATED,OBJECT_NAME,DDL_OPERATION) values (to_date('19-MAR-19','DD-MON-RR'),'BINDU','TRIGGER','VW_UPDATE','CREATE');
REM INSERTING into BINDU.BIN_EVNT_AUDIT
SET DEFINE OFF;
Insert into BINDU.BIN_EVNT_AUDIT (EVENT_TYPE,LOGON_DATE,LOGON_TIME,LOGOF_DATE,LOGOF_TIME) values ('LOGON',to_date('19-MAR-19','DD-MON-RR'),'12:58:25',null,null);
Insert into BINDU.BIN_EVNT_AUDIT (EVENT_TYPE,LOGON_DATE,LOGON_TIME,LOGOF_DATE,LOGOF_TIME) values ('LOGOFF',null,null,to_date('19-MAR-19','DD-MON-RR'),'12:59:49');
Insert into BINDU.BIN_EVNT_AUDIT (EVENT_TYPE,LOGON_DATE,LOGON_TIME,LOGOF_DATE,LOGOF_TIME) values ('LOGON',to_date('19-MAR-19','DD-MON-RR'),'13:00:00',null,null);
REM INSERTING into BINDU.DEPARTMENT
SET DEFINE OFF;
Insert into BINDU.DEPARTMENT (DEPTNO,DNAME,LCODE) values (1,'training','l01');
Insert into BINDU.DEPARTMENT (DEPTNO,DNAME,LCODE) values (2,'training','l03');
Insert into BINDU.DEPARTMENT (DEPTNO,DNAME,LCODE) values (3,'production','l02');
Insert into BINDU.DEPARTMENT (DEPTNO,DNAME,LCODE) values (4,'sales','l02');
Insert into BINDU.DEPARTMENT (DEPTNO,DNAME,LCODE) values (5,'sales','l03');
Insert into BINDU.DEPARTMENT (DEPTNO,DNAME,LCODE) values (6,'hr','l03');
Insert into BINDU.DEPARTMENT (DEPTNO,DNAME,LCODE) values (7,'hr','l04');
REM INSERTING into BINDU.EMP1
SET DEFINE OFF;
REM INSERTING into BINDU.EMPLOYEE
SET DEFINE OFF;
Insert into BINDU.EMPLOYEE (EMPNO,ENAME,DEPTNO,HIREDATE,SALARY,COMMISSION,JCODE,MGRNO) values (111,'BINDU',1,to_date('12-JAN-19','DD-MON-RR'),16800,20,'j01',null);
Insert into BINDU.EMPLOYEE (EMPNO,ENAME,DEPTNO,HIREDATE,SALARY,COMMISSION,JCODE,MGRNO) values (112,'KRISHNA',1,to_date('15-JAN-19','DD-MON-RR'),23000,20,'j01',null);
Insert into BINDU.EMPLOYEE (EMPNO,ENAME,DEPTNO,HIREDATE,SALARY,COMMISSION,JCODE,MGRNO) values (113,'GEETHA',2,to_date('12-FEB-19','DD-MON-RR'),20000,20,'j01',111);
Insert into BINDU.EMPLOYEE (EMPNO,ENAME,DEPTNO,HIREDATE,SALARY,COMMISSION,JCODE,MGRNO) values (114,'JAYA',5,to_date('21-FEB-19','DD-MON-RR'),13000,22,'j04',112);
REM INSERTING into BINDU.EMPLOYEE_AUDIT
SET DEFINE OFF;
REM INSERTING into BINDU.EMP_DEMO
SET DEFINE OFF;
Insert into BINDU.EMP_DEMO (EMPNO,ENAME,DEPTNO,HIREDATE,SALARY,COMMISSION,JCODE,MGRNO) values (111,'BINDU',1,to_date('12-JAN-19','DD-MON-RR'),20000,20,'j01',null);
Insert into BINDU.EMP_DEMO (EMPNO,ENAME,DEPTNO,HIREDATE,SALARY,COMMISSION,JCODE,MGRNO) values (112,'KRISHNA',1,to_date('15-JAN-19','DD-MON-RR'),20000,20,'j01',null);
Insert into BINDU.EMP_DEMO (EMPNO,ENAME,DEPTNO,HIREDATE,SALARY,COMMISSION,JCODE,MGRNO) values (113,'GEETHA',2,to_date('12-FEB-19','DD-MON-RR'),20000,20,'j01',111);
Insert into BINDU.EMP_DEMO (EMPNO,ENAME,DEPTNO,HIREDATE,SALARY,COMMISSION,JCODE,MGRNO) values (114,'JAYA',5,to_date('21-FEB-19','DD-MON-RR'),10000,22,'j04',112);
REM INSERTING into BINDU.JOB
SET DEFINE OFF;
Insert into BINDU.JOB (JCODE,JNAME) values ('j01','TESTER');
Insert into BINDU.JOB (JCODE,JNAME) values ('j02','DEVELOPER');
Insert into BINDU.JOB (JCODE,JNAME) values ('j03','ANALYST');
Insert into BINDU.JOB (JCODE,JNAME) values ('j04','TECHWRITER');
Insert into BINDU.JOB (JCODE,JNAME) values ('j05','ARCHITECH');
REM INSERTING into BINDU.JOB_AUDIT
SET DEFINE OFF;
REM INSERTING into BINDU.LOCATION
SET DEFINE OFF;
Insert into BINDU.LOCATION (LCODE,LNAME) values ('l01','BAGAMANE');
Insert into BINDU.LOCATION (LCODE,LNAME) values ('l02','MASCOT');
Insert into BINDU.LOCATION (LCODE,LNAME) values ('l03','MYSORE');
Insert into BINDU.LOCATION (LCODE,LNAME) values ('l04','STP');
REM INSERTING into BINDU.STUDENT
SET DEFINE OFF;
Insert into BINDU.STUDENT (ST_ID,ST_NAME) values (20,'bb');
Insert into BINDU.STUDENT (ST_ID,ST_NAME) values (23,'bb');
Insert into BINDU.STUDENT (ST_ID,ST_NAME) values (26,'bb');
Insert into BINDU.STUDENT (ST_ID,ST_NAME) values (29,'bb');
Insert into BINDU.STUDENT (ST_ID,ST_NAME) values (32,'bb');
Insert into BINDU.STUDENT (ST_ID,ST_NAME) values (35,'bb');
Insert into BINDU.STUDENT (ST_ID,ST_NAME) values (38,'bb');
Insert into BINDU.STUDENT (ST_ID,ST_NAME) values (41,'bb');
REM INSERTING into BINDU.SUBJECT
SET DEFINE OFF;
Insert into BINDU.SUBJECT (SUBJECT_NAME) values ('Java');
REM INSERTING into BINDU.SUPPLIERS
SET DEFINE OFF;
REM INSERTING into BINDU.TABLENAME
SET DEFINE OFF;
Insert into BINDU.TABLENAME (TID,TNAME) values (1,'gh');
REM INSERTING into BINDU.TRAINER
SET DEFINE OFF;
Insert into BINDU.TRAINER (TRAINER_NAME) values ('Bindu');
Insert into BINDU.TRAINER (TRAINER_NAME) values ('Bindu');
Insert into BINDU.TRAINER (TRAINER_NAME) values ('Swetha');
--------------------------------------------------------
--  DDL for Trigger BINDU_AUDIT_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BINDU"."BINDU_AUDIT_TR" 
after ddl on schema
declare
v_user varchar2(20);
begin
select user into v_user from dual;
insert into bindu_schema_audit values(sysdate,v_user,ora_dict_obj_type,ora_dict_obj_name,ora_sysevent);
end;

/
ALTER TRIGGER "BINDU"."BINDU_AUDIT_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BIN_LGOFF_AUDIT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BINDU"."BIN_LGOFF_AUDIT" 
before logoff on schema
begin
insert into bin_evnt_audit values(ora_sysevent,null,null,sysdate,to_char(sysdate, 'hh24:mi:ss'));
end;

/
ALTER TRIGGER "BINDU"."BIN_LGOFF_AUDIT" ENABLE;
BEGIN 
  DBMS_DDL.SET_TRIGGER_FIRING_PROPERTY('"BINDU"','"BIN_LGOFF_AUDIT"',FALSE) ; 
END;

/
--------------------------------------------------------
--  DDL for Trigger BIN_LGON_AUDIT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BINDU"."BIN_LGON_AUDIT" 
after logon on schema
begin
insert into bin_evnt_audit values(ora_sysevent,sysdate,to_char(sysdate, 'hh24:mi:ss'),null,null);
end;

/
ALTER TRIGGER "BINDU"."BIN_LGON_AUDIT" ENABLE;
BEGIN 
  DBMS_DDL.SET_TRIGGER_FIRING_PROPERTY('"BINDU"','"BIN_LGON_AUDIT"',FALSE) ; 
END;

/
--------------------------------------------------------
--  DDL for Trigger JOB_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BINDU"."JOB_TRIG" 
before insert or update or delete on job
for each row
declare
v_user varchar2(20);
begin
select user into v_user from dual;
insert into job_audit values(:old.jcode,:new.jcode,sysdate,:old.jname,:new.jname,v_user);
end;

/
ALTER TRIGGER "BINDU"."JOB_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MY_SAL_TRIG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BINDU"."MY_SAL_TRIG" 
before update of salary on employee
for each row
begin
insert into employee_audit values(:old.empno,sysdate,:old.salary,:new.salary);
end;

/
ALTER TRIGGER "BINDU"."MY_SAL_TRIG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VW_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "BINDU"."VW_UPDATE" 
instead of insert or update or delete on vw_tr_su
for each row
begin
      if inserting then
            insert into trainer values(:new.trainer_name);
            insert into subject values(:new.subject_name);
      elsif updating then
            update trainer set trainer_name = :new.trainer_name where trainer_name = :old.trainer_name;
            update subject set subject_name = :new.subject_name where subject_name = :old.subject_name;
      elsif deleting then
            delete from trainer where trainer_name=:old.trainer_name;
            delete from subject where subject_name=:old.subject_name;
      else
            dbms_output.put_line('invalid');
      end if;
end;

/
ALTER TRIGGER "BINDU"."VW_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Procedure DISPLAYNAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BINDU"."DISPLAYNAME" (
v_empno in employee.empno%type)
is
v_name varchar2(25);
begin
select ename into v_name from employee
where empno=v_empno;
dbms_output.put_line(v_name);
end;

/
--------------------------------------------------------
--  DDL for Procedure DISPLAYNAME1
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BINDU"."DISPLAYNAME1" (
v_empno in employee.empno%type,
v_name out employee.ename%type)
is
begin
select ename into v_name from employee
where empno=v_empno;
end;

/
--------------------------------------------------------
--  DDL for Procedure EMP_SALARY_INCREASE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BINDU"."EMP_SALARY_INCREASE" 
               (emp_id in employee.empno%type,
                salary_inc in out employee.salary%type)
                is
                tmp_sal number;
begin
    select salary into tmp_sal
    from employee where empno = emp_id;
        if tmp_sal between 10000 and 20000 then
           salary_inc := tmp_sal * 1.2;
        elsif tmp_sal between 20000 and 30000 then
           salary_inc := tmp_sal * 1.3;
        elsif tmp_sal > 30000 then
           salary_inc := tmp_sal * 1.4;
        end if;
end;

/
--------------------------------------------------------
--  DDL for Procedure TRANSFER_SAL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "BINDU"."TRANSFER_SAL" ( fromid in number,
                                          toid in number,
                                          amount in number)
is
begin

     update employee set salary=salary-amount where empno=fromid;
     update employee set salary=salary+amount where empno=toid;
end;

/
--------------------------------------------------------
--  DDL for Package PACK_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "BINDU"."PACK_EXAMPLE" as
       function get_fullname(n_emp_id number)
       return varchar2;
       function get_fullsalary(n_emp_id number)
       return number;
       --procedure examl;--
end pack_example;

/
--------------------------------------------------------
--  DDL for Package Body PACK_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "BINDU"."PACK_EXAMPLE" AS

  function get_fullname(n_emp_id number)
       return varchar2 AS
       empname varchar2(20);
  BEGIN
    -- TODO: Implementation required for function PACK_EXAMPLE.get_fullname
    select ename into empname from employee where empno=n_emp_id;
    RETURN empname;
  END get_fullname;

  function get_fullsalary(n_emp_id number)
       return number AS
       esal number;
  BEGIN
    -- TODO: Implementation required for function PACK_EXAMPLE.get_fullsalary
    select salary into esal from employee where empno=n_emp_id;
    RETURN esal;
  END get_fullsalary;

  procedure examl AS
  BEGIN
    -- TODO: Implementation required for procedure PACK_EXAMPLE.examl
    NULL;
  END examl;

END PACK_EXAMPLE;

/
--------------------------------------------------------
--  DDL for Function AREA_OF_CIRCLE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BINDU"."AREA_OF_CIRCLE" (radius in number)
return  number                       
is
PI constant number := 3.14;
begin
return (PI *( radius *radius));
end;

/
--------------------------------------------------------
--  DDL for Function GREET
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BINDU"."GREET" (p_name in varchar2)
return varchar2
is
begin
return ('Welcome ' || p_name);
end;

/
--------------------------------------------------------
--  DDL for Function WELCOME_MSG_FUNC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "BINDU"."WELCOME_MSG_FUNC" (p_name in varchar2)
return varchar2
is
begin
return ('Welcome ' || p_name);
end;

/
--------------------------------------------------------
--  Constraints for Table TABLENAME
--------------------------------------------------------

  ALTER TABLE "BINDU"."TABLENAME" ADD PRIMARY KEY ("TID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMP1
--------------------------------------------------------

  ALTER TABLE "BINDU"."EMP1" MODIFY ("ENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SUPPLIERS
--------------------------------------------------------

  ALTER TABLE "BINDU"."SUPPLIERS" MODIFY ("SUP_NAME" NOT NULL ENABLE);
  ALTER TABLE "BINDU"."SUPPLIERS" MODIFY ("SUP_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "BINDU"."DEPARTMENT" ADD PRIMARY KEY ("DEPTNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BINDU"."DEPARTMENT" MODIFY ("DNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "BINDU"."STUDENT" ADD PRIMARY KEY ("ST_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB
--------------------------------------------------------

  ALTER TABLE "BINDU"."JOB" ADD CONSTRAINT "JOB_NAME" CHECK (jname = upper(jname)) ENABLE;
  ALTER TABLE "BINDU"."JOB" MODIFY ("JNAME" NOT NULL ENABLE);
  ALTER TABLE "BINDU"."JOB" ADD PRIMARY KEY ("JCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOCATION
--------------------------------------------------------

  ALTER TABLE "BINDU"."LOCATION" ADD PRIMARY KEY ("LCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "BINDU"."EMPLOYEE" ADD CONSTRAINT "CHECK_NAME" CHECK (ename = upper(ename)) ENABLE;
  ALTER TABLE "BINDU"."EMPLOYEE" ADD PRIMARY KEY ("EMPNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "BINDU"."EMPLOYEE" MODIFY ("ENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMP_DEMO
--------------------------------------------------------

  ALTER TABLE "BINDU"."EMP_DEMO" MODIFY ("ENAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BBBB
--------------------------------------------------------

  ALTER TABLE "BINDU"."BBBB" MODIFY ("N" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "BINDU"."DEPARTMENT" ADD CONSTRAINT "FK_LOCA_DEP" FOREIGN KEY ("LCODE")
	  REFERENCES "BINDU"."LOCATION" ("LCODE") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "BINDU"."EMPLOYEE" ADD CONSTRAINT "FK_DEP_EMP" FOREIGN KEY ("DEPTNO")
	  REFERENCES "BINDU"."DEPARTMENT" ("DEPTNO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BINDU"."EMPLOYEE" ADD CONSTRAINT "FK_JOB_EMP" FOREIGN KEY ("JCODE")
	  REFERENCES "BINDU"."JOB" ("JCODE") ON DELETE CASCADE ENABLE;
  ALTER TABLE "BINDU"."EMPLOYEE" ADD CONSTRAINT "FK_MGR_EMP" FOREIGN KEY ("MGRNO")
	  REFERENCES "BINDU"."EMPLOYEE" ("EMPNO") ON DELETE CASCADE ENABLE;
