--------------------------------------------------------
--  Ref Constraints for Table ACCUSE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."ACCUSE" ADD CONSTRAINT "FK_EMP_TO_ACCUSE" FOREIGN KEY ("ACCUSER")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
