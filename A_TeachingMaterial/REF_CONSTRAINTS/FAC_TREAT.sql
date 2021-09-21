--------------------------------------------------------
--  Ref Constraints for Table FAC_TREAT
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."FAC_TREAT" ADD CONSTRAINT "FK_EMP_FAC_TREAT" FOREIGN KEY ("EMP_ID")
	  REFERENCES "TEAM4_202011F"."EMP" ("EMP_ID") ENABLE;
  ALTER TABLE "TEAM4_202011F"."FAC_TREAT" ADD CONSTRAINT "FK_FAC_MANAGE_FAC_TREAT" FOREIGN KEY ("FT_NO")
	  REFERENCES "TEAM4_202011F"."FAC_MANAGE" ("FM_NO") ENABLE;
