--------------------------------------------------------
--  DDL for View DEL_RES_CODE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."DEL_RES_CODE" ("USER_ID", "RES_CODE") AS 
  SELECT 
    A.user_id,
    B.RES_CODE

  FROM USERS A RIGHT OUTER JOIN RESERVE B ON (A.USER_ID = B.USER_ID)
WHERE TO_NUMBER(to_char(A.USER_DATE,'yyyymmdd')) < TO_NUMBER(to_char(add_months(sysdate,-1),'yyyymmdd'))
AND  REGEXP_LIKE (A.user_id, 'GUEST(*)')
;
