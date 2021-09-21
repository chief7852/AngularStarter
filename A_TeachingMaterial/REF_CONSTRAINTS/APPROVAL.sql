--------------------------------------------------------
--  Ref Constraints for Table APPROVAL
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."APPROVAL" ADD CONSTRAINT "FK_REPORT_APPROVAL" FOREIGN KEY ("REPORT_NO")
	  REFERENCES "TEAM4_202011F"."REPORT" ("REPORT_NO") ENABLE;
