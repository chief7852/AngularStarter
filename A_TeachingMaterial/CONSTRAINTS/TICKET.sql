--------------------------------------------------------
--  Constraints for Table TICKET
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."TICKET" ADD CONSTRAINT "PK_TICKET" PRIMARY KEY ("TICKET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202011F"  ENABLE;
  ALTER TABLE "TEAM4_202011F"."TICKET" MODIFY ("TICKET_SALE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."TICKET" MODIFY ("TICKET_PRICE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."TICKET" MODIFY ("TICKET_AGE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."TICKET" MODIFY ("TICKET_TYPE" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."TICKET" MODIFY ("TICKET_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."TICKET" MODIFY ("TICKET_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM4_202011F"."TICKET" MODIFY ("TICKET_GRP" NOT NULL ENABLE);
