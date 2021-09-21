--------------------------------------------------------
--  DDL for Table PAY
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."PAY" 
   (	"RES_CODE" VARCHAR2(12 BYTE), 
	"PAY_DATE" DATE, 
	"PAY_AMOUNT" NUMBER(*,0), 
	"PAY_METHOD" VARCHAR2(50 BYTE), 
	"PAY_WAY" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."PAY"."RES_CODE" IS '예매 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."PAY"."PAY_DATE" IS '결제 일시';
   COMMENT ON COLUMN "TEAM4_202011F"."PAY"."PAY_AMOUNT" IS '결제 금액';
   COMMENT ON COLUMN "TEAM4_202011F"."PAY"."PAY_METHOD" IS '결제 수단';
   COMMENT ON COLUMN "TEAM4_202011F"."PAY"."PAY_WAY" IS '결제 방식';
   COMMENT ON TABLE "TEAM4_202011F"."PAY"  IS '결제 내역';
