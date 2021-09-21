--------------------------------------------------------
--  DDL for Table EMAIL
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."EMAIL" 
   (	"EMAIL_NO" NUMBER, 
	"EMP_ID" VARCHAR2(12 BYTE), 
	"EMAIL_SEND" DATE, 
	"EMAIL_TITLE" VARCHAR2(200 BYTE), 
	"EMAIL_CONT" CLOB, 
	"EMAIL_DEL" VARCHAR2(1 BYTE), 
	"EMAIL_RESERVE" VARCHAR2(8 BYTE), 
	"FILE_NO" NUMBER, 
	"EMAIL_RESERVE_DEL" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" 
 LOB ("EMAIL_CONT") STORE AS BASICFILE (
  TABLESPACE "TS_202011F" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;