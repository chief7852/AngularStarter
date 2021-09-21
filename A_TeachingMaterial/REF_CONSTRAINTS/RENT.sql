--------------------------------------------------------
--  Ref Constraints for Table RENT
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."RENT" ADD CONSTRAINT "FK_COIN_USE_TO_RENT" FOREIGN KEY ("COIN_USE_CODE")
	  REFERENCES "TEAM4_202011F"."COIN_USE" ("COIN_USE_CODE") ENABLE;
