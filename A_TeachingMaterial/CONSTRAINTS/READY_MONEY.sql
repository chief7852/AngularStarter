--------------------------------------------------------
--  Constraints for Table READY_MONEY
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."READY_MONEY" ADD CONSTRAINT "PK_RM" PRIMARY KEY ("RM_NO", "RM_ORD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."READY_MONEY" MODIFY ("POS_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."READY_MONEY" MODIFY ("EMP_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."READY_MONEY" MODIFY ("FC_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."READY_MONEY" MODIFY ("RM_AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."READY_MONEY" MODIFY ("LRM_CODE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."READY_MONEY" MODIFY ("RM_ORD" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."READY_MONEY" MODIFY ("RM_NO" NOT NULL ENABLE);
