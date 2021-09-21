--------------------------------------------------------
--  Ref Constraints for Table POS
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."POS" ADD CONSTRAINT "FK_EMP_POS" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
  ALTER TABLE "TEAM4_202011F"."POS" ADD CONSTRAINT "FK_FC_POS" FOREIGN KEY ("FC_ID")
	  REFERENCES "TEAM4_202011F"."FACILITIES" ("FC_ID") ENABLE;
