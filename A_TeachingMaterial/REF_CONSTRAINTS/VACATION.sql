--------------------------------------------------------
--  Ref Constraints for Table VACATION
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."VACATION" ADD CONSTRAINT "FK_EMP_TO_VACATION" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
