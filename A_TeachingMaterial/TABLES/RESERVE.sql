--------------------------------------------------------
--  DDL for Table RESERVE
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."RESERVE" 
   (	"RES_CODE" VARCHAR2(12 BYTE), 
	"USER_ID" VARCHAR2(12 BYTE), 
	"RES_DATE" DATE DEFAULT SYSDATE, 
	"RES_PREDATE" DATE, 
	"RES_CANCEL" DATE, 
	"SALE_ID" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."RESERVE"."RES_CODE" IS '예매 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."RESERVE"."USER_ID" IS '회원아이디';
   COMMENT ON COLUMN "TEAM4_202011F"."RESERVE"."RES_DATE" IS '예매 일자';
   COMMENT ON COLUMN "TEAM4_202011F"."RESERVE"."RES_PREDATE" IS '이용예정일시';
   COMMENT ON COLUMN "TEAM4_202011F"."RESERVE"."RES_CANCEL" IS '환불일자';
   COMMENT ON COLUMN "TEAM4_202011F"."RESERVE"."SALE_ID" IS '할인 아이디';
   COMMENT ON TABLE "TEAM4_202011F"."RESERVE"  IS '예매 내역';
