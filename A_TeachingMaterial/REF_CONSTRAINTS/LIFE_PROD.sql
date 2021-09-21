--------------------------------------------------------
--  Ref Constraints for Table LIFE_PROD
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."LIFE_PROD" ADD CONSTRAINT "FK_LIFE_PROD" FOREIGN KEY ("PROD_CODE")
	  REFERENCES "TEAM4_202011F"."PROD" ("PROD_CODE") ENABLE;
