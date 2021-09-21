--------------------------------------------------------
--  Constraints for Table FAC_MANAGE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."FAC_MANAGE" ADD CONSTRAINT "PK_FAC_MANAGE" PRIMARY KEY ("FM_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."FAC_MANAGE" MODIFY ("FM_DEL" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."FAC_MANAGE" MODIFY ("FM_BREAK" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."FAC_MANAGE" MODIFY ("FM_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."FAC_MANAGE" MODIFY ("FM_CONT" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."FAC_MANAGE" MODIFY ("FM_TITLE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."FAC_MANAGE" MODIFY ("EMP_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."FAC_MANAGE" MODIFY ("FM_NO" NOT NULL ENABLE);