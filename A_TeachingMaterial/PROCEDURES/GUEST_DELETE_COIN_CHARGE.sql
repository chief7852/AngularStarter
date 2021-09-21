--------------------------------------------------------
--  DDL for Procedure GUEST_DELETE_COIN_CHARGE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEAM4_202011F"."GUEST_DELETE_COIN_CHARGE" 
  IS
    BEGIN
      -- DBMS_RANDOM.VALUE(low IN NUMBER, high IN NUMBER)
      -- 파라미터 low : 최소범위 -- high : 최대 범위
      DELETE FROM COIN_CHARGE A
      WHERE EXISTS(
        SELECT *
        FROM DEL_COIN_CHARGE B
        WHERE A.COIN_CHARGE_CODE = B.COIN_CHARGE_CODE
      );
    END;

/
