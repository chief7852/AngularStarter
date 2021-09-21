--------------------------------------------------------
--  Ref Constraints for Table PAY
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."PAY" ADD CONSTRAINT "FK_RESERVE_TO_PAY" FOREIGN KEY ("RES_CODE")
	  REFERENCES "TEAM4_202011F"."RESERVE" ("RES_CODE") ENABLE;
