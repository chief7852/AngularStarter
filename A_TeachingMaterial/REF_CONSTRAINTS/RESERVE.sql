--------------------------------------------------------
--  Ref Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."RESERVE" ADD CONSTRAINT "FK_SALE_TO_RESERVE" FOREIGN KEY ("SALE_ID")
	  REFERENCES "TEAM4_202011F"."SALE" ("SALE_ID") ENABLE;
  ALTER TABLE "TEAM4_202011F"."RESERVE" ADD CONSTRAINT "FK_USERS_TO_RESERVE" FOREIGN KEY ("USER_ID")
	  REFERENCES "TEAM4_202011F"."USERS" ("USER_ID") ENABLE;
