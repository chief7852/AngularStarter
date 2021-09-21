--------------------------------------------------------
--  Ref Constraints for Table EMAIL
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."EMAIL" ADD CONSTRAINT "FK_EMP_EMAIL" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
