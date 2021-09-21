--------------------------------------------------------
--  DDL for Trigger COIN_PROD_USE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TEAM4_202011F"."COIN_PROD_USE" 
    AFTER INSERT ON COIN_USE
    REFERENCING new AS PROD_CODE
    FOR EACH ROW
BEGIN
    UPDATE PROD
    SET
        prod_del = 'Y'
    WHERE
        prod_code = :PROD_CODE.PROD_CODE
;
END;
/
ALTER TRIGGER "TEAM4_202011F"."COIN_PROD_USE" ENABLE;
