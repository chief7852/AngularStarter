--------------------------------------------------------
--  DDL for Table ALARM_RECEIVER
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."ALARM_RECEIVER" 
   (	"ALARM_NO" NUMBER, 
	"EMP_ID" VARCHAR2(12 BYTE), 
	"ALARM_CHECK_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;