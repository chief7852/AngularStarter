--------------------------------------------------------
--  DDL for View TOTAL_RESERVE_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."TOTAL_RESERVE_VIEW" ("RES_CODE", "USER_ID", "RES_DATE", "RES_PREDATE", "RES_CANCEL", "SALE_ID", "RES_INFO_CODE", "TICKET_ID", "COIN_CODE") AS 
  SELECT
    A.res_code,
    A.user_id,
    res_date,
    res_predate,
    res_cancel,
    sale_id,
    B.res_info_code,
    ticket_id,
    COIN_CODE
FROM RESERVE A
LEFT OUTER JOIN RES_INFO B ON (A.RES_CODE = B.RES_CODE)
LEFT OUTER JOIN (SELECT USER_ID, USER_NAME, USER_HP FROM USERS) C ON (A.USER_ID = C.USER_ID)
LEFT OUTER JOIN COIN D ON (B.RES_INFO_CODE = D.RES_INFO_CODE)
;
