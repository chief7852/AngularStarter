--------------------------------------------------------
--  Ref Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."MENU" ADD CONSTRAINT "FK_MENU_MENU" FOREIGN KEY ("UPPER_MENU_ID")
	  REFERENCES "TEAM4_202011F"."MENU" ("MENU_ID") ENABLE;
