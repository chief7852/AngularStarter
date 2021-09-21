--------------------------------------------------------
--  Ref Constraints for Table WORK
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."WORK" ADD CONSTRAINT "FK_EMP_WORK" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
