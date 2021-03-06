--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."USERS" ADD CONSTRAINT "PK_USERS" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."USERS" MODIFY ("USER_PROTECT" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."USERS" MODIFY ("USER_HP" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."USERS" MODIFY ("USER_MAIL" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."USERS" MODIFY ("USER_REG" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."USERS" MODIFY ("USER_PASS" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
