--------------------------------------------------------
--  Ref Constraints for Table COIN_CHARGE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."COIN_CHARGE" ADD CONSTRAINT "FK_COIN_TO_COIN_CHARGE" FOREIGN KEY ("COIN_CODE")
	  REFERENCES "TEAM4_202011F"."COIN" ("COIN_CODE") ENABLE;
