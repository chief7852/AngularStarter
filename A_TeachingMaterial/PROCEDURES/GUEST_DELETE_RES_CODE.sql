--------------------------------------------------------
--  DDL for Procedure GUEST_DELETE_RES_CODE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEAM4_202011F"."GUEST_DELETE_RES_CODE" 
  IS
    BEGIN
      -- DBMS_RANDOM.VALUE(low IN NUMBER, high IN NUMBER)
      -- 파라미터 low : 최소범위 -- high : 최대 범위
      DELETE FROM RESERVE A
      WHERE EXISTS(
        SELECT *
        FROM DEL_RES_CODE B
        WHERE A.RES_CODE = B.RES_CODE
      );
    END;

/
