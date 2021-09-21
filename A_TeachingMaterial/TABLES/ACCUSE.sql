--------------------------------------------------------
--  DDL for Table ACCUSE
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."ACCUSE" 
   (	"ACCUSE_NO" NUMBER, 
	"ACCUSER" VARCHAR2(12 BYTE), 
	"ACCUSE_DATE" VARCHAR2(8 BYTE), 
	"ACCUSEE" VARCHAR2(12 BYTE), 
	"ACCUSE_TIME" DATE, 
	"ACCUSE_CONT" CLOB, 
	"ACCUSE_CHECK" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" 
 LOB ("ACCUSE_CONT") STORE AS BASICFILE (
  TABLESPACE "TS_202011F" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "TEAM4_202011F"."ACCUSE"."ACCUSE_NO" IS '신고 일련 번호';
   COMMENT ON COLUMN "TEAM4_202011F"."ACCUSE"."ACCUSER" IS '신고인';
   COMMENT ON COLUMN "TEAM4_202011F"."ACCUSE"."ACCUSE_DATE" IS '접수일자';
   COMMENT ON COLUMN "TEAM4_202011F"."ACCUSE"."ACCUSEE" IS '피신고인';
   COMMENT ON COLUMN "TEAM4_202011F"."ACCUSE"."ACCUSE_TIME" IS '최초 발생 시점';
   COMMENT ON COLUMN "TEAM4_202011F"."ACCUSE"."ACCUSE_CONT" IS '신고 내용';
   COMMENT ON COLUMN "TEAM4_202011F"."ACCUSE"."ACCUSE_CHECK" IS '처리 여부';
   COMMENT ON TABLE "TEAM4_202011F"."ACCUSE"  IS '신고내역';