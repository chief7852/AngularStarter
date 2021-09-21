--------------------------------------------------------
--  Ref Constraints for Table ATTRACTION
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."ATTRACTION" ADD CONSTRAINT "FK_FACILITIES_ATTRACTION" FOREIGN KEY ("FC_ID")
	  REFERENCES "TEAM4_202011F"."FACILITIES" ("FC_ID") ENABLE;
