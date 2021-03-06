--------------------------------------------------------
--  Constraints for Table COIN_USE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."COIN_USE" ADD CONSTRAINT "PK_COIN_USE" PRIMARY KEY ("COIN_USE_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."COIN_USE" MODIFY ("COIN_USE_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."COIN_USE" MODIFY ("COIN_USE_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."COIN_USE" MODIFY ("PROD_PAYCNT" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."COIN_USE" MODIFY ("PROD_CODE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."COIN_USE" MODIFY ("COIN_CODE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."COIN_USE" MODIFY ("COIN_USE_CODE" NOT NULL ENABLE);
