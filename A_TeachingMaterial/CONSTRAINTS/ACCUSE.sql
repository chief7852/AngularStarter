--------------------------------------------------------
--  Constraints for Table ACCUSE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."ACCUSE" ADD CONSTRAINT "PK_ACCUSE" PRIMARY KEY ("ACCUSE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."ACCUSE" MODIFY ("ACCUSE_CHECK" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."ACCUSE" MODIFY ("ACCUSE_CONT" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."ACCUSE" MODIFY ("ACCUSE_TIME" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."ACCUSE" MODIFY ("ACCUSEE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."ACCUSE" MODIFY ("ACCUSE_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."ACCUSE" MODIFY ("ACCUSER" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."ACCUSE" MODIFY ("ACCUSE_NO" NOT NULL ENABLE);
