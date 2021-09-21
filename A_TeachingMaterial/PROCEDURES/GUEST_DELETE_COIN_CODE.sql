--------------------------------------------------------
--  DDL for Procedure GUEST_DELETE_COIN_CODE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEAM4_202011F"."GUEST_DELETE_COIN_CODE" 
  IS
    BEGIN
      -- DBMS_RANDOM.VALUE(low IN NUMBER, high IN NUMBER)
      -- 파라미터 low : 최소범위 -- high : 최대 범위
      DELETE FROM COIN A
      WHERE EXISTS(
        SELECT *
        FROM DEL_COIN_CODE B
        WHERE A.COIN_CODE = B.COIN_CODE
      );
    END;

/
