--------------------------------------------------------
--  Constraints for Table FACILITIES
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."FACILITIES" ADD CONSTRAINT "PK_FACILITIES" PRIMARY KEY ("FC_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."FACILITIES" MODIFY ("LFC_CODE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."FACILITIES" MODIFY ("FC_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."FACILITIES" MODIFY ("FC_ID" NOT NULL ENABLE);