--------------------------------------------------------
--  DDL for Table INCOME
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."INCOME" 
   (	"INC_NO" NUMBER, 
	"LPROD_CODE" VARCHAR2(12 BYTE), 
	"PROD_NAME" VARCHAR2(50 BYTE), 
	"INC_DATE" VARCHAR2(8 BYTE), 
	"INC_CNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;