--------------------------------------------------------
--  DDL for Procedure GUEST_DELETE_USERS_ID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "TEAM4_202011F"."GUEST_DELETE_USERS_ID" 
  IS
    BEGIN
      -- DBMS_RANDOM.VALUE(low IN NUMBER, high IN NUMBER)
      -- 파라미터 low : 최소범위 -- high : 최대 범위
      DELETE FROM USERS A
      WHERE EXISTS(
        SELECT *
        FROM DEL_USERS_ID B
        WHERE A.USER_ID = B.USER_ID
      );
    END;

/
