--------------------------------------------------------
--  DDL for Table RES_INFO
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."RES_INFO" 
   (	"RES_INFO_CODE" VARCHAR2(12 BYTE), 
	"RES_CODE" VARCHAR2(12 BYTE), 
	"TICKET_ID" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."RES_INFO"."RES_INFO_CODE" IS '예매 상세 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."RES_INFO"."RES_CODE" IS '예매 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."RES_INFO"."TICKET_ID" IS '이용권아이디';
   COMMENT ON TABLE "TEAM4_202011F"."RES_INFO"  IS '예매 상세 내역';
