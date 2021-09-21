--------------------------------------------------------
--  DDL for Trigger COIN_PROD_BACK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM4_202011F"."COIN_PROD_BACK" 
    AFTER UPDATE ON COIN_USE
    REFERENCING new AS PROD_CODE
    FOR EACH ROW
BEGIN
    UPDATE PROD
    SET
        prod_del = 'N'
    WHERE
        prod_code = :PROD_CODE.PROD_CODE
;
END;
/
ALTER TRIGGER "TEAM4_202011F"."COIN_PROD_BACK" ENABLE;
