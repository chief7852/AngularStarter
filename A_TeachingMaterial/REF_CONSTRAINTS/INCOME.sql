--------------------------------------------------------
--  Ref Constraints for Table INCOME
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."INCOME" ADD CONSTRAINT "FK_LPROD_INCOME" FOREIGN KEY ("LPROD_CODE", "PROD_NAME")
	  REFERENCES "TEAM4_202011F"."LPROD" ("LPROD_CODE", "PROD_NAME") ENABLE;
