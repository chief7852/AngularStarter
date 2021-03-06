--------------------------------------------------------
--  Constraints for Table PROD
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."PROD" ADD CONSTRAINT "PK_PROD" PRIMARY KEY ("PROD_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."PROD" MODIFY ("FC_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."PROD" MODIFY ("PROD_PRICE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."PROD" MODIFY ("PROD_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."PROD" MODIFY ("LPROD_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."PROD" MODIFY ("PROD_CODE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."PROD" MODIFY ("PROD_DEL" NOT NULL ENABLE);
