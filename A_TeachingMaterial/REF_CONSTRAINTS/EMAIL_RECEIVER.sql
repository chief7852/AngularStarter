--------------------------------------------------------
--  Ref Constraints for Table EMAIL_RECEIVER
--------------------------------------------------------

  ALTER TABLE "TEAM4_202011F"."EMAIL_RECEIVER" ADD CONSTRAINT "FK_EMAIL_EMAIL_RECEIVER" FOREIGN KEY ("EMAIL_NO")
	  REFERENCES "TEAM4_202011F"."EMAIL" ("EMAIL_NO") ENABLE;
