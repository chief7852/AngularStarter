--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."QNA" ADD CONSTRAINT "PK_QNA" PRIMARY KEY ("QNA_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."QNA" MODIFY ("LQNA_CODE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."QNA" MODIFY ("QNA_CONT" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."QNA" MODIFY ("QNA_TITLE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."QNA" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."QNA" MODIFY ("QNA_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."QNA" MODIFY ("QNA_DATE" NOT NULL ENABLE);