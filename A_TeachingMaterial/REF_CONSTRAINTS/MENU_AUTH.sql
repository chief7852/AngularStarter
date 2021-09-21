--------------------------------------------------------
--  Ref Constraints for Table MENU_AUTH
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."MENU_AUTH" ADD CONSTRAINT "FK_MENU_MENU_AUTH" FOREIGN KEY ("MENU_ID")
	  REFERENCES "TEAM4_202011F"."MENU" ("MENU_ID") ENABLE;
