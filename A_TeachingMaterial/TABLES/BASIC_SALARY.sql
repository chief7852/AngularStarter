--------------------------------------------------------
--  DDL for Table BASIC_SALARY
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."BASIC_SALARY" 
   (	"RESPONSE_CODE" VARCHAR2(2 BYTE), 
	"BASIC_SAL" NUMBER, 
	"REMARK" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."BASIC_SALARY"."RESPONSE_CODE" IS '직책 아이디';
   COMMENT ON COLUMN "TEAM4_202011F"."BASIC_SALARY"."BASIC_SAL" IS '기본 급여';
   COMMENT ON COLUMN "TEAM4_202011F"."BASIC_SALARY"."REMARK" IS '비고';
   COMMENT ON TABLE "TEAM4_202011F"."BASIC_SALARY"  IS '기본급여';
