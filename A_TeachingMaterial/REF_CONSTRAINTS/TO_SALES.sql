--------------------------------------------------------
--  Ref Constraints for Table TO_SALES
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."TO_SALES" ADD CONSTRAINT "FK_PAY_TO_SALES" FOREIGN KEY ("RES_CODE")
	  REFERENCES "TEAM4_202011F"."PAY" ("RES_CODE") ENABLE;
  ALTER TABLE "TEAM4_202011F"."TO_SALES" ADD CONSTRAINT "FK_POS_TO_SALES" FOREIGN KEY ("POS_NO", "EMP_ID", "FC_ID")
	  REFERENCES "TEAM4_202011F"."POS" ("POS_NO", "EMP_ID", "FC_ID") ENABLE;
