--------------------------------------------------------
--  Ref Constraints for Table PROD
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."PROD" ADD CONSTRAINT "FK_FACILITIES_TO_PROD" FOREIGN KEY ("FC_ID")
	  REFERENCES "TEAM4_202011F"."FACILITIES" ("FC_ID") ENABLE;
  ALTER TABLE "TEAM4_202011F"."PROD" ADD CONSTRAINT "FK_LPROD_PROD" FOREIGN KEY ("LPROD_CODE", "PROD_NAME")
	  REFERENCES "TEAM4_202011F"."LPROD" ("LPROD_CODE", "PROD_NAME") ENABLE;
