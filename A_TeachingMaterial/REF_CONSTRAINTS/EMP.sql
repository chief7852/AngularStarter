--------------------------------------------------------
--  Ref Constraints for Table EMP
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."EMP" ADD CONSTRAINT "FK_FACILITIES_TO_EMP" FOREIGN KEY ("FC_ID")
	  REFERENCES "TEAM4_202011F"."FACILITIES" ("FC_ID") ENABLE;
