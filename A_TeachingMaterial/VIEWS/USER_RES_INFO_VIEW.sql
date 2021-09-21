--------------------------------------------------------
--  DDL for View USER_RES_INFO_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."USER_RES_INFO_VIEW" ("RES_CODE", "RES_INFO_CODE", "USER_ID", "RES_DATE", "RES_PREDATE", "RES_CANCEL", "TICKET_NAME", "TICKET_TYPE", "TICKET_AGE") AS 
  SELECT
    a.res_code,
    RES_INFO_CODE,
    user_id,
    res_date,
    res_predate,
    res_cancel,
    ticket_name,
    (SELECT GET_CODE_NAME_FUNC(TICKET_TYPE, 'TT') FROM DUAL) TICKET_TYPE
    ,
    (SELECT GET_CODE_NAME_FUNC(TICKET_AGE, 'TA') FROM DUAL) TICKET_AGE
FROM
     reserve A full OUTER JOIN RES_INFO B ON (A.RES_CODE = B.RES_CODE)
     left outer join ticket c on (b.ticket_id = c.ticket_id)
     LEFT OUTER JOIN COM_CODE D ON (C.TICKET_TYPE = D.COM_CODE)
;
