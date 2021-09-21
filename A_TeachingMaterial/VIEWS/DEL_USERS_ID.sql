--------------------------------------------------------
--  DDL for View DEL_USERS_ID
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."DEL_USERS_ID" ("USER_ID") AS 
  SELECT 
    A.user_id


  FROM USERS A
WHERE TO_NUMBER(to_char(A.USER_DATE,'yyyymmdd')) < TO_NUMBER(to_char(add_months(sysdate,-1),'yyyymmdd'))
AND  REGEXP_LIKE (A.user_id, 'GUEST(*)')
;
