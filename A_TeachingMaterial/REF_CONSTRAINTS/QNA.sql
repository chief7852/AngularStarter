--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."QNA" ADD CONSTRAINT "FK_USERS_TO_QNA" FOREIGN KEY ("USER_ID")
	  REFERENCES "TEAM4_202011F"."USERS" ("USER_ID") ENABLE;
