--------------------------------------------------------
--  DDL for Table POS
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."POS" 
   (	"POS_NO" NUMBER, 
	"EMP_ID" VARCHAR2(12 BYTE), 
	"FC_ID" VARCHAR2(12 BYTE), 
	"POS_WORK_DATE" VARCHAR2(8 BYTE) DEFAULT TO_CHAR(SYSDATE, 'YYYYMMDD'), 
	"POS_START" DATE DEFAULT SYSDATE, 
	"POS_END" DATE, 
	"POS_CLOSE" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;
