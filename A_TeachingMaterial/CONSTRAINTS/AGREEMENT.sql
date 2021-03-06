--------------------------------------------------------
--  Constraints for Table AGREEMENT
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."AGREEMENT" ADD CONSTRAINT "PK_AGREEMENT" PRIMARY KEY ("CLAUSE_NO", "USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."AGREEMENT" MODIFY ("AGREEMENT_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."AGREEMENT" MODIFY ("AGREEMENT_CHECK" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."AGREEMENT" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."AGREEMENT" MODIFY ("CLAUSE_NO" NOT NULL ENABLE);
