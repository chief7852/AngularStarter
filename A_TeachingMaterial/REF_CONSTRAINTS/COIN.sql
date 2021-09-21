--------------------------------------------------------
--  Ref Constraints for Table COIN
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."COIN" ADD CONSTRAINT "FK_RES_INFO_TO_COIN" FOREIGN KEY ("RES_INFO_CODE")
	  REFERENCES "TEAM4_202011F"."RES_INFO" ("RES_INFO_CODE") ENABLE;
