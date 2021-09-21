--------------------------------------------------------
--  DDL for View DEL_COIN_CODE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."DEL_COIN_CODE" ("USER_ID", "RES_CODE", "RES_INFO_CODE", "COIN_CODE") AS 
  SELECT 
    A.user_id,
    B.RES_CODE,
    C.RES_INFO_CODE,
    D.COIN_CODE
  FROM USERS A RIGHT OUTER JOIN RESERVE B ON (A.USER_ID = B.USER_ID)
       RIGHT OUTER JOIN RES_INFO C ON(  B.RES_CODE = C.RES_CODE)
       RIGHT OUTER JOIN COIN D ON(C.RES_INFO_CODE = D.RES_INFO_CODE)


WHERE TO_NUMBER(to_char(A.USER_DATE,'yyyymmdd')) < TO_NUMBER(to_char(add_months(sysdate,-1),'yyyymmdd'))
AND  REGEXP_LIKE (A.user_id, 'GUEST(*)')
;
