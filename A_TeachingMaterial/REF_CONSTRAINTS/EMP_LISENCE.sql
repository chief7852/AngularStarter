--------------------------------------------------------
--  Ref Constraints for Table EMP_LISENCE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."EMP_LISENCE" ADD CONSTRAINT "FK_EMP_TO_EMP_LISENCE" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
  ALTER TABLE "TEAM4_202011F"."EMP_LISENCE" ADD CONSTRAINT "FK_LISENCES_TO_EMP_LISENCE" FOREIGN KEY ("LISENCE_CODE")
	  REFERENCES "TEAM4_202011F"."LISENCES" ("LISENCE_CODE") ENABLE;
