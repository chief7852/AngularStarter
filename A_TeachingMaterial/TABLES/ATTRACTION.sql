--------------------------------------------------------
--  DDL for Table ATTRACTION
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."ATTRACTION" 
   (	"FC_ID" VARCHAR2(12 BYTE), 
	"ATT_AVAILABLE" VARCHAR2(1 BYTE), 
	"ATT_DESC" CLOB, 
	"ATT_WAIT" NUMBER, 
	"FILE_NO" NUMBER, 
	"ATT_SDESC" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" 
 LOB ("ATT_DESC") STORE AS BASICFILE (
  TABLESPACE "TS_202011F" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("ATT_SDESC") STORE AS BASICFILE (
  TABLESPACE "TS_202011F" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
