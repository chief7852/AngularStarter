--------------------------------------------------------
--  DDL for Table COIN_CHARGE
--------------------------------------------------------

  CREATE TABLE "TEAM4_202011F"."COIN_CHARGE" 
   (	"COIN_CHARGE_CODE" VARCHAR2(12 BYTE), 
	"COIN_CODE" VARCHAR2(12 BYTE), 
	"COIN_CHARGE_AMOUNT" NUMBER(*,0), 
	"COIN_CHARGE_DATE" DATE, 
	"COIN_CHARGE_STATE" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F" ;

   COMMENT ON COLUMN "TEAM4_202011F"."COIN_CHARGE"."COIN_CHARGE_CODE" IS '포켓코인 충전 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."COIN_CHARGE"."COIN_CODE" IS '포켓코인 코드';
   COMMENT ON COLUMN "TEAM4_202011F"."COIN_CHARGE"."COIN_CHARGE_AMOUNT" IS '포켓코인 충전금액';
   COMMENT ON COLUMN "TEAM4_202011F"."COIN_CHARGE"."COIN_CHARGE_DATE" IS '포켓코인 충전 일시';
   COMMENT ON COLUMN "TEAM4_202011F"."COIN_CHARGE"."COIN_CHARGE_STATE" IS '포켓코인 충전 상태';
   COMMENT ON TABLE "TEAM4_202011F"."COIN_CHARGE"  IS '포켓코인충전';
