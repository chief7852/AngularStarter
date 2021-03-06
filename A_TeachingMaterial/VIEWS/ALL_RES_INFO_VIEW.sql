--------------------------------------------------------
--  DDL for View ALL_RES_INFO_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TEAM4_202011F"."ALL_RES_INFO_VIEW" ("RES_CODE", "RES_INFO_CODE", "USER_ID", "USER_NAME", "RES_DATE", "RES_PREDATE", "RES_CANCEL", "TICKET_NAME", "TICKET_GRP", "TICKET_TYPE_NAME", "TICKET_AGE_NAME", "TICKET_PRICE", "PAY_WAY_NAME", "TICKET_SALE", "PAY_AMOUNT", "SALE_NAME", "SALE_PERCENT", "TICKET_ID", "MEMBERSHIP_END") AS 
  SELECT
    A.RES_CODE,
    B.RES_INFO_CODE,
    A.USER_ID,
    D.USER_NAME,
    RES_DATE,
    RES_PREDATE,
    RES_CANCEL,
    TICKET_NAME,
    TICKET_GRP,
    GET_CODE_NAME_FUNC(TICKET_TYPE, 'TT') TICKET_TYPE_NAME,
    GET_CODE_NAME_FUNC(TICKET_AGE, 'TA')  TICKET_AGE_NAME
    , TICKET_PRICE
    , GET_CODE_NAME_FUNC(F.PAY_WAY, 'PW') PAY_WAY_NAME
    , TICKET_SALE
    , F.PAY_AMOUNT
    , E.SALE_NAME
    , E.SALE_PERCENT
    , C.TICKET_ID
    , G.MEMBERSHIP_END
FROM
     RESERVE A FULL OUTER JOIN RES_INFO B ON (A.RES_CODE = B.RES_CODE)
     LEFT OUTER JOIN TICKET C ON (B.TICKET_ID = C.TICKET_ID)
     LEFT OUTER JOIN USERS D ON (A.USER_ID = D.USER_ID)
     LEFT OUTER JOIN SALE E ON (A.SALE_ID = E.SALE_ID)
     LEFT OUTER JOIN PAY F ON (A.RES_CODE = F.RES_CODE)
     LEFT OUTER JOIN MEMBERSHIP G ON (B.RES_INFO_CODE = G.RES_INFO_CODE)
;
