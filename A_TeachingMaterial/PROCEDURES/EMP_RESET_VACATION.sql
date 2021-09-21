--------------------------------------------------------
--  DDL for Procedure EMP_RESET_VACATION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEAM4_202011F"."EMP_RESET_VACATION" 
  IS
    BEGIN
      -- DBMS_RANDOM.VALUE(low IN NUMBER, high IN NUMBER)
      -- 파라미터 low : 최소범위 -- high : 최대 범위
      UPDATE EMP
      SET EMP_VAC = '15';
    END;

/
