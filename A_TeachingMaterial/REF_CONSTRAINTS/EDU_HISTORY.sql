--------------------------------------------------------
--  Ref Constraints for Table EDU_HISTORY
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."EDU_HISTORY" ADD CONSTRAINT "FK_EMP_EDU" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
