--------------------------------------------------------
--  Ref Constraints for Table EMP_FILES
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."EMP_FILES" ADD CONSTRAINT "FK_EMP_TO_EMP_FILES" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
