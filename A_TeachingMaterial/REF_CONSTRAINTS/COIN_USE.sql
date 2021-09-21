--------------------------------------------------------
--  Ref Constraints for Table COIN_USE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."COIN_USE" ADD CONSTRAINT "FK_COIN_TO_COIN_USE" FOREIGN KEY ("COIN_CODE")
	  REFERENCES "TEAM4_202011F"."COIN" ("COIN_CODE") ENABLE;
  ALTER TABLE "TEAM4_202011F"."COIN_USE" ADD CONSTRAINT "FK_PROD_TO_COIN_USE" FOREIGN KEY ("PROD_CODE")
	  REFERENCES "TEAM4_202011F"."PROD" ("PROD_CODE") ENABLE;
