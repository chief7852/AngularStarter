--------------------------------------------------------
--  Ref Constraints for Table CAREER
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."CAREER" ADD CONSTRAINT "FK_EMP_CAREER" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
