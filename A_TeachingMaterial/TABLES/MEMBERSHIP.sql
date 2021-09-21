--------------------------------------------------------
--  DDL for Table MEMBERSHIP
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."MEMBERSHIP" 
   (	"RES_INFO_CODE" VARCHAR2(12 BYTE), 
	"MEMBERSHIP_END" VARCHAR2(8 BYTE), 
	"MEMBERSHIP_PARENT" VARCHAR2(12 BYTE), 
	"USER_ID" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."MEMBERSHIP"."RES_INFO_CODE" IS '예매 상세 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."MEMBERSHIP"."MEMBERSHIP_END" IS '멤버십 만료 일자';
   COMMENT ON COLUMN "TEAM4_202011F"."MEMBERSHIP"."MEMBERSHIP_PARENT" IS '부모예매번호';
   COMMENT ON COLUMN "TEAM4_202011F"."MEMBERSHIP"."USER_ID" IS '회원아이디';
   COMMENT ON TABLE "TEAM4_202011F"."MEMBERSHIP"  IS '멤버십회원';
