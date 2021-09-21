--------------------------------------------------------
--  Ref Constraints for Table COM_CODE
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."COM_CODE" ADD CONSTRAINT "FK_COM_GRP_TO_COMMON_CODE" FOREIGN KEY ("COM_CODE_GRP")
	  REFERENCES "TEAM4_202011F"."COM_GRP" ("COM_CODE_GRP") ENABLE;
