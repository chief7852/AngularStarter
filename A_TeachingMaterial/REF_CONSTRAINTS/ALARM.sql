--------------------------------------------------------
--  Ref Constraints for Table ALARM
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."ALARM" ADD CONSTRAINT "FK_EMP_ALARM" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
