--------------------------------------------------------
--  DDL for Table APPROVAL
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."APPROVAL" 
   (	"REPORT_APP_NO" NUMBER, 
	"REPORT_NO" NUMBER, 
	"REPORT_APP" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"REPORT_APPER" VARCHAR2(12 BYTE), 
	"REPORT_APP_DATE" VARCHAR2(8 BYTE), 
	"REMARK" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."APPROVAL"."REPORT_APP_NO" IS '보고서 승인 일련 번호';
   COMMENT ON COLUMN "TEAM4_202011F"."APPROVAL"."REPORT_NO" IS '보고서 일련 번호';
   COMMENT ON COLUMN "TEAM4_202011F"."APPROVAL"."REPORT_APP" IS '승인 여부';
   COMMENT ON COLUMN "TEAM4_202011F"."APPROVAL"."REPORT_APPER" IS '보고서 승인자';
   COMMENT ON COLUMN "TEAM4_202011F"."APPROVAL"."REPORT_APP_DATE" IS '보고서 승인 일자';
   COMMENT ON COLUMN "TEAM4_202011F"."APPROVAL"."REMARK" IS '비고';
