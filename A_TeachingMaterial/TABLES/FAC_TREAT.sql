--------------------------------------------------------
--  DDL for Table FAC_TREAT
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."FAC_TREAT" 
   (	"FT_NO" NUMBER, 
	"FM_CODE" VARCHAR2(12 BYTE), 
	"EMP_ID" VARCHAR2(12 BYTE), 
	"FT_DATE" VARCHAR2(8 BYTE), 
	"FT_CONT" CLOB, 
	"FT_CHECK" VARCHAR2(1 BYTE) DEFAULT 'Y', 
	"FT_DEL" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" 
 LOB ("FT_CONT") STORE AS BASICFILE (
  TABLESPACE "TS_202011F" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "TEAM4_202011F"."FAC_TREAT"."FT_NO" IS '이용 시설물 처리 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."FAC_TREAT"."FM_CODE" IS '이용 시설물 관리 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."FAC_TREAT"."EMP_ID" IS '직원아이디';
   COMMENT ON COLUMN "TEAM4_202011F"."FAC_TREAT"."FT_DATE" IS '이용 시설물 처리 일자';
   COMMENT ON COLUMN "TEAM4_202011F"."FAC_TREAT"."FT_CONT" IS '이용 시설물 처리 내용';
   COMMENT ON COLUMN "TEAM4_202011F"."FAC_TREAT"."FT_CHECK" IS '이용 시설물 처리 여부';
   COMMENT ON COLUMN "TEAM4_202011F"."FAC_TREAT"."FT_DEL" IS '이용 시설물 처리 삭제 여부';
   COMMENT ON TABLE "TEAM4_202011F"."FAC_TREAT"  IS '이용 시설물 처리 내역';