--------------------------------------------------------
--  Ref Constraints for Table READY_MONEY
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."READY_MONEY" ADD CONSTRAINT "FK_POS_RM" FOREIGN KEY ("POS_NO", "EMP_ID", "FC_ID")
	  REFERENCES "TEAM4_202011F"."POS" ("POS_NO", "EMP_ID", "FC_ID") ENABLE;
