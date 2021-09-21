--------------------------------------------------------
--  Ref Constraints for Table SALARY
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."SALARY" ADD CONSTRAINT "FK_EMP_SALARY" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
