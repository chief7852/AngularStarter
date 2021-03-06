--------------------------------------------------------
--  DDL for Table LISENCES
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."LISENCES" 
   (	"LISENCE_CODE" VARCHAR2(12 BYTE), 
	"LISENCE_NAME" VARCHAR2(50 BYTE), 
	"LISENCE_PUB" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."LISENCES"."LISENCE_CODE" IS '자격증 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."LISENCES"."LISENCE_NAME" IS '자격증 명';
   COMMENT ON COLUMN "TEAM4_202011F"."LISENCES"."LISENCE_PUB" IS '발행처';
   COMMENT ON TABLE "TEAM4_202011F"."LISENCES"  IS '자격증';
